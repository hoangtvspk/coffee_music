import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/entities/status/status.dart';
import '../../../../core/domain/entities/playlist/playlist.dart';
import '../../domain/usecases/get_user_playlists.dart';

part 'playlist_bloc.freezed.dart';
part 'playlist_event.dart';
part 'playlist_state.dart';

class PlaylistBloc extends Bloc<PlaylistEvent, PlaylistState> {
  final GetUserPlaylists _getUserPlaylists;

  PlaylistBloc({
    required GetUserPlaylists getUserPlaylists,
  })  : _getUserPlaylists = getUserPlaylists,
        super(const PlaylistState()) {
    on<_Started>(_onStarted);
    on<_GetUserPlaylists>(_onGetUserPlaylists);
  }

  Future<void> _onStarted(_Started event, Emitter<PlaylistState> emit) async {
    emit(state.copyWith(
      statusLoadPlaylists: const Status.loading(),
    ));
  }

  void start() {
    add(const _Started());
  }

  Future<void> _onGetUserPlaylists(
      _GetUserPlaylists event, Emitter<PlaylistState> emit) async {
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
}
