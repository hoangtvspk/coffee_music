import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';
import 'package:buitify_coffee/core/config/env_config.dart';
import 'package:buitify_coffee/core/storage/secure_storage.dart';
import 'package:buitify_coffee/features/auth/data/datasources/auth_remote_data_source.dart';

// Class to handle retry requests
class _RetryRequest {
  final RequestOptions requestOptions;
  final Completer<Response> completer;

  _RetryRequest(this.requestOptions, this.completer);
}

class DioClient {
  static DioClient? _instance;
  final Dio _dio;
  final SecureStorage _secureStorage = SecureStorage();
  String? _accessToken;
  String? _refreshToken;
  bool _isInitialized = false;
  bool _isRefreshing = false;
  List<_RetryRequest> _pendingRequests = [];

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
          baseUrl: EnvConfig.baseUrl,
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
          sendTimeout: const Duration(seconds: 30),
          validateStatus: (status) {
            return status != null &&
                (status >= 200 && status < 300 || status == 304);
          },
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
      _isInitialized = true;
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

  Future<void> _processPendingRequests() async {
    final requests = [..._pendingRequests];
    _pendingRequests.clear();

    for (final request in requests) {
      try {
        final response = await _dio.request(
          request.requestOptions.path,
          data: request.requestOptions.data,
          queryParameters: request.requestOptions.queryParameters,
          options: Options(
            method: request.requestOptions.method,
            headers: {
              'Authorization': 'Bearer $_accessToken',
              ...request.requestOptions.headers,
            },
          ),
        );
        request.completer.complete(response);
      } catch (e) {
        request.completer.completeError(e);
      }
    }
  }

  void setupInterceptors() {
    _dio.interceptors.clear();
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
            final options = error.requestOptions;

            if (_isRefreshing) {
              // If already refreshing, add to pending queue
              try {
                final completer = Completer<Response>();
                _pendingRequests.add(_RetryRequest(options, completer));
                return handler.resolve(await completer.future);
              } catch (e) {
                return handler.reject(error);
              }
            }

            _isRefreshing = true;

            try {
              if (_refreshToken == null) {
                throw Exception('Login session expired');
              }

              // Try to refresh the token using AuthRemoteDataSource
              final authDataSource = AuthRemoteDataSourceImpl();
              await authDataSource.refreshToken();

              // Get the new access token
              _accessToken = await _secureStorage.readAccessToken();
              if (_accessToken == null) {
                throw Exception('Login session expired');
              }

              // Process all pending requests with new token
              await _processPendingRequests();

              // Retry the original request with new token
              final response = await _dio.request(
                options.path,
                data: options.data,
                queryParameters: options.queryParameters,
                options: Options(
                  method: options.method,
                  headers: {
                    'Authorization': 'Bearer $_accessToken',
                    ...options.headers,
                  },
                ),
              );

              _isRefreshing = false;
              return handler.resolve(response);
            } catch (e) {
              _isRefreshing = false;
              // Refresh token failed - clear all tokens and reject
              await resetTokens();
              // Reject all pending requests
              for (final request in _pendingRequests) {
                request.completer.completeError(
                  DioException(
                    requestOptions: request.requestOptions,
                    error: 'Login session expired',
                  ),
                );
              }
              _pendingRequests.clear();

              return handler.reject(
                DioException(
                  requestOptions: error.requestOptions,
                  error: 'Login session expired',
                ),
              );
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
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: true,
      ));
    }
  }

  static final options = CacheOptions(
    // A default store is required for interceptor.
    store: MemCacheStore(),

    // All subsequent fields are optional to get a standard behaviour.

    // Default.
    policy: CachePolicy.request,
    // Returns a cached response on error for given status codes.
    // Defaults to `[]`.
    hitCacheOnErrorCodes: [500],
    // Allows to return a cached response on network errors (e.g. offline usage).
    // Defaults to `false`.
    hitCacheOnNetworkFailure: true,
    // Overrides any HTTP directive to delete entry past this duration.
    // Useful only when origin server has no cache config or custom behaviour is desired.
    // Defaults to `null`.
    maxStale: const Duration(days: 7),
    // Default. Allows 3 cache sets and ease cleanup.
    priority: CachePriority.normal,
    // Default. Body and headers encryption with your own algorithm.
    cipher: null,
    // Default. Key builder to retrieve requests.
    keyBuilder: CacheOptions.defaultCacheKeyBuilder,
    // Default. Allows to cache POST requests.
    // Assigning a [keyBuilder] is strongly recommended when `true`.
    allowPostMethod: false,
  );

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
