// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaybackState,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function(int positionMs) seek,
    required TResult Function(int volumePercent) setVolume,
    required TResult Function(bool state) toggleShuffle,
    required TResult Function(String state) setRepeatMode,
    required TResult Function(String uri) playTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaybackState,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function(int positionMs)? seek,
    TResult? Function(int volumePercent)? setVolume,
    TResult? Function(bool state)? toggleShuffle,
    TResult? Function(String state)? setRepeatMode,
    TResult? Function(String uri)? playTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaybackState,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function(int positionMs)? seek,
    TResult Function(int volumePercent)? setVolume,
    TResult Function(bool state)? toggleShuffle,
    TResult Function(String state)? setRepeatMode,
    TResult Function(String uri)? playTrack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaybackState value) getPlaybackState,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Next value) next,
    required TResult Function(_Previous value) previous,
    required TResult Function(_Seek value) seek,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_ToggleShuffle value) toggleShuffle,
    required TResult Function(_SetRepeatMode value) setRepeatMode,
    required TResult Function(_PlayTrack value) playTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaybackState value)? getPlaybackState,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Next value)? next,
    TResult? Function(_Previous value)? previous,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_ToggleShuffle value)? toggleShuffle,
    TResult? Function(_SetRepeatMode value)? setRepeatMode,
    TResult? Function(_PlayTrack value)? playTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaybackState value)? getPlaybackState,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Next value)? next,
    TResult Function(_Previous value)? previous,
    TResult Function(_Seek value)? seek,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_ToggleShuffle value)? toggleShuffle,
    TResult Function(_SetRepeatMode value)? setRepeatMode,
    TResult Function(_PlayTrack value)? playTrack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEventCopyWith<$Res> {
  factory $PlayerEventCopyWith(
          PlayerEvent value, $Res Function(PlayerEvent) then) =
      _$PlayerEventCopyWithImpl<$Res, PlayerEvent>;
}

/// @nodoc
class _$PlayerEventCopyWithImpl<$Res, $Val extends PlayerEvent>
    implements $PlayerEventCopyWith<$Res> {
  _$PlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPlaybackStateImplCopyWith<$Res> {
  factory _$$GetPlaybackStateImplCopyWith(_$GetPlaybackStateImpl value,
          $Res Function(_$GetPlaybackStateImpl) then) =
      __$$GetPlaybackStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPlaybackStateImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$GetPlaybackStateImpl>
    implements _$$GetPlaybackStateImplCopyWith<$Res> {
  __$$GetPlaybackStateImplCopyWithImpl(_$GetPlaybackStateImpl _value,
      $Res Function(_$GetPlaybackStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPlaybackStateImpl implements _GetPlaybackState {
  const _$GetPlaybackStateImpl();

  @override
  String toString() {
    return 'PlayerEvent.getPlaybackState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPlaybackStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaybackState,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function(int positionMs) seek,
    required TResult Function(int volumePercent) setVolume,
    required TResult Function(bool state) toggleShuffle,
    required TResult Function(String state) setRepeatMode,
    required TResult Function(String uri) playTrack,
  }) {
    return getPlaybackState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaybackState,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function(int positionMs)? seek,
    TResult? Function(int volumePercent)? setVolume,
    TResult? Function(bool state)? toggleShuffle,
    TResult? Function(String state)? setRepeatMode,
    TResult? Function(String uri)? playTrack,
  }) {
    return getPlaybackState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaybackState,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function(int positionMs)? seek,
    TResult Function(int volumePercent)? setVolume,
    TResult Function(bool state)? toggleShuffle,
    TResult Function(String state)? setRepeatMode,
    TResult Function(String uri)? playTrack,
    required TResult orElse(),
  }) {
    if (getPlaybackState != null) {
      return getPlaybackState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaybackState value) getPlaybackState,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Next value) next,
    required TResult Function(_Previous value) previous,
    required TResult Function(_Seek value) seek,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_ToggleShuffle value) toggleShuffle,
    required TResult Function(_SetRepeatMode value) setRepeatMode,
    required TResult Function(_PlayTrack value) playTrack,
  }) {
    return getPlaybackState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaybackState value)? getPlaybackState,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Next value)? next,
    TResult? Function(_Previous value)? previous,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_ToggleShuffle value)? toggleShuffle,
    TResult? Function(_SetRepeatMode value)? setRepeatMode,
    TResult? Function(_PlayTrack value)? playTrack,
  }) {
    return getPlaybackState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaybackState value)? getPlaybackState,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Next value)? next,
    TResult Function(_Previous value)? previous,
    TResult Function(_Seek value)? seek,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_ToggleShuffle value)? toggleShuffle,
    TResult Function(_SetRepeatMode value)? setRepeatMode,
    TResult Function(_PlayTrack value)? playTrack,
    required TResult orElse(),
  }) {
    if (getPlaybackState != null) {
      return getPlaybackState(this);
    }
    return orElse();
  }
}

abstract class _GetPlaybackState implements PlayerEvent {
  const factory _GetPlaybackState() = _$GetPlaybackStateImpl;
}

