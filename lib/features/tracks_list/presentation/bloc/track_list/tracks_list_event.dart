part of 'tracks_list_bloc.dart';

@freezed
class TracksListEvent with _$TracksListEvent {
  const factory TracksListEvent.started({
    required String listTrackId,
  }) = _Started;

  const factory TracksListEvent.loadTracks({
    required String listTrackId,
  }) = _LoadTracks;
}
