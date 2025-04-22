part of 'album_tracks_bloc.dart';

@freezed
class AlbumTracksState with _$AlbumTracksState {
  const factory AlbumTracksState({
    // Data fields
    @Default([]) List<TrackItem> tracks,
    @Default(null) Album? album,

    // Status fields
    @Default(Status.idle()) Status statusLoadTracks,
    @Default(Status.idle()) Status statusLoadAlbumInfo,
  }) = _AlbumTracksState;

  factory AlbumTracksState.initial() => const AlbumTracksState();
}
