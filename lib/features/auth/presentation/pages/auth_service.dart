import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc_with_clean_architectore/core/config/env_config.dart';

class AuthService {
  final _appAuth = FlutterAppAuth();
  final _dio = Dio();

  final _clientId = EnvConfig.spotifyClientId;
  final _redirectUri = EnvConfig.spotifyRedirectUri;
  final _discoveryUrl =
      'https://accounts.spotify.com/.well-known/openid-configuration';
  final _scopes = ['user-read-private', 'user-read-email'];

  String? _accessToken;
  DateTime? _accessTokenExpirationDateTime;

  /// Sign in and store token + expiry
  Future<void> signInWithSpotify() async {
    try {
      final result = await _appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          _clientId,
          _redirectUri,
          discoveryUrl: _discoveryUrl,
          scopes: _scopes,
          promptValues: ['consent'], // Force login to avoid reuse
          additionalParameters: {
            'show_dialog': 'true', // Ensure new login screen
          },
        ),
      );

      if (result != null) {
        _accessToken = result.accessToken;
        _accessTokenExpirationDateTime = result.accessTokenExpirationDateTime;
        print('✅ Access token: $_accessToken');
        print('🕒 Expires at: $_accessTokenExpirationDateTime');
      }
    } catch (e) {
      print('❌ Login failed: $e');
    }
  }

  /// Check token and re-auth if needed
  Future<void> _ensureValidToken() async {
    final now = DateTime.now();

    if (_accessToken == null ||
        _accessTokenExpirationDateTime == null ||
        now.isAfter(_accessTokenExpirationDateTime!)) {
      print('🔄 Token expired or missing, re-authenticating...');
      await signInWithSpotify();
    } else {
      print('✅ Using cached token');
    }
  }

  /// Call Spotify API with valid token
  Future<Map<String, dynamic>?> getUserProfile() async {
    await _ensureValidToken();

    if (_accessToken == null) {
      print('❌ No access token available');
      return null;
    }

    try {
      final response = await _dio.get(
        'https://api.spotify.com/v1/me',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_accessToken',
          },
        ),
      );
      return response.data;
    } catch (e) {
      print('❌ Failed to fetch profile: $e');
      return null;
    }
  }
}
