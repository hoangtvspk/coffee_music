import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import '../../../../core/domain/entities/status/status.dart';

part 'media_player_state.freezed.dart';

@freezed
class MediaPlayerState with _$MediaPlayerState {
  const factory MediaPlayerState({
    required AudioPlayer player,
    @Default('') String currentTrackTitle,
    @Default('') String currentTrackArtist,
    @Default('') String currentTrackImageUrl,
    @Default(Duration.zero) Duration currentPosition,
    @Default(Duration.zero) Duration totalDuration,
    @Default(false) bool isPlaying,
    @Default(false) bool isShuffleModeEnabled,
    @Default(0) int loopMode,
    @Default(Status.idle()) Status statusLoadTrack,
    @Default(Status.idle()) Status statusPlayback,
  }) = _MediaPlayerState;
}
