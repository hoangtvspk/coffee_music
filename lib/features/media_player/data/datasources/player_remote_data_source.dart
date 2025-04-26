import 'package:buitify_coffee/core/network/dio_client.dart';
import 'package:buitify_coffee/core/constants/api_endpoints.dart';
import 'package:dio/dio.dart';

abstract class PlayerRemoteDataSource {
  Future<Response> getPlaybackState();
  Future<Response> play();
  Future<Response> pause();
  Future<Response> next();
  Future<Response> previous();
  Future<Response> seek(int positionMs);
  Future<Response> setRepeatMode(String repeatMode);
  Future<Response> toggleShuffle(bool state);
  Future<Response> playTrack(String uri);
  Future<Response> setVolume(int volumePercent);
  Future<Response> getTrack(String id);
}

class PlayerRemoteDataSourceImpl implements PlayerRemoteDataSource {
  final _baseUrl = 'me/player';
  final DioClient _dioClient = DioClient();

  @override
  Future<Response> getPlaybackState() async {
    return await _dioClient.get(_baseUrl);
  }

  @override
  Future<Response> play() async {
    return await _dioClient.put('$_baseUrl/play');
  }

  @override
  Future<Response> pause() async {
    return await _dioClient.put('$_baseUrl/pause');
  }

  @override
  Future<Response> next() async {
    return await _dioClient.post('$_baseUrl/next');
  }

  @override
  Future<Response> previous() async {
    return await _dioClient.post('$_baseUrl/previous');
  }

  @override
  Future<Response> seek(int positionMs) async {
    return await _dioClient.put(
      '$_baseUrl/seek',
      queryParameters: {'position_ms': positionMs},
    );
  }

  @override
  Future<Response> setRepeatMode(String repeatMode) async {
    return await _dioClient.put(
      '$_baseUrl/repeat',
      queryParameters: {'state': repeatMode},
    );
  }

  @override
  Future<Response> toggleShuffle(bool state) async {
    return await _dioClient.put(
      '$_baseUrl/shuffle',
      queryParameters: {'state': state},
    );
  }

  @override
  Future<Response> playTrack(String uri) async {
    try {
      print('=== PlayerRemoteDataSource: playTrack ===');
      print('Attempting to play track directly');
      print('URI: $uri');

      try {
        // Try to play track directly first
        final response = await _dioClient.put(
          '$_baseUrl/play',
          data: {
            'uris': [uri],
          },
        );
        print('Play track response received');
        print('Status code: ${response.statusCode}');
        print('Response data: ${response.data}');
        print('=== End playTrack ===');
        return response;
      } catch (playError) {
        if (playError is DioException &&
            playError.response?.statusCode == 404 &&
            playError.response?.data['error']?['reason'] ==
                'NO_ACTIVE_DEVICE') {
          // Only handle device selection if we get a NO_ACTIVE_DEVICE error
          print('No active device found, checking available devices...');
          final devicesResponse = await _dioClient.get('$_baseUrl/devices');
          final devices = devicesResponse.data['devices'] as List;

          if (devices.isEmpty) {
            throw Exception(
                'No Spotify devices found. Please open Spotify on your computer or phone.');
          }

          // Use the first available device
          final deviceId = devices.first['id'];
          print('Transferring playback to device: $deviceId');

          // Transfer playback to this device
          await _dioClient.put('$_baseUrl', data: {
            'device_ids': [deviceId],
            'play': true,
          });

          // Give Spotify a moment to transfer playback
          await Future.delayed(const Duration(seconds: 1));

          // Try playing again with the selected device
          final retryResponse = await _dioClient.put(
            '$_baseUrl/play',
            data: {
              'uris': [uri],
              'device_id': deviceId,
            },
          );
          return retryResponse;
        } else {
          // If it's not a device error, rethrow the original error
          rethrow;
        }
      }
    } catch (e) {
      print('=== PlayerRemoteDataSource: Error in playTrack ===');
      print('Error occurred while playing track');
      print('Error type: ${e.runtimeType}');
      print('Error message: $e');
      if (e is DioException) {
        print('DioException details:');
        print('  - Error type: ${e.type}');
        print('  - Error message: ${e.message}');
        print('  - Status code: ${e.response?.statusCode}');
        print('  - Response data: ${e.response?.data}');
        print(
            '  - Request: ${e.requestOptions.method} ${e.requestOptions.path}');
        print('  - Headers: ${e.requestOptions.headers}');
        if (e.error != null) {
          print('  - Underlying error: ${e.error}');
        }
      }
      print('=== End Error ===');
      rethrow;
    }
  }

  @override
  Future<Response> setVolume(int volumePercent) async {
    return await _dioClient.put(
      '$_baseUrl/volume',
      queryParameters: {'volume_percent': volumePercent},
    );
  }

  @override
  Future<Response> getTrack(String id) async {
    return await _dioClient.get(ApiEndpoints.track(id));
  }
}
