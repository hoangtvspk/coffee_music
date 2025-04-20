part of 'album_tracks_bloc.dart';

@freezed
class AlbumTracksEvent with _$AlbumTracksEvent {
  const factory AlbumTracksEvent.fetchAlbumInfo(String albumId) =
      _FetchAlbumInfo;
  const factory AlbumTracksEvent.fetchAlbumTracks({
    required String albumId,
  }) = _FetchAlbumTracks;
}
