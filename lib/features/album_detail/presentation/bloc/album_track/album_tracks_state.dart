part of 'album_tracks_bloc.dart';

@freezed
class AlbumTracksState with _$AlbumTracksState {
  const factory AlbumTracksState.initial() = _Initial;
  const factory AlbumTracksState.loading() = _Loading;
  const factory AlbumTracksState.error(String message) = _Error;
  const factory AlbumTracksState.loaded({
    required List<TrackItem> tracks,
    required Album album,
  }) = _Loaded;
}
