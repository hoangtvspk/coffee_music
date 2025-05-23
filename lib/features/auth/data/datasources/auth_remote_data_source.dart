import 'package:buitify_coffee/core/constants/api_endpoints.dart';
import 'package:buitify_coffee/core/storage/secure_storage.dart';
import 'package:buitify_coffee/features/auth/domain/entities/user.dart';
import 'package:dio/dio.dart';
import 'package:flutter_appauth/flutter_appauth.dart';

import '../../../../core/config/env_config.dart';
import '../../../../core/models/base_response.dart';
import '../../../../core/network/dio_client.dart';
import '../models/login_model.dart';

abstract class AuthRemoteDataSource {
  Future<BaseResponse<LoginModel>> loginWithSpotify();
  Future<BaseResponse<LoginModel>> getUserProfile();
  Future<void> logout();
  Future<void> refreshToken();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl();

  final dioClient = DioClient();
  static const _appAuth = FlutterAppAuth();

  final _clientId = EnvConfig.spotifyClientId;
  final _redirectUri = EnvConfig.spotifyRedirectUri;
  final _discoveryUrl =
      'https://accounts.spotify.com/.well-known/openid-configuration';
  final _scopes = [
    'user-read-private',
    'user-read-email',
    'user-library-read',
    'user-modify-playback-state',
    'user-read-playback-state',
    'streaming'
  ];

  String? _accessToken;
  String? _refreshToken;

  @override
  Future<BaseResponse<LoginModel>> loginWithSpotify() async {
    try {
      final result = await _appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          _clientId,
          _redirectUri,
          discoveryUrl: _discoveryUrl,
          scopes: _scopes,
          promptValues: ['consent'],
          additionalParameters: {
            'show_dialog': 'true',
          },
        ),
      );

      _accessToken = result.accessToken;
      _refreshToken = result.refreshToken;
      dioClient.setTokens(
          accessToken: _accessToken, refreshToken: _refreshToken);
      return getUserProfile();
    } catch (e) {
      throw Exception('Failed to sign in with Spotify: $e');
    }
  }

  @override
  Future<BaseResponse<LoginModel>> getUserProfile() async {
    try {
      final response = await dioClient.get(ApiEndpoints.me);
      return BaseResponse(
          data: LoginModel(
              id: response.data['id'],
              name: response.data['display_name'],
              email: response.data['email'],
              images: (response.data['images'] as List)
                  .map((image) => SpotifyImage.fromJson(image))
                  .toList(),
              country: response.data['country'],
              product: response.data['product']));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      await SecureStorage().deleteAccessToken();
      await SecureStorage().deleteRefreshToken();
    } catch (e) {
      throw Exception("Logout failed");
    }
  }

  @override
  Future<void> refreshToken() async {
    try {
      _refreshToken = await SecureStorage().readRefreshToken();
      dioClient.resetTokens();

      if (_refreshToken == null) {
        throw Exception('No refresh token available');
      }

      final response = await dioClient.post(
        'https://accounts.spotify.com/api/token',
        queryParameters: {
          'grant_type': 'refresh_token',
          'refresh_token': _refreshToken,
          'client_id': _clientId,
          'scope': _scopes.join(' '),
        },
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
      );

      await dioClient.setTokens(
        accessToken: response.data['access_token'],
        refreshToken: response.data['refresh_token'],
      );
    } catch (e) {
      throw Exception('Failed to refresh token: $e');
    }
  }
}
