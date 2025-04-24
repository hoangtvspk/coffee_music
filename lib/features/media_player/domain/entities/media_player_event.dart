import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_player_event.freezed.dart';

@freezed
class MediaPlayerEvent with _$MediaPlayerEvent {
  const factory MediaPlayerEvent.loadTrack({
    required String trackUrl,
    required String title,
    required String artist,
    required String imageUrl,
  }) = LoadTrack;

  const factory MediaPlayerEvent.play() = Play;
  const factory MediaPlayerEvent.pause() = Pause;
  const factory MediaPlayerEvent.seek(Duration position) = Seek;
  const factory MediaPlayerEvent.toggleShuffle() = ToggleShuffle;
  const factory MediaPlayerEvent.toggleLoop() = ToggleLoop;
  const factory MediaPlayerEvent.stop() = Stop;
}
