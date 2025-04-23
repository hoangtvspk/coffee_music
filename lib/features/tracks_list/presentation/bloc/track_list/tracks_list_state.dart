part of 'tracks_list_bloc.dart';

@freezed
class TracksListState with _$TracksListState {
  const factory TracksListState({
    // Data fields
    @Default([]) List<TrackItem> tracks,

    // Status fields
    @Default(Status.idle()) Status statusLoadTracks,
  }) = _TracksListState;

  factory TracksListState.initial() => const TracksListState();
}
