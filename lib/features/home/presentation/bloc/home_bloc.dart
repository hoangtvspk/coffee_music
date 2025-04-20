import 'package:buitify_coffee/core/error/failure.dart';
import 'package:buitify_coffee/features/home/domain/entities/track/track.dart';
import 'package:buitify_coffee/features/home/domain/usecases/get_several_track.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/album/album.dart';
import '../../domain/entities/playlist/playlist.dart';
import '../../domain/usecases/get_new_releases.dart';
import '../../domain/usecases/get_user_playlists.dart';
import '../../../../core/usecase/usecase.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetNewReleases _getNewReleases;
  final GetUserPlaylists _getUserPlaylists;
  final GetSeveralTrack _getSeveralTrack;

  Either<Failure, List<Album>>? _cacheAlbumResult;
  Either<Failure, List<Playlist>>? _cachePlaylistResult;
  Either<Failure, Track>? _cacheTrackResult;

  HomeBloc({
    required GetNewReleases getNewReleases,
    required GetUserPlaylists getUserPlaylists,
    required GetSeveralTrack getSeveralTrack,
  })  : _getNewReleases = getNewReleases,
        _getUserPlaylists = getUserPlaylists,
        _getSeveralTrack = getSeveralTrack,
        super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        started: () async {
          if (_cacheAlbumResult == null ||
              _cachePlaylistResult == null ||
              _cacheTrackResult == null) {
            emit(const HomeState.loading());
          }
        },
        getNewReleases: (offset, limit) async {
          if (_cacheAlbumResult == null) {
            emit(const HomeState.loading());
            final result = await _getNewReleases(
              PaginationParams(
                offset: offset,
                limit: limit,
              ),
            );
            _cacheAlbumResult = result;
          }

          _cacheAlbumResult!.fold(
            (failure) => emit(HomeState.homeError(failure.message)),
            (success) => emit(HomeState.loaded(
              newReleases: success,
              userPlaylists: state.maybeWhen(
                loaded: (albums, playlists, _) => playlists,
                orElse: () => [],
              ),
              tracks: state.maybeWhen(
                loaded: (albums, playlists, tracks) => tracks,
                orElse: () => const Track(),
              ),
            )),
          );
        },
        getUserPlaylists: (offset, limit, userId) async {
          if (_cachePlaylistResult == null) {
            emit(const HomeState.loading());
            final result = await _getUserPlaylists(
              UserPaginationParams(
                offset: offset,
                limit: limit,
                userId: userId,
              ),
            );
            _cachePlaylistResult = result;
          }

          _cachePlaylistResult!.fold(
            (failure) {
              emit(HomeState.homeError(failure.message));
            },
            (success) {
              emit(HomeState.loaded(
                newReleases: state.maybeWhen(
                  loaded: (albums, playlists, _) => albums,
                  orElse: () => [],
                ),
                userPlaylists: success,
                tracks: state.maybeWhen(
                  loaded: (_, __, tracks) => tracks,
                  orElse: () => const Track(),
                ),
              ));
            },
          );
        },
        getTracks: (ids) async {
          if (_cacheTrackResult == null) {
            emit(const HomeState.loading());
            final result = await _getSeveralTrack(ids);
            _cacheTrackResult = result;
          }
          _cacheTrackResult!.fold(
            (failure) {
              emit(HomeState.homeError(failure.message));
            },
            (success) {
              emit(HomeState.loaded(
                newReleases: state.maybeWhen(
                  loaded: (albums, playlists, _) => albums,
                  orElse: () => [],
                ),
                userPlaylists: state.maybeWhen(
                  loaded: (_, playlists, __) => playlists,
                  orElse: () => [],
                ),
                tracks: success,
              ));
            },
          );
        },
        homeError: (message) {
          emit(HomeState.homeError(message));
        },
      );
    });
  }
}
