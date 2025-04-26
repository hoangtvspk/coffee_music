part of 'player_bloc.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    PlaybackState? playbackState,
    @Default(Status.idle()) Status statusGetPlaybackState,
    @Default(Status.idle()) Status statusPlay,
    @Default(Status.idle()) Status statusPause,
    @Default(Status.idle()) Status statusNext,
    @Default(Status.idle()) Status statusPrevious,
    @Default(Status.idle()) Status statusSeek,
    @Default(Status.idle()) Status statusSetVolume,
    @Default(Status.idle()) Status statusToggleShuffle,
    @Default(Status.idle()) Status statusSetRepeatMode,
    @Default(false) bool isPlaying,
  }) = _PlayerState;
}
