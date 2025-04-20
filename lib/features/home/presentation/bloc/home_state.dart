part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.homeError(String message) = _HomeStateError;
  const factory HomeState.loaded({
    required List<Album> newReleases,
    required List<Playlist> userPlaylists,
    required Track tracks,
  }) = _Loaded;
}