/// @nodoc
abstract class _$$PlayImplCopyWith<$Res> {
  factory _$$PlayImplCopyWith(
          _$PlayImpl value, $Res Function(_$PlayImpl) then) =
      __$$PlayImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PlayImpl>
    implements _$$PlayImplCopyWith<$Res> {
  __$$PlayImplCopyWithImpl(_$PlayImpl _value, $Res Function(_$PlayImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlayImpl implements _Play {
  const _$PlayImpl();

  @override
  String toString() {
    return 'PlayerEvent.play()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaybackState,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function(int positionMs) seek,
    required TResult Function(int volumePercent) setVolume,
    required TResult Function(bool state) toggleShuffle,
    required TResult Function(String state) setRepeatMode,
    required TResult Function(String uri) playTrack,
  }) {
    return play();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaybackState,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function(int positionMs)? seek,
    TResult? Function(int volumePercent)? setVolume,
    TResult? Function(bool state)? toggleShuffle,
    TResult? Function(String state)? setRepeatMode,
    TResult? Function(String uri)? playTrack,
  }) {
    return play?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaybackState,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function(int positionMs)? seek,
    TResult Function(int volumePercent)? setVolume,
    TResult Function(bool state)? toggleShuffle,
    TResult Function(String state)? setRepeatMode,
    TResult Function(String uri)? playTrack,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaybackState value) getPlaybackState,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Next value) next,
    required TResult Function(_Previous value) previous,
    required TResult Function(_Seek value) seek,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_ToggleShuffle value) toggleShuffle,
    required TResult Function(_SetRepeatMode value) setRepeatMode,
    required TResult Function(_PlayTrack value) playTrack,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaybackState value)? getPlaybackState,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Next value)? next,
    TResult? Function(_Previous value)? previous,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_ToggleShuffle value)? toggleShuffle,
    TResult? Function(_SetRepeatMode value)? setRepeatMode,
    TResult? Function(_PlayTrack value)? playTrack,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaybackState value)? getPlaybackState,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Next value)? next,
    TResult Function(_Previous value)? previous,
    TResult Function(_Seek value)? seek,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_ToggleShuffle value)? toggleShuffle,
    TResult Function(_SetRepeatMode value)? setRepeatMode,
    TResult Function(_PlayTrack value)? playTrack,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class _Play implements PlayerEvent {
  const factory _Play() = _$PlayImpl;
}

/// @nodoc
abstract class _$$PauseImplCopyWith<$Res> {
  factory _$$PauseImplCopyWith(
          _$PauseImpl value, $Res Function(_$PauseImpl) then) =
      __$$PauseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PauseImpl>
    implements _$$PauseImplCopyWith<$Res> {
  __$$PauseImplCopyWithImpl(
      _$PauseImpl _value, $Res Function(_$PauseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PauseImpl implements _Pause {
  const _$PauseImpl();

  @override
  String toString() {
    return 'PlayerEvent.pause()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaybackState,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function(int positionMs) seek,
    required TResult Function(int volumePercent) setVolume,
    required TResult Function(bool state) toggleShuffle,
    required TResult Function(String state) setRepeatMode,
    required TResult Function(String uri) playTrack,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaybackState,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function(int positionMs)? seek,
    TResult? Function(int volumePercent)? setVolume,
    TResult? Function(bool state)? toggleShuffle,
    TResult? Function(String state)? setRepeatMode,
    TResult? Function(String uri)? playTrack,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaybackState,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function(int positionMs)? seek,
    TResult Function(int volumePercent)? setVolume,
    TResult Function(bool state)? toggleShuffle,
    TResult Function(String state)? setRepeatMode,
    TResult Function(String uri)? playTrack,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaybackState value) getPlaybackState,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Next value) next,
    required TResult Function(_Previous value) previous,
    required TResult Function(_Seek value) seek,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_ToggleShuffle value) toggleShuffle,
    required TResult Function(_SetRepeatMode value) setRepeatMode,
    required TResult Function(_PlayTrack value) playTrack,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaybackState value)? getPlaybackState,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Next value)? next,
    TResult? Function(_Previous value)? previous,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_ToggleShuffle value)? toggleShuffle,
    TResult? Function(_SetRepeatMode value)? setRepeatMode,
    TResult? Function(_PlayTrack value)? playTrack,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaybackState value)? getPlaybackState,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Next value)? next,
    TResult Function(_Previous value)? previous,
    TResult Function(_Seek value)? seek,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_ToggleShuffle value)? toggleShuffle,
    TResult Function(_SetRepeatMode value)? setRepeatMode,
    TResult Function(_PlayTrack value)? playTrack,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _Pause implements PlayerEvent {
  const factory _Pause() = _$PauseImpl;
}

/// @nodoc
abstract class _$$NextImplCopyWith<$Res> {
  factory _$$NextImplCopyWith(
          _$NextImpl value, $Res Function(_$NextImpl) then) =
      __$$NextImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$NextImpl>
    implements _$$NextImplCopyWith<$Res> {
  __$$NextImplCopyWithImpl(_$NextImpl _value, $Res Function(_$NextImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextImpl implements _Next {
  const _$NextImpl();

  @override
  String toString() {
    return 'PlayerEvent.next()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaybackState,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function(int positionMs) seek,
    required TResult Function(int volumePercent) setVolume,
    required TResult Function(bool state) toggleShuffle,
    required TResult Function(String state) setRepeatMode,
    required TResult Function(String uri) playTrack,
  }) {
    return next();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaybackState,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function(int positionMs)? seek,
    TResult? Function(int volumePercent)? setVolume,
    TResult? Function(bool state)? toggleShuffle,
    TResult? Function(String state)? setRepeatMode,
    TResult? Function(String uri)? playTrack,
  }) {
    return next?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaybackState,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function(int positionMs)? seek,
    TResult Function(int volumePercent)? setVolume,
    TResult Function(bool state)? toggleShuffle,
    TResult Function(String state)? setRepeatMode,
    TResult Function(String uri)? playTrack,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaybackState value) getPlaybackState,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Next value) next,
    required TResult Function(_Previous value) previous,
    required TResult Function(_Seek value) seek,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_ToggleShuffle value) toggleShuffle,
    required TResult Function(_SetRepeatMode value) setRepeatMode,
    required TResult Function(_PlayTrack value) playTrack,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaybackState value)? getPlaybackState,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Next value)? next,
    TResult? Function(_Previous value)? previous,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_ToggleShuffle value)? toggleShuffle,
    TResult? Function(_SetRepeatMode value)? setRepeatMode,
    TResult? Function(_PlayTrack value)? playTrack,
  }) {
    return next?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaybackState value)? getPlaybackState,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Next value)? next,
    TResult Function(_Previous value)? previous,
    TResult Function(_Seek value)? seek,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_ToggleShuffle value)? toggleShuffle,
    TResult Function(_SetRepeatMode value)? setRepeatMode,
    TResult Function(_PlayTrack value)? playTrack,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class _Next implements PlayerEvent {
  const factory _Next() = _$NextImpl;
}

