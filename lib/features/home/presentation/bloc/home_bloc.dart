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
import '../../../../core/entities/entities/status.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetNewReleases _getNewReleases;
  final GetUserPlaylists _getUserPlaylists;
  final GetSeveralTrack _getSeveralTrack;

  HomeBloc({
    required GetNewReleases getNewReleases,
    required GetUserPlaylists getUserPlaylists,
    required GetSeveralTrack getSeveralTrack,
  })  : _getNewReleases = getNewReleases,
        _getUserPlaylists = getUserPlaylists,
        _getSeveralTrack = getSeveralTrack,
        super(HomeState.initial()) {
    on<_Started>(_onStarted);
    on<_GetNewReleases>(_onGetNewReleases);
    on<_GetUserPlaylists>(_onGetUserPlaylists);
    on<_GetTracks>(_onGetTracks);
  }

  Future<void> _onStarted(_Started event, Emitter<HomeState> emit) async {
    emit(state.copyWith(
      statusLoadNewReleases: const Status.loading(),
      statusLoadPlaylists: const Status.loading(),
      statusLoadTracks: const Status.loading(),
    ));
    add(const _GetNewReleases(offset: 0, limit: 20));
  }

  void start() {
    add(const _Started());
  }

  Future<void> _onGetNewReleases(
      _GetNewReleases event, Emitter<HomeState> emit) async {
    emit(state.copyWith(statusLoadNewReleases: const Status.loading()));

    final result = await _getNewReleases(
      PaginationParams(
        offset: event.offset,
        limit: event.limit,
      ),
    );

    result.fold(
      (failure) => emit(state.copyWith(
        statusLoadNewReleases: Status.failure(failure.message),
      )),
      (success) => emit(state.copyWith(
        newReleases: success,
        statusLoadNewReleases: const Status.success(),
      )),
    );
  }

  Future<void> _onGetUserPlaylists(
      _GetUserPlaylists event, Emitter<HomeState> emit) async {
    emit(state.copyWith(statusLoadPlaylists: const Status.loading()));

    final result = await _getUserPlaylists(
      UserPaginationParams(
        offset: event.offset,
        limit: event.limit,
        userId: event.userId,
      ),
    );

    result.fold(
      (failure) => emit(state.copyWith(
        statusLoadPlaylists: Status.failure(failure.message),
      )),
      (success) => emit(state.copyWith(
        userPlaylists: success,
        statusLoadPlaylists: const Status.success(),
      )),
    );
  }

  Future<void> _onGetTracks(_GetTracks event, Emitter<HomeState> emit) async {
    emit(state.copyWith(statusLoadTracks: const Status.loading()));

    final result = await _getSeveralTrack(event.ids);

    result.fold(
      (failure) => emit(state.copyWith(
        statusLoadTracks: Status.failure(failure.message),
      )),
      (success) => emit(state.copyWith(
        tracks: success,
        statusLoadTracks: const Status.success(),
      )),
    );
  }
}
