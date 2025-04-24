import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/track/track_item.dart';
import '../../../domain/usecases/get_tracks.dart';
import '../../../../../core/domain/entities/status/status.dart';

part 'tracks_list_event.dart';
part 'tracks_list_state.dart';
part 'tracks_list_bloc.freezed.dart';

class TracksListBloc extends Bloc<TracksListEvent, TracksListState> {
  final GetTracks _getTracks;

  TracksListBloc({
    required GetTracks getTracks,
  })  : _getTracks = getTracks,
        super(TracksListState.initial()) {
    on<_Started>(_onStarted);
    on<_LoadTracks>(_onLoadTracks);
  }

  void start(String listTrackId) {
    add(TracksListEvent.started(listTrackId: listTrackId));
  }

  Future<void> _onStarted(_Started event, Emitter<TracksListState> emit) async {
    emit(state.copyWith(
      statusLoadTracks: const Status.loading(),
    ));

    add(TracksListEvent.loadTracks(listTrackId: event.listTrackId));
  }

  Future<void> _onLoadTracks(
      _LoadTracks event, Emitter<TracksListState> emit) async {
    emit(state.copyWith(statusLoadTracks: const Status.loading()));

    final result = await _getTracks(
      GetTracksParams(listTrackId: event.listTrackId),
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
}
