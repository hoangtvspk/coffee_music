part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<Album> newReleases,
    @Default([]) List<Playlist> userPlaylists,
    @Default([]) List<Track> tracks,
    @Default([]) List<Track> savedTracks,
    @Default([]) List<Track> artistTopTracks,
    @Default(Status.idle()) Status statusLoadNewReleases,
    @Default(Status.idle()) Status statusLoadPlaylists,
    @Default(Status.idle()) Status statusLoadTracks,
    @Default(Status.idle()) Status statusLoadSavedTracks,
    @Default(Status.idle()) Status statusLoadArtistTopTracks,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState();
}
