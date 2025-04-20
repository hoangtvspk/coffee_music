import 'package:buitify_coffee/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/album/album.dart';
import '../../../domain/entities/track/track_item.dart';
import '../../../domain/usecases/get_album_info.dart';
import '../../../domain/usecases/get_album_tracks.dart';

part 'album_tracks_event.dart';
part 'album_tracks_state.dart';
part 'album_tracks_bloc.freezed.dart';

class AlbumTracksBloc extends Bloc<AlbumTracksEvent, AlbumTracksState> {
  final GetAlbumTracks getAlbumTracks;
  final GetAlbumInfo getAlbumInfo;

  Either<Failure, Album>? _cacheAlbumResult;
  Either<Failure, List<TrackItem>>? _cacheTracksResult;
  AlbumTracksBloc({required this.getAlbumTracks, required this.getAlbumInfo})
      : super(const AlbumTracksState.initial()) {
    on<AlbumTracksEvent>((event, emit) async {
      await event.map(fetchAlbumTracks: (e) async {
        emit(const AlbumTracksState.loading());

        if (_cacheTracksResult == null) {
          final result = await getAlbumTracks(
            GetAlbumTracksParams(albumId: e.albumId),
          );
          _cacheTracksResult = result;
        }

        emit(
          _cacheTracksResult!.fold(
            (failure) => const AlbumTracksState.error('Failed to load tracks'),
            (tracks) => AlbumTracksState.loaded(
              tracks: tracks,
              album: state.maybeWhen(
                loaded: (_, album) => album,
                orElse: () => const Album(
                  id: '',
                  name: '',
                  images: [],
                  type: '',
                  albumType: '',
                  releaseDate: '',
                  totalTracks: 0,
                  artists: [],
                ),
              ),
            ),
          ),
        );
      }, fetchAlbumInfo: (e) async {
        emit(const AlbumTracksState.loading());
        if (_cacheAlbumResult == null) {
          final result =
              await getAlbumInfo(GetAlbumInfoParams(albumId: e.albumId));
          _cacheAlbumResult = result;
        }
        emit(
          _cacheAlbumResult!.fold(
            (failure) => AlbumTracksState.error(failure.message),
            (album) => AlbumTracksState.loaded(
              tracks: state.maybeWhen(
                loaded: (tracks, _) => tracks,
                orElse: () => [],
              ),
              album: album,
            ),
          ),
        );
      });
    });
  }
}
