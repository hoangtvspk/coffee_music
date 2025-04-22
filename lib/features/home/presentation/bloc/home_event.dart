part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  // Initialization
  const factory HomeEvent.started() = _Started;

  // New Releases
  const factory HomeEvent.getNewReleases({
    @Default(0) int offset,
    @Default(20) int limit,
  }) = _GetNewReleases;

  // User Playlists
  const factory HomeEvent.getUserPlaylists({
    @Default(0) int offset,
    @Default(20) int limit,
    required String userId,
  }) = _GetUserPlaylists;

  // Tracks
  const factory HomeEvent.getTracks({
    required String ids,
  }) = _GetTracks;
}
