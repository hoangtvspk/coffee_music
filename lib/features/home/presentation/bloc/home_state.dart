part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<Album> newReleases,
    @Default([]) List<Playlist> userPlaylists,
    @Default(Track()) Track tracks,
    @Default(Status.idle()) Status statusLoadNewReleases,
    @Default(Status.idle()) Status statusLoadPlaylists,
    @Default(Status.idle()) Status statusLoadTracks,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState();
}