/// @nodoc
abstract class _$$PreviousImplCopyWith<$Res> {
  factory _$$PreviousImplCopyWith(
          _$PreviousImpl value, $Res Function(_$PreviousImpl) then) =
      __$$PreviousImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviousImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PreviousImpl>
    implements _$$PreviousImplCopyWith<$Res> {
  __$$PreviousImplCopyWithImpl(
      _$PreviousImpl _value, $Res Function(_$PreviousImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PreviousImpl implements _Previous {
  const _$PreviousImpl();

  @override
  String toString() {
    return 'PlayerEvent.previous()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PreviousImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaybackState,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function(int positionMs) seek,
    required TResult Function(int volumePercent) setVolume,
    required TResult Function(bool state) toggleShuffle,
    required TResult Function(String state) setRepeatMode,
    required TResult Function(String uri) playTrack,
  }) {
    return previous();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaybackState,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function(int positionMs)? seek,
    TResult? Function(int volumePercent)? setVolume,
    TResult? Function(bool state)? toggleShuffle,
    TResult? Function(String state)? setRepeatMode,
    TResult? Function(String uri)? playTrack,
  }) {
    return previous?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaybackState,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function(int positionMs)? seek,
    TResult Function(int volumePercent)? setVolume,
    TResult Function(bool state)? toggleShuffle,
    TResult Function(String state)? setRepeatMode,
    TResult Function(String uri)? playTrack,
    required TResult orElse(),
  }) {
    if (previous != null) {
      return previous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaybackState value) getPlaybackState,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Next value) next,
    required TResult Function(_Previous value) previous,
    required TResult Function(_Seek value) seek,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_ToggleShuffle value) toggleShuffle,
    required TResult Function(_SetRepeatMode value) setRepeatMode,
    required TResult Function(_PlayTrack value) playTrack,
  }) {
    return previous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaybackState value)? getPlaybackState,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Next value)? next,
    TResult? Function(_Previous value)? previous,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_ToggleShuffle value)? toggleShuffle,
    TResult? Function(_SetRepeatMode value)? setRepeatMode,
    TResult? Function(_PlayTrack value)? playTrack,
  }) {
    return previous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaybackState value)? getPlaybackState,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Next value)? next,
    TResult Function(_Previous value)? previous,
    TResult Function(_Seek value)? seek,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_ToggleShuffle value)? toggleShuffle,
    TResult Function(_SetRepeatMode value)? setRepeatMode,
    TResult Function(_PlayTrack value)? playTrack,
    required TResult orElse(),
  }) {
    if (previous != null) {
      return previous(this);
    }
    return orElse();
  }
}

abstract class _Previous implements PlayerEvent {
  const factory _Previous() = _$PreviousImpl;
}

/// @nodoc
abstract class _$$SeekImplCopyWith<$Res> {
  factory _$$SeekImplCopyWith(
          _$SeekImpl value, $Res Function(_$SeekImpl) then) =
      __$$SeekImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int positionMs});
}

/// @nodoc
class __$$SeekImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$SeekImpl>
    implements _$$SeekImplCopyWith<$Res> {
  __$$SeekImplCopyWithImpl(_$SeekImpl _value, $Res Function(_$SeekImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionMs = null,
  }) {
    return _then(_$SeekImpl(
      null == positionMs
          ? _value.positionMs
          : positionMs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SeekImpl implements _Seek {
  const _$SeekImpl(this.positionMs);

  @override
  final int positionMs;

  @override
  String toString() {
    return 'PlayerEvent.seek(positionMs: $positionMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeekImpl &&
            (identical(other.positionMs, positionMs) ||
                other.positionMs == positionMs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, positionMs);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeekImplCopyWith<_$SeekImpl> get copyWith =>
      __$$SeekImplCopyWithImpl<_$SeekImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaybackState,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function(int positionMs) seek,
    required TResult Function(int volumePercent) setVolume,
    required TResult Function(bool state) toggleShuffle,
    required TResult Function(String state) setRepeatMode,
    required TResult Function(String uri) playTrack,
  }) {
    return seek(positionMs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaybackState,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function(int positionMs)? seek,
    TResult? Function(int volumePercent)? setVolume,
    TResult? Function(bool state)? toggleShuffle,
    TResult? Function(String state)? setRepeatMode,
    TResult? Function(String uri)? playTrack,
  }) {
    return seek?.call(positionMs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaybackState,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function(int positionMs)? seek,
    TResult Function(int volumePercent)? setVolume,
    TResult Function(bool state)? toggleShuffle,
    TResult Function(String state)? setRepeatMode,
    TResult Function(String uri)? playTrack,
    required TResult orElse(),
  }) {
    if (seek != null) {
      return seek(positionMs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaybackState value) getPlaybackState,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Next value) next,
    required TResult Function(_Previous value) previous,
    required TResult Function(_Seek value) seek,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_ToggleShuffle value) toggleShuffle,
    required TResult Function(_SetRepeatMode value) setRepeatMode,
    required TResult Function(_PlayTrack value) playTrack,
  }) {
    return seek(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaybackState value)? getPlaybackState,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Next value)? next,
    TResult? Function(_Previous value)? previous,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_ToggleShuffle value)? toggleShuffle,
    TResult? Function(_SetRepeatMode value)? setRepeatMode,
    TResult? Function(_PlayTrack value)? playTrack,
  }) {
    return seek?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaybackState value)? getPlaybackState,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Next value)? next,
    TResult Function(_Previous value)? previous,
    TResult Function(_Seek value)? seek,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_ToggleShuffle value)? toggleShuffle,
    TResult Function(_SetRepeatMode value)? setRepeatMode,
    TResult Function(_PlayTrack value)? playTrack,
    required TResult orElse(),
  }) {
    if (seek != null) {
      return seek(this);
    }
    return orElse();
  }
}

