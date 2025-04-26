import 'package:buitify_coffee/features/media_player/data/datasources/player_remote_data_source.dart';
import 'package:buitify_coffee/features/media_player/domain/repositories/player_repository.dart';
import 'package:dio/dio.dart';

class PlayerRepositoryImpl implements PlayerRepository {
  final PlayerRemoteDataSource _dataSource;

  PlayerRepositoryImpl(this._dataSource);

  @override
  Future<Response> getPlaybackState() async {
    return await _dataSource.getPlaybackState();
  }

  @override
  Future<Response> play() async {
    return await _dataSource.play();
  }

  @override
  Future<Response> pause() async {
    return await _dataSource.pause();
  }

  @override
  Future<Response> next() async {
    return await _dataSource.next();
  }

  @override
  Future<Response> previous() async {
    return await _dataSource.previous();
  }

  @override
  Future<Response> seek(int positionMs) async {
    return await _dataSource.seek(positionMs);
  }

  @override
  Future<Response> setRepeatMode(String repeatMode) async {
    return await _dataSource.setRepeatMode(repeatMode);
  }

  @override
  Future<Response> toggleShuffle(bool state) async {
    return await _dataSource.toggleShuffle(state);
  }

  @override
  Future<Response> playTrack(String uri) async {
    return await _dataSource.playTrack(uri);
  }

  @override
  Future<Response> setVolume(int volumePercent) async {
    return await _dataSource.setVolume(volumePercent);
  }

  @override
  Future<Response> getTrack(String id) async {
    return await _dataSource.getTrack(id);
  }
}
