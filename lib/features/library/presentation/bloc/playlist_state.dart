part of 'playlist_bloc.dart';

@freezed
class PlaylistState with _$PlaylistState {
  const factory PlaylistState({
    @Default([]) List<Playlist> userPlaylists,
    @Default(Status.idle()) Status statusLoadPlaylists,
  }) = _PlaylistState;
}