abstract class _Seek implements PlayerEvent {
  const factory _Seek(final int positionMs) = _$SeekImpl;

  int get positionMs;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeekImplCopyWith<_$SeekImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetVolumeImplCopyWith<$Res> {
  factory _$$SetVolumeImplCopyWith(
          _$SetVolumeImpl value, $Res Function(_$SetVolumeImpl) then) =
      __$$SetVolumeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int volumePercent});
}

/// @nodoc
class __$$SetVolumeImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$SetVolumeImpl>
    implements _$$SetVolumeImplCopyWith<$Res> {
  __$$SetVolumeImplCopyWithImpl(
      _$SetVolumeImpl _value, $Res Function(_$SetVolumeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volumePercent = null,
  }) {
    return _then(_$SetVolumeImpl(
      null == volumePercent
          ? _value.volumePercent
          : volumePercent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetVolumeImpl implements _SetVolume {
  const _$SetVolumeImpl(this.volumePercent);

  @override
  final int volumePercent;

  @override
  String toString() {
    return 'PlayerEvent.setVolume(volumePercent: $volumePercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetVolumeImpl &&
            (identical(other.volumePercent, volumePercent) ||
                other.volumePercent == volumePercent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, volumePercent);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetVolumeImplCopyWith<_$SetVolumeImpl> get copyWith =>
      __$$SetVolumeImplCopyWithImpl<_$SetVolumeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaybackState,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function(int positionMs) seek,
    required TResult Function(int volumePercent) setVolume,
    required TResult Function(bool state) toggleShuffle,
    required TResult Function(String state) setRepeatMode,
    required TResult Function(String uri) playTrack,
  }) {
    return setVolume(volumePercent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaybackState,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function(int positionMs)? seek,
    TResult? Function(int volumePercent)? setVolume,
    TResult? Function(bool state)? toggleShuffle,
    TResult? Function(String state)? setRepeatMode,
    TResult? Function(String uri)? playTrack,
  }) {
    return setVolume?.call(volumePercent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaybackState,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function(int positionMs)? seek,
    TResult Function(int volumePercent)? setVolume,
    TResult Function(bool state)? toggleShuffle,
    TResult Function(String state)? setRepeatMode,
    TResult Function(String uri)? playTrack,
    required TResult orElse(),
  }) {
    if (setVolume != null) {
      return setVolume(volumePercent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaybackState value) getPlaybackState,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Next value) next,
    required TResult Function(_Previous value) previous,
    required TResult Function(_Seek value) seek,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_ToggleShuffle value) toggleShuffle,
    required TResult Function(_SetRepeatMode value) setRepeatMode,
    required TResult Function(_PlayTrack value) playTrack,
  }) {
    return setVolume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaybackState value)? getPlaybackState,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Next value)? next,
    TResult? Function(_Previous value)? previous,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_ToggleShuffle value)? toggleShuffle,
    TResult? Function(_SetRepeatMode value)? setRepeatMode,
    TResult? Function(_PlayTrack value)? playTrack,
  }) {
    return setVolume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaybackState value)? getPlaybackState,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Next value)? next,
    TResult Function(_Previous value)? previous,
    TResult Function(_Seek value)? seek,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_ToggleShuffle value)? toggleShuffle,
    TResult Function(_SetRepeatMode value)? setRepeatMode,
    TResult Function(_PlayTrack value)? playTrack,
    required TResult orElse(),
  }) {
    if (setVolume != null) {
      return setVolume(this);
    }
    return orElse();
  }
}

abstract class _SetVolume implements PlayerEvent {
  const factory _SetVolume(final int volumePercent) = _$SetVolumeImpl;

  int get volumePercent;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetVolumeImplCopyWith<_$SetVolumeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleShuffleImplCopyWith<$Res> {
  factory _$$ToggleShuffleImplCopyWith(
          _$ToggleShuffleImpl value, $Res Function(_$ToggleShuffleImpl) then) =
      __$$ToggleShuffleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool state});
}

