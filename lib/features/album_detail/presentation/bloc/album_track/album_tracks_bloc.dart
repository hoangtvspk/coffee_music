import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/album/album.dart';
import '../../../domain/entities/track/track_item.dart';
import '../../../domain/usecases/get_album_info.dart';
import '../../../domain/usecases/get_album_tracks.dart';
import '../../../../../core/entities/entities/status.dart';

part 'album_tracks_event.dart';
part 'album_tracks_state.dart';
part 'album_tracks_bloc.freezed.dart';

class AlbumTracksBloc extends Bloc<AlbumTracksEvent, AlbumTracksState> {
  final GetAlbumTracks _getAlbumTracks;
  final GetAlbumInfo _getAlbumInfo;

  AlbumTracksBloc({
    required GetAlbumTracks getAlbumTracks,
    required GetAlbumInfo getAlbumInfo,
  })  : _getAlbumTracks = getAlbumTracks,
        _getAlbumInfo = getAlbumInfo,
        super(AlbumTracksState.initial()) {
    on<_Started>(_onStarted);
    on<_LoadTracks>(_onLoadTracks);
    on<_LoadAlbumInfo>(_onLoadAlbumInfo);
  }

  void start(String albumId) {
    add(AlbumTracksEvent.started(albumId: albumId));
  }

  Future<void> _onStarted(
      _Started event, Emitter<AlbumTracksState> emit) async {
    emit(state.copyWith(
      statusLoadTracks: const Status.loading(),
      statusLoadAlbumInfo: const Status.loading(),
    ));

    add(AlbumTracksEvent.loadTracks(albumId: event.albumId));
    add(AlbumTracksEvent.loadAlbumInfo(albumId: event.albumId));
  }

  Future<void> _onLoadTracks(
      _LoadTracks event, Emitter<AlbumTracksState> emit) async {
    emit(state.copyWith(statusLoadTracks: const Status.loading()));

    final result = await _getAlbumTracks(
      GetAlbumTracksParams(albumId: event.albumId),
    );

    result.fold(
      (failure) => emit(state.copyWith(
        statusLoadTracks: Status.failure(failure.message),
      )),
      (tracks) => emit(state.copyWith(
        tracks: tracks,
        statusLoadTracks: const Status.success(),
      )),
    );
  }

  Future<void> _onLoadAlbumInfo(
      _LoadAlbumInfo event, Emitter<AlbumTracksState> emit) async {
    emit(state.copyWith(statusLoadAlbumInfo: const Status.loading()));

    final result = await _getAlbumInfo(
      GetAlbumInfoParams(albumId: event.albumId),
    );

    result.fold(
      (failure) => emit(state.copyWith(
        statusLoadAlbumInfo: Status.failure(failure.message),
      )),
      (album) => emit(state.copyWith(
        album: album,
        statusLoadAlbumInfo: const Status.success(),
      )),
    );
  }
}
