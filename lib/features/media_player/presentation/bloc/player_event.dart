part of 'player_bloc.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.getPlaybackState() = _GetPlaybackState;
  const factory PlayerEvent.play() = _Play;
  const factory PlayerEvent.pause() = _Pause;
  const factory PlayerEvent.next() = _Next;
  const factory PlayerEvent.previous() = _Previous;
  const factory PlayerEvent.seek(int positionMs) = _Seek;
  const factory PlayerEvent.setVolume(int volumePercent) = _SetVolume;
  const factory PlayerEvent.toggleShuffle(bool state) = _ToggleShuffle;
  const factory PlayerEvent.setRepeatMode(String state) = _SetRepeatMode;
  const factory PlayerEvent.playTrack(String uri) = _PlayTrack;
}