/// @nodoc
class __$$ToggleShuffleImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$ToggleShuffleImpl>
    implements _$$ToggleShuffleImplCopyWith<$Res> {
  __$$ToggleShuffleImplCopyWithImpl(
      _$ToggleShuffleImpl _value, $Res Function(_$ToggleShuffleImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$ToggleShuffleImpl(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleShuffleImpl implements _ToggleShuffle {
  const _$ToggleShuffleImpl(this.state);

  @override
  final bool state;

  @override
  String toString() {
    return 'PlayerEvent.toggleShuffle(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleShuffleImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleShuffleImplCopyWith<_$ToggleShuffleImpl> get copyWith =>
      __$$ToggleShuffleImplCopyWithImpl<_$ToggleShuffleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaybackState,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function(int positionMs) seek,
    required TResult Function(int volumePercent) setVolume,
    required TResult Function(bool state) toggleShuffle,
    required TResult Function(String state) setRepeatMode,
    required TResult Function(String uri) playTrack,
  }) {
    return toggleShuffle(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaybackState,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function(int positionMs)? seek,
    TResult? Function(int volumePercent)? setVolume,
    TResult? Function(bool state)? toggleShuffle,
    TResult? Function(String state)? setRepeatMode,
    TResult? Function(String uri)? playTrack,
  }) {
    return toggleShuffle?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaybackState,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function(int positionMs)? seek,
    TResult Function(int volumePercent)? setVolume,
    TResult Function(bool state)? toggleShuffle,
    TResult Function(String state)? setRepeatMode,
    TResult Function(String uri)? playTrack,
    required TResult orElse(),
  }) {
    if (toggleShuffle != null) {
      return toggleShuffle(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaybackState value) getPlaybackState,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Next value) next,
    required TResult Function(_Previous value) previous,
    required TResult Function(_Seek value) seek,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_ToggleShuffle value) toggleShuffle,
    required TResult Function(_SetRepeatMode value) setRepeatMode,
    required TResult Function(_PlayTrack value) playTrack,
  }) {
    return toggleShuffle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaybackState value)? getPlaybackState,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Next value)? next,
    TResult? Function(_Previous value)? previous,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_ToggleShuffle value)? toggleShuffle,
    TResult? Function(_SetRepeatMode value)? setRepeatMode,
    TResult? Function(_PlayTrack value)? playTrack,
  }) {
    return toggleShuffle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaybackState value)? getPlaybackState,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Next value)? next,
    TResult Function(_Previous value)? previous,
    TResult Function(_Seek value)? seek,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_ToggleShuffle value)? toggleShuffle,
    TResult Function(_SetRepeatMode value)? setRepeatMode,
    TResult Function(_PlayTrack value)? playTrack,
    required TResult orElse(),
  }) {
    if (toggleShuffle != null) {
      return toggleShuffle(this);
    }
    return orElse();
  }
}

abstract class _ToggleShuffle implements PlayerEvent {
  const factory _ToggleShuffle(final bool state) = _$ToggleShuffleImpl;

  bool get state;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleShuffleImplCopyWith<_$ToggleShuffleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetRepeatModeImplCopyWith<$Res> {
  factory _$$SetRepeatModeImplCopyWith(
          _$SetRepeatModeImpl value, $Res Function(_$SetRepeatModeImpl) then) =
      __$$SetRepeatModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String state});
}

/// @nodoc
class __$$SetRepeatModeImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$SetRepeatModeImpl>
    implements _$$SetRepeatModeImplCopyWith<$Res> {
  __$$SetRepeatModeImplCopyWithImpl(
      _$SetRepeatModeImpl _value, $Res Function(_$SetRepeatModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$SetRepeatModeImpl(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetRepeatModeImpl implements _SetRepeatMode {
  const _$SetRepeatModeImpl(this.state);

  @override
  final String state;

  @override
  String toString() {
    return 'PlayerEvent.setRepeatMode(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetRepeatModeImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetRepeatModeImplCopyWith<_$SetRepeatModeImpl> get copyWith =>
      __$$SetRepeatModeImplCopyWithImpl<_$SetRepeatModeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaybackState,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function(int positionMs) seek,
    required TResult Function(int volumePercent) setVolume,
    required TResult Function(bool state) toggleShuffle,
    required TResult Function(String state) setRepeatMode,
    required TResult Function(String uri) playTrack,
  }) {
    return setRepeatMode(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaybackState,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function(int positionMs)? seek,
    TResult? Function(int volumePercent)? setVolume,
    TResult? Function(bool state)? toggleShuffle,
    TResult? Function(String state)? setRepeatMode,
    TResult? Function(String uri)? playTrack,
  }) {
    return setRepeatMode?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaybackState,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function(int positionMs)? seek,
    TResult Function(int volumePercent)? setVolume,
    TResult Function(bool state)? toggleShuffle,
    TResult Function(String state)? setRepeatMode,
    TResult Function(String uri)? playTrack,
    required TResult orElse(),
  }) {
    if (setRepeatMode != null) {
      return setRepeatMode(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaybackState value) getPlaybackState,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Next value) next,
    required TResult Function(_Previous value) previous,
    required TResult Function(_Seek value) seek,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_ToggleShuffle value) toggleShuffle,
    required TResult Function(_SetRepeatMode value) setRepeatMode,
    required TResult Function(_PlayTrack value) playTrack,
  }) {
    return setRepeatMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaybackState value)? getPlaybackState,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Next value)? next,
    TResult? Function(_Previous value)? previous,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_ToggleShuffle value)? toggleShuffle,
    TResult? Function(_SetRepeatMode value)? setRepeatMode,
    TResult? Function(_PlayTrack value)? playTrack,
  }) {
    return setRepeatMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaybackState value)? getPlaybackState,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Next value)? next,
    TResult Function(_Previous value)? previous,
    TResult Function(_Seek value)? seek,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_ToggleShuffle value)? toggleShuffle,
    TResult Function(_SetRepeatMode value)? setRepeatMode,
    TResult Function(_PlayTrack value)? playTrack,
    required TResult orElse(),
  }) {
    if (setRepeatMode != null) {
      return setRepeatMode(this);
    }
    return orElse();
  }
}

