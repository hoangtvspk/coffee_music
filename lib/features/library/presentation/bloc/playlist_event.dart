part of 'playlist_bloc.dart';

@freezed
class PlaylistEvent with _$PlaylistEvent {
  // Initialization
  const factory PlaylistEvent.started() = _Started;

  // User Playlists
  const factory PlaylistEvent.getUserPlaylists({
    @Default(0) int offset,
    @Default(20) int limit,
    required String userId,
  }) = _GetUserPlaylists;
}
