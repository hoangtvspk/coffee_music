// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MediaPlayerState {
  AudioPlayer get player => throw _privateConstructorUsedError;
  String get currentTrackTitle => throw _privateConstructorUsedError;
  String get currentTrackArtist => throw _privateConstructorUsedError;
  String get currentTrackImageUrl => throw _privateConstructorUsedError;
  Duration get currentPosition => throw _privateConstructorUsedError;
  Duration get totalDuration => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  bool get isShuffleModeEnabled => throw _privateConstructorUsedError;
  int get loopMode => throw _privateConstructorUsedError;
  Status get statusLoadTrack => throw _privateConstructorUsedError;
  Status get statusPlayback => throw _privateConstructorUsedError;

  /// Create a copy of MediaPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaPlayerStateCopyWith<MediaPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaPlayerStateCopyWith<$Res> {
  factory $MediaPlayerStateCopyWith(
          MediaPlayerState value, $Res Function(MediaPlayerState) then) =
      _$MediaPlayerStateCopyWithImpl<$Res, MediaPlayerState>;
  @useResult
  $Res call(
      {AudioPlayer player,
      String currentTrackTitle,
      String currentTrackArtist,
      String currentTrackImageUrl,
      Duration currentPosition,
      Duration totalDuration,
      bool isPlaying,
      bool isShuffleModeEnabled,
      int loopMode,
      Status statusLoadTrack,
      Status statusPlayback});

  $StatusCopyWith<$Res> get statusLoadTrack;
  $StatusCopyWith<$Res> get statusPlayback;
}