abstract class _SetRepeatMode implements PlayerEvent {
  const factory _SetRepeatMode(final String state) = _$SetRepeatModeImpl;

  String get state;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetRepeatModeImplCopyWith<_$SetRepeatModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayTrackImplCopyWith<$Res> {
  factory _$$PlayTrackImplCopyWith(
          _$PlayTrackImpl value, $Res Function(_$PlayTrackImpl) then) =
      __$$PlayTrackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uri});
}

/// @nodoc
class __$$PlayTrackImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PlayTrackImpl>
    implements _$$PlayTrackImplCopyWith<$Res> {
  __$$PlayTrackImplCopyWithImpl(
      _$PlayTrackImpl _value, $Res Function(_$PlayTrackImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
  }) {
    return _then(_$PlayTrackImpl(
      null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayTrackImpl implements _PlayTrack {
  const _$PlayTrackImpl(this.uri);

  @override
  final String uri;

  @override
  String toString() {
    return 'PlayerEvent.playTrack(uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayTrackImpl &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayTrackImplCopyWith<_$PlayTrackImpl> get copyWith =>
      __$$PlayTrackImplCopyWithImpl<_$PlayTrackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaybackState,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function(int positionMs) seek,
    required TResult Function(int volumePercent) setVolume,
    required TResult Function(bool state) toggleShuffle,
    required TResult Function(String state) setRepeatMode,
    required TResult Function(String uri) playTrack,
  }) {
    return playTrack(uri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaybackState,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function(int positionMs)? seek,
    TResult? Function(int volumePercent)? setVolume,
    TResult? Function(bool state)? toggleShuffle,
    TResult? Function(String state)? setRepeatMode,
    TResult? Function(String uri)? playTrack,
  }) {
    return playTrack?.call(uri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaybackState,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function(int positionMs)? seek,
    TResult Function(int volumePercent)? setVolume,
    TResult Function(bool state)? toggleShuffle,
    TResult Function(String state)? setRepeatMode,
    TResult Function(String uri)? playTrack,
    required TResult orElse(),
  }) {
    if (playTrack != null) {
      return playTrack(uri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaybackState value) getPlaybackState,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Next value) next,
    required TResult Function(_Previous value) previous,
    required TResult Function(_Seek value) seek,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_ToggleShuffle value) toggleShuffle,
    required TResult Function(_SetRepeatMode value) setRepeatMode,
    required TResult Function(_PlayTrack value) playTrack,
  }) {
    return playTrack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaybackState value)? getPlaybackState,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Next value)? next,
    TResult? Function(_Previous value)? previous,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_ToggleShuffle value)? toggleShuffle,
    TResult? Function(_SetRepeatMode value)? setRepeatMode,
    TResult? Function(_PlayTrack value)? playTrack,
  }) {
    return playTrack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaybackState value)? getPlaybackState,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_Next value)? next,
    TResult Function(_Previous value)? previous,
    TResult Function(_Seek value)? seek,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_ToggleShuffle value)? toggleShuffle,
    TResult Function(_SetRepeatMode value)? setRepeatMode,
    TResult Function(_PlayTrack value)? playTrack,
    required TResult orElse(),
  }) {
    if (playTrack != null) {
      return playTrack(this);
    }
    return orElse();
  }
}

abstract class _PlayTrack implements PlayerEvent {
  const factory _PlayTrack(final String uri) = _$PlayTrackImpl;

