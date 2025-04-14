import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:buitify_coffee/core/config/env_config.dart';
import 'package:buitify_coffee/core/storage/secure_storage.dart';
import 'package:buitify_coffee/features/auth/data/datasources/auth_remote_data_source.dart';

class DioClient {
  static DioClient? _instance;
  final Dio _dio;
  final SecureStorage _secureStorage = SecureStorage();
  String? _accessToken;
  String? _refreshToken;
  bool _isInitialized = false;

  // Private constructor
  DioClient._internal(this._dio) {
    _initializeTokens();
    setupInterceptors();
  }

  // Factory constructor to return the same instance
  factory DioClient() {
    _instance ??= DioClient._internal(
      Dio(
        BaseOptions(
          baseUrl: EnvConfig.baseUrl, // Replace with your API base URL
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
          sendTimeout: const Duration(seconds: 30),
        ),
      ),
    );
    return _instance!;
  }

  // Initialize tokens from secure storage
  Future<void> _initializeTokens() async {
    try {
      _accessToken = await _secureStorage.readAccessToken();
      _refreshToken = await _secureStorage.readRefreshToken();
      _isInitialized = true;
    } catch (e) {
      debugPrint('Error initializing tokens: $e');
      _isInitialized =
          true; // Still mark as initialized to prevent infinite waiting
    }
  }

  // Methods to update tokens
  Future<void> setTokens({String? accessToken, String? refreshToken}) async {
    _accessToken = accessToken;
    _refreshToken = refreshToken;

    if (accessToken != null) {
      await _secureStorage.writeAccessToken(accessToken);
    }
    if (refreshToken != null) {
      await _secureStorage.writeRefreshToken(refreshToken);
    }
  }

  Future<void> resetTokens() async {
    _accessToken = null;
    _refreshToken = null;
    await _secureStorage.deleteAccessToken();
    await _secureStorage.deleteRefreshToken();
  }

  void setupInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // Wait for initialization if not done yet
          if (!_isInitialized) {
            await Future.delayed(const Duration(milliseconds: 100));
            if (!_isInitialized) {
              return handler.reject(
                DioException(
                  requestOptions: options,
                  error: 'DioClient not initialized',
                ),
              );
            }
          }

          if (_accessToken != null) {
            options.headers['Authorization'] = 'Bearer $_accessToken';
          }
          options.headers['Content-Type'] = 'application/json';
          options.headers['Accept'] = 'application/json';
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException error, handler) async {
          if (error.response?.statusCode == 401) {
            // Token expired or invalid
            if (_refreshToken != null) {
              try {
                // Store the failed request
                final RequestOptions requestOptions = error.requestOptions;

                // Try to refresh the token using AuthRemoteDataSource
                final authDataSource = AuthRemoteDataSourceImpl();
                await authDataSource.refreshToken();

                // Get the new access token
                final newAccessToken = await _secureStorage.readAccessToken();
                if (newAccessToken == null) {
                  throw Exception('Failed to get new access token');
                }

                // Retry the original request with new token
                final opts = Options(
                  method: requestOptions.method,
                  headers: {
                    'Authorization': 'Bearer $newAccessToken',
                    ...requestOptions.headers,
                  },
                );

                final retryResponse = await _dio.request(
                  requestOptions.path,
                  options: opts,
                  data: requestOptions.data,
                  queryParameters: requestOptions.queryParameters,
                );

                return handler.resolve(retryResponse);
              } catch (e) {
                // Refresh token failed - user needs to login again
                await resetTokens();
                // You might want to notify your auth state management here
                // e.g., BlocProvider.of<AuthBloc>(context).add(LogoutEvent());
              }
            }
          }

          switch (error.response?.statusCode) {
            case 403:
              // Handle forbidden
              break;
            case 404:
              // Handle not found
              break;
            case 500:
              // Handle server error
              break;
          }
          return handler.next(error);
        },
      ),
    );

    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
        requestBody: false,
        responseBody: false,
        requestHeader: true,
        responseHeader: false,
      ));
    }
  }

  // Expose Dio methods
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    // Ensure initialization is complete
    if (!_isInitialized) {
      await _initializeTokens();
    }
    return _dio.get(
      path,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response> put(String path, {dynamic data}) async {
    return await _dio.put(path, data: data);
  }

  Future<Response> delete(String path, {dynamic data}) async {
    return await _dio.delete(path, data: data);
  }

  Future<Response> patch(String path, {dynamic data}) async {
    return await _dio.patch(path, data: data);
  }
}
