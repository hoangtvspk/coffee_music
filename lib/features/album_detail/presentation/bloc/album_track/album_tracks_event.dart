part of 'album_tracks_bloc.dart';

@freezed
class AlbumTracksEvent with _$AlbumTracksEvent {
  const factory AlbumTracksEvent.started({
    required String albumId,
  }) = _Started;

  const factory AlbumTracksEvent.loadTracks({
    required String albumId,
  }) = _LoadTracks;

  const factory AlbumTracksEvent.loadAlbumInfo({
    required String albumId,
  }) = _LoadAlbumInfo;
}