  String get uri;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayTrackImplCopyWith<_$PlayTrackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayerState {
  PlaybackState? get playbackState => throw _privateConstructorUsedError;
  Status get statusGetPlaybackState => throw _privateConstructorUsedError;
  Status get statusPlay => throw _privateConstructorUsedError;
  Status get statusPause => throw _privateConstructorUsedError;
  Status get statusNext => throw _privateConstructorUsedError;
  Status get statusPrevious => throw _privateConstructorUsedError;
  Status get statusSeek => throw _privateConstructorUsedError;
  Status get statusSetVolume => throw _privateConstructorUsedError;
  Status get statusToggleShuffle => throw _privateConstructorUsedError;
  Status get statusSetRepeatMode => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerStateCopyWith<PlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res, PlayerState>;
  @useResult
  $Res call(
      {PlaybackState? playbackState,
      Status statusGetPlaybackState,
      Status statusPlay,
      Status statusPause,
      Status statusNext,
      Status statusPrevious,
      Status statusSeek,
      Status statusSetVolume,
      Status statusToggleShuffle,
      Status statusSetRepeatMode,
      bool isPlaying});

  $PlaybackStateCopyWith<$Res>? get playbackState;
  $StatusCopyWith<$Res> get statusGetPlaybackState;
  $StatusCopyWith<$Res> get statusPlay;
  $StatusCopyWith<$Res> get statusPause;
  $StatusCopyWith<$Res> get statusNext;
  $StatusCopyWith<$Res> get statusPrevious;
  $StatusCopyWith<$Res> get statusSeek;
  $StatusCopyWith<$Res> get statusSetVolume;
  $StatusCopyWith<$Res> get statusToggleShuffle;
  $StatusCopyWith<$Res> get statusSetRepeatMode;
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playbackState = freezed,
    Object? statusGetPlaybackState = null,
    Object? statusPlay = null,
    Object? statusPause = null,
    Object? statusNext = null,
    Object? statusPrevious = null,
    Object? statusSeek = null,
    Object? statusSetVolume = null,
    Object? statusToggleShuffle = null,
    Object? statusSetRepeatMode = null,
    Object? isPlaying = null,
  }) {
    return _then(_value.copyWith(
      playbackState: freezed == playbackState
          ? _value.playbackState
          : playbackState // ignore: cast_nullable_to_non_nullable
              as PlaybackState?,
      statusGetPlaybackState: null == statusGetPlaybackState
          ? _value.statusGetPlaybackState
          : statusGetPlaybackState // ignore: cast_nullable_to_non_nullable
              as Status,
      statusPlay: null == statusPlay
          ? _value.statusPlay
          : statusPlay // ignore: cast_nullable_to_non_nullable
              as Status,
      statusPause: null == statusPause
          ? _value.statusPause
          : statusPause // ignore: cast_nullable_to_non_nullable
              as Status,
      statusNext: null == statusNext
          ? _value.statusNext
          : statusNext // ignore: cast_nullable_to_non_nullable
              as Status,
      statusPrevious: null == statusPrevious
          ? _value.statusPrevious
          : statusPrevious // ignore: cast_nullable_to_non_nullable
              as Status,
      statusSeek: null == statusSeek
          ? _value.statusSeek
          : statusSeek // ignore: cast_nullable_to_non_nullable
              as Status,
      statusSetVolume: null == statusSetVolume
          ? _value.statusSetVolume
          : statusSetVolume // ignore: cast_nullable_to_non_nullable
              as Status,
      statusToggleShuffle: null == statusToggleShuffle
          ? _value.statusToggleShuffle
          : statusToggleShuffle // ignore: cast_nullable_to_non_nullable
              as Status,
      statusSetRepeatMode: null == statusSetRepeatMode
          ? _value.statusSetRepeatMode
          : statusSetRepeatMode // ignore: cast_nullable_to_non_nullable
              as Status,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaybackStateCopyWith<$Res>? get playbackState {
    if (_value.playbackState == null) {
      return null;
    }

    return $PlaybackStateCopyWith<$Res>(_value.playbackState!, (value) {
      return _then(_value.copyWith(playbackState: value) as $Val);
    });
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusGetPlaybackState {
    return $StatusCopyWith<$Res>(_value.statusGetPlaybackState, (value) {
      return _then(_value.copyWith(statusGetPlaybackState: value) as $Val);
    });
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusPlay {
    return $StatusCopyWith<$Res>(_value.statusPlay, (value) {
      return _then(_value.copyWith(statusPlay: value) as $Val);
    });
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusPause {
    return $StatusCopyWith<$Res>(_value.statusPause, (value) {
      return _then(_value.copyWith(statusPause: value) as $Val);
    });
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusNext {
    return $StatusCopyWith<$Res>(_value.statusNext, (value) {
      return _then(_value.copyWith(statusNext: value) as $Val);
    });
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusPrevious {
    return $StatusCopyWith<$Res>(_value.statusPrevious, (value) {
      return _then(_value.copyWith(statusPrevious: value) as $Val);
    });
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusSeek {
    return $StatusCopyWith<$Res>(_value.statusSeek, (value) {
      return _then(_value.copyWith(statusSeek: value) as $Val);
    });
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusSetVolume {
    return $StatusCopyWith<$Res>(_value.statusSetVolume, (value) {
      return _then(_value.copyWith(statusSetVolume: value) as $Val);
    });
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusToggleShuffle {
    return $StatusCopyWith<$Res>(_value.statusToggleShuffle, (value) {
      return _then(_value.copyWith(statusToggleShuffle: value) as $Val);
    });
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusSetRepeatMode {
    return $StatusCopyWith<$Res>(_value.statusSetRepeatMode, (value) {
      return _then(_value.copyWith(statusSetRepeatMode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerStateImplCopyWith<$Res>
    implements $PlayerStateCopyWith<$Res> {
  factory _$$PlayerStateImplCopyWith(
          _$PlayerStateImpl value, $Res Function(_$PlayerStateImpl) then) =
      __$$PlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlaybackState? playbackState,
      Status statusGetPlaybackState,
      Status statusPlay,
      Status statusPause,
      Status statusNext,
      Status statusPrevious,
      Status statusSeek,
      Status statusSetVolume,
      Status statusToggleShuffle,
      Status statusSetRepeatMode,
      bool isPlaying});

  @override
  $PlaybackStateCopyWith<$Res>? get playbackState;
  @override
  $StatusCopyWith<$Res> get statusGetPlaybackState;
  @override
  $StatusCopyWith<$Res> get statusPlay;
  @override
  $StatusCopyWith<$Res> get statusPause;
  @override
  $StatusCopyWith<$Res> get statusNext;
  @override
  $StatusCopyWith<$Res> get statusPrevious;
  @override
  $StatusCopyWith<$Res> get statusSeek;
  @override
  $StatusCopyWith<$Res> get statusSetVolume;
  @override
  $StatusCopyWith<$Res> get statusToggleShuffle;
  @override
  $StatusCopyWith<$Res> get statusSetRepeatMode;
}

/// @nodoc
class __$$PlayerStateImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerStateImpl>
    implements _$$PlayerStateImplCopyWith<$Res> {
  __$$PlayerStateImplCopyWithImpl(
      _$PlayerStateImpl _value, $Res Function(_$PlayerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playbackState = freezed,
    Object? statusGetPlaybackState = null,
    Object? statusPlay = null,
    Object? statusPause = null,
    Object? statusNext = null,
    Object? statusPrevious = null,
    Object? statusSeek = null,
    Object? statusSetVolume = null,
    Object? statusToggleShuffle = null,
    Object? statusSetRepeatMode = null,
    Object? isPlaying = null,
  }) {
    return _then(_$PlayerStateImpl(
      playbackState: freezed == playbackState
          ? _value.playbackState
          : playbackState // ignore: cast_nullable_to_non_nullable
              as PlaybackState?,
      statusGetPlaybackState: null == statusGetPlaybackState
          ? _value.statusGetPlaybackState
          : statusGetPlaybackState // ignore: cast_nullable_to_non_nullable
              as Status,
      statusPlay: null == statusPlay
          ? _value.statusPlay
          : statusPlay // ignore: cast_nullable_to_non_nullable
              as Status,
      statusPause: null == statusPause
          ? _value.statusPause
          : statusPause // ignore: cast_nullable_to_non_nullable
              as Status,
      statusNext: null == statusNext
          ? _value.statusNext
          : statusNext // ignore: cast_nullable_to_non_nullable
              as Status,
      statusPrevious: null == statusPrevious
          ? _value.statusPrevious
          : statusPrevious // ignore: cast_nullable_to_non_nullable
              as Status,
      statusSeek: null == statusSeek
          ? _value.statusSeek
          : statusSeek // ignore: cast_nullable_to_non_nullable
              as Status,
      statusSetVolume: null == statusSetVolume
          ? _value.statusSetVolume
          : statusSetVolume // ignore: cast_nullable_to_non_nullable
              as Status,
      statusToggleShuffle: null == statusToggleShuffle
          ? _value.statusToggleShuffle
          : statusToggleShuffle // ignore: cast_nullable_to_non_nullable
              as Status,
      statusSetRepeatMode: null == statusSetRepeatMode
          ? _value.statusSetRepeatMode
          : statusSetRepeatMode // ignore: cast_nullable_to_non_nullable
              as Status,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlayerStateImpl implements _PlayerState {
  const _$PlayerStateImpl(
      {this.playbackState,
      this.statusGetPlaybackState = const Status.idle(),
      this.statusPlay = const Status.idle(),
      this.statusPause = const Status.idle(),
      this.statusNext = const Status.idle(),
      this.statusPrevious = const Status.idle(),
      this.statusSeek = const Status.idle(),
      this.statusSetVolume = const Status.idle(),
      this.statusToggleShuffle = const Status.idle(),
      this.statusSetRepeatMode = const Status.idle(),
      this.isPlaying = false});

  @override
  final PlaybackState? playbackState;
  @override
  @JsonKey()
  final Status statusGetPlaybackState;
  @override
  @JsonKey()
  final Status statusPlay;
  @override
  @JsonKey()
  final Status statusPause;
  @override
  @JsonKey()
  final Status statusNext;
  @override
  @JsonKey()
  final Status statusPrevious;
  @override
  @JsonKey()
  final Status statusSeek;
  @override
  @JsonKey()
  final Status statusSetVolume;
  @override
  @JsonKey()
  final Status statusToggleShuffle;
  @override
  @JsonKey()
  final Status statusSetRepeatMode;
  @override
  @JsonKey()
  final bool isPlaying;

  @override
  String toString() {
    return 'PlayerState(playbackState: $playbackState, statusGetPlaybackState: $statusGetPlaybackState, statusPlay: $statusPlay, statusPause: $statusPause, statusNext: $statusNext, statusPrevious: $statusPrevious, statusSeek: $statusSeek, statusSetVolume: $statusSetVolume, statusToggleShuffle: $statusToggleShuffle, statusSetRepeatMode: $statusSetRepeatMode, isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateImpl &&
            (identical(other.playbackState, playbackState) ||
                other.playbackState == playbackState) &&
            (identical(other.statusGetPlaybackState, statusGetPlaybackState) ||
                other.statusGetPlaybackState == statusGetPlaybackState) &&
            (identical(other.statusPlay, statusPlay) ||
                other.statusPlay == statusPlay) &&
            (identical(other.statusPause, statusPause) ||
                other.statusPause == statusPause) &&
            (identical(other.statusNext, statusNext) ||
                other.statusNext == statusNext) &&
            (identical(other.statusPrevious, statusPrevious) ||
                other.statusPrevious == statusPrevious) &&
            (identical(other.statusSeek, statusSeek) ||
                other.statusSeek == statusSeek) &&
            (identical(other.statusSetVolume, statusSetVolume) ||
                other.statusSetVolume == statusSetVolume) &&
            (identical(other.statusToggleShuffle, statusToggleShuffle) ||
                other.statusToggleShuffle == statusToggleShuffle) &&
            (identical(other.statusSetRepeatMode, statusSetRepeatMode) ||
                other.statusSetRepeatMode == statusSetRepeatMode) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      playbackState,
      statusGetPlaybackState,
      statusPlay,
      statusPause,
      statusNext,
      statusPrevious,
      statusSeek,
      statusSetVolume,
      statusToggleShuffle,
      statusSetRepeatMode,
      isPlaying);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      __$$PlayerStateImplCopyWithImpl<_$PlayerStateImpl>(this, _$identity);
}

abstract class _PlayerState implements PlayerState {
  const factory _PlayerState(
      {final PlaybackState? playbackState,
      final Status statusGetPlaybackState,
      final Status statusPlay,
      final Status statusPause,
      final Status statusNext,
      final Status statusPrevious,
      final Status statusSeek,
      final Status statusSetVolume,
      final Status statusToggleShuffle,
      final Status statusSetRepeatMode,
      final bool isPlaying}) = _$PlayerStateImpl;

  @override
  PlaybackState? get playbackState;
  @override
  Status get statusGetPlaybackState;
  @override
  Status get statusPlay;
  @override
  Status get statusPause;
  @override
  Status get statusNext;
  @override
  Status get statusPrevious;
  @override
  Status get statusSeek;
  @override
  Status get statusSetVolume;
  @override
  Status get statusToggleShuffle;
  @override
  Status get statusSetRepeatMode;
  @override
  bool get isPlaying;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
