import 'package:dio/dio.dart';

abstract class PlayerRepository {
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