/// @nodoc
class _$MediaPlayerStateCopyWithImpl<$Res, $Val extends MediaPlayerState>
    implements $MediaPlayerStateCopyWith<$Res> {
  _$MediaPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? currentTrackTitle = null,
    Object? currentTrackArtist = null,
    Object? currentTrackImageUrl = null,
    Object? currentPosition = null,
    Object? totalDuration = null,
    Object? isPlaying = null,
    Object? isShuffleModeEnabled = null,
    Object? loopMode = null,
    Object? statusLoadTrack = null,
    Object? statusPlayback = null,
  }) {
    return _then(_value.copyWith(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as AudioPlayer,
      currentTrackTitle: null == currentTrackTitle
          ? _value.currentTrackTitle
          : currentTrackTitle // ignore: cast_nullable_to_non_nullable
              as String,
      currentTrackArtist: null == currentTrackArtist
          ? _value.currentTrackArtist
          : currentTrackArtist // ignore: cast_nullable_to_non_nullable
              as String,
      currentTrackImageUrl: null == currentTrackImageUrl
          ? _value.currentTrackImageUrl
          : currentTrackImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      totalDuration: null == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isShuffleModeEnabled: null == isShuffleModeEnabled
          ? _value.isShuffleModeEnabled
          : isShuffleModeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      loopMode: null == loopMode
          ? _value.loopMode
          : loopMode // ignore: cast_nullable_to_non_nullable
              as int,
      statusLoadTrack: null == statusLoadTrack
          ? _value.statusLoadTrack
          : statusLoadTrack // ignore: cast_nullable_to_non_nullable
              as Status,
      statusPlayback: null == statusPlayback
          ? _value.statusPlayback
          : statusPlayback // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  /// Create a copy of MediaPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusLoadTrack {
    return $StatusCopyWith<$Res>(_value.statusLoadTrack, (value) {
      return _then(_value.copyWith(statusLoadTrack: value) as $Val);
    });
  }

  /// Create a copy of MediaPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusPlayback {
    return $StatusCopyWith<$Res>(_value.statusPlayback, (value) {
      return _then(_value.copyWith(statusPlayback: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MediaPlayerStateImplCopyWith<$Res>
    implements $MediaPlayerStateCopyWith<$Res> {
  factory _$$MediaPlayerStateImplCopyWith(_$MediaPlayerStateImpl value,
          $Res Function(_$MediaPlayerStateImpl) then) =
      __$$MediaPlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AudioPlayer player,
      String currentTrackTitle,
      String currentTrackArtist,
      String currentTrackImageUrl,
      Duration currentPosition,
      Duration totalDuration,
      bool isPlaying,
      bool isShuffleModeEnabled,
      int loopMode,
      Status statusLoadTrack,
      Status statusPlayback});

  @override
  $StatusCopyWith<$Res> get statusLoadTrack;
  @override
  $StatusCopyWith<$Res> get statusPlayback;
}

/// @nodoc
class __$$MediaPlayerStateImplCopyWithImpl<$Res>
    extends _$MediaPlayerStateCopyWithImpl<$Res, _$MediaPlayerStateImpl>
    implements _$$MediaPlayerStateImplCopyWith<$Res> {
  __$$MediaPlayerStateImplCopyWithImpl(_$MediaPlayerStateImpl _value,
      $Res Function(_$MediaPlayerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? currentTrackTitle = null,
    Object? currentTrackArtist = null,
    Object? currentTrackImageUrl = null,
    Object? currentPosition = null,
    Object? totalDuration = null,
    Object? isPlaying = null,
    Object? isShuffleModeEnabled = null,
    Object? loopMode = null,
    Object? statusLoadTrack = null,
    Object? statusPlayback = null,
  }) {
    return _then(_$MediaPlayerStateImpl(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as AudioPlayer,
      currentTrackTitle: null == currentTrackTitle
          ? _value.currentTrackTitle
          : currentTrackTitle // ignore: cast_nullable_to_non_nullable
              as String,
      currentTrackArtist: null == currentTrackArtist
          ? _value.currentTrackArtist
          : currentTrackArtist // ignore: cast_nullable_to_non_nullable
              as String,
      currentTrackImageUrl: null == currentTrackImageUrl
          ? _value.currentTrackImageUrl
          : currentTrackImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      totalDuration: null == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isShuffleModeEnabled: null == isShuffleModeEnabled
          ? _value.isShuffleModeEnabled
          : isShuffleModeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      loopMode: null == loopMode
          ? _value.loopMode
          : loopMode // ignore: cast_nullable_to_non_nullable
              as int,
      statusLoadTrack: null == statusLoadTrack
          ? _value.statusLoadTrack
          : statusLoadTrack // ignore: cast_nullable_to_non_nullable
              as Status,
      statusPlayback: null == statusPlayback
          ? _value.statusPlayback
          : statusPlayback // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$MediaPlayerStateImpl implements _MediaPlayerState {
  const _$MediaPlayerStateImpl(
      {required this.player,
      this.currentTrackTitle = '',
      this.currentTrackArtist = '',
      this.currentTrackImageUrl = '',
      this.currentPosition = Duration.zero,
      this.totalDuration = Duration.zero,
      this.isPlaying = false,
      this.isShuffleModeEnabled = false,
      this.loopMode = 0,
      this.statusLoadTrack = const Status.idle(),
      this.statusPlayback = const Status.idle()});

  @override
  final AudioPlayer player;
  @override
  @JsonKey()
  final String currentTrackTitle;
  @override
  @JsonKey()
  final String currentTrackArtist;
  @override
  @JsonKey()
  final String currentTrackImageUrl;
  @override
  @JsonKey()
  final Duration currentPosition;
  @override
  @JsonKey()
  final Duration totalDuration;
  @override
  @JsonKey()
  final bool isPlaying;
  @override
  @JsonKey()
  final bool isShuffleModeEnabled;
  @override
  @JsonKey()
  final int loopMode;
  @override
  @JsonKey()
  final Status statusLoadTrack;
  @override
  @JsonKey()
  final Status statusPlayback;

  @override
  String toString() {
    return 'MediaPlayerState(player: $player, currentTrackTitle: $currentTrackTitle, currentTrackArtist: $currentTrackArtist, currentTrackImageUrl: $currentTrackImageUrl, currentPosition: $currentPosition, totalDuration: $totalDuration, isPlaying: $isPlaying, isShuffleModeEnabled: $isShuffleModeEnabled, loopMode: $loopMode, statusLoadTrack: $statusLoadTrack, statusPlayback: $statusPlayback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaPlayerStateImpl &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.currentTrackTitle, currentTrackTitle) ||
                other.currentTrackTitle == currentTrackTitle) &&
            (identical(other.currentTrackArtist, currentTrackArtist) ||
                other.currentTrackArtist == currentTrackArtist) &&
            (identical(other.currentTrackImageUrl, currentTrackImageUrl) ||
                other.currentTrackImageUrl == currentTrackImageUrl) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.isShuffleModeEnabled, isShuffleModeEnabled) ||
                other.isShuffleModeEnabled == isShuffleModeEnabled) &&
            (identical(other.loopMode, loopMode) ||
                other.loopMode == loopMode) &&
            (identical(other.statusLoadTrack, statusLoadTrack) ||
                other.statusLoadTrack == statusLoadTrack) &&
            (identical(other.statusPlayback, statusPlayback) ||
                other.statusPlayback == statusPlayback));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      player,
      currentTrackTitle,
      currentTrackArtist,
      currentTrackImageUrl,
      currentPosition,
      totalDuration,
      isPlaying,
      isShuffleModeEnabled,
      loopMode,
      statusLoadTrack,
      statusPlayback);

  /// Create a copy of MediaPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaPlayerStateImplCopyWith<_$MediaPlayerStateImpl> get copyWith =>
      __$$MediaPlayerStateImplCopyWithImpl<_$MediaPlayerStateImpl>(
          this, _$identity);
}

abstract class _MediaPlayerState implements MediaPlayerState {
  const factory _MediaPlayerState(
      {required final AudioPlayer player,
      final String currentTrackTitle,
      final String currentTrackArtist,
      final String currentTrackImageUrl,
      final Duration currentPosition,
      final Duration totalDuration,
      final bool isPlaying,
      final bool isShuffleModeEnabled,
      final int loopMode,
      final Status statusLoadTrack,
      final Status statusPlayback}) = _$MediaPlayerStateImpl;

  @override
  AudioPlayer get player;
  @override
  String get currentTrackTitle;
  @override
  String get currentTrackArtist;
  @override
  String get currentTrackImageUrl;
  @override
  Duration get currentPosition;
  @override
  Duration get totalDuration;
  @override
  bool get isPlaying;
  @override
  bool get isShuffleModeEnabled;
  @override
  int get loopMode;
  @override
  Status get statusLoadTrack;
  @override
  Status get statusPlayback;

  /// Create a copy of MediaPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaPlayerStateImplCopyWith<_$MediaPlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
