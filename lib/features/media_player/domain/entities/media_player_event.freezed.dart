// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_player_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MediaPlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String trackUrl, String title, String artist, String imageUrl)
        loadTrack,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function(Duration position) seek,
    required TResult Function() toggleShuffle,
    required TResult Function() toggleLoop,
    required TResult Function() stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function(Duration position)? seek,
    TResult? Function()? toggleShuffle,
    TResult? Function()? toggleLoop,
    TResult? Function()? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function(Duration position)? seek,
    TResult Function()? toggleShuffle,
    TResult Function()? toggleLoop,
    TResult Function()? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTrack value) loadTrack,
    required TResult Function(Play value) play,
    required TResult Function(Pause value) pause,
    required TResult Function(Seek value) seek,
    required TResult Function(ToggleShuffle value) toggleShuffle,
    required TResult Function(ToggleLoop value) toggleLoop,
    required TResult Function(Stop value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTrack value)? loadTrack,
    TResult? Function(Play value)? play,
    TResult? Function(Pause value)? pause,
    TResult? Function(Seek value)? seek,
    TResult? Function(ToggleShuffle value)? toggleShuffle,
    TResult? Function(ToggleLoop value)? toggleLoop,
    TResult? Function(Stop value)? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTrack value)? loadTrack,
    TResult Function(Play value)? play,
    TResult Function(Pause value)? pause,
    TResult Function(Seek value)? seek,
    TResult Function(ToggleShuffle value)? toggleShuffle,
    TResult Function(ToggleLoop value)? toggleLoop,
    TResult Function(Stop value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaPlayerEventCopyWith<$Res> {
  factory $MediaPlayerEventCopyWith(
          MediaPlayerEvent value, $Res Function(MediaPlayerEvent) then) =
      _$MediaPlayerEventCopyWithImpl<$Res, MediaPlayerEvent>;
}

/// @nodoc
class _$MediaPlayerEventCopyWithImpl<$Res, $Val extends MediaPlayerEvent>
    implements $MediaPlayerEventCopyWith<$Res> {
  _$MediaPlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadTrackImplCopyWith<$Res> {
  factory _$$LoadTrackImplCopyWith(
          _$LoadTrackImpl value, $Res Function(_$LoadTrackImpl) then) =
      __$$LoadTrackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String trackUrl, String title, String artist, String imageUrl});
}

/// @nodoc
class __$$LoadTrackImplCopyWithImpl<$Res>
    extends _$MediaPlayerEventCopyWithImpl<$Res, _$LoadTrackImpl>
    implements _$$LoadTrackImplCopyWith<$Res> {
  __$$LoadTrackImplCopyWithImpl(
      _$LoadTrackImpl _value, $Res Function(_$LoadTrackImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackUrl = null,
    Object? title = null,
    Object? artist = null,
    Object? imageUrl = null,
  }) {
    return _then(_$LoadTrackImpl(
      trackUrl: null == trackUrl
          ? _value.trackUrl
          : trackUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadTrackImpl implements LoadTrack {
  const _$LoadTrackImpl(
      {required this.trackUrl,
      required this.title,
      required this.artist,
      required this.imageUrl});

  @override
  final String trackUrl;
  @override
  final String title;
  @override
  final String artist;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'MediaPlayerEvent.loadTrack(trackUrl: $trackUrl, title: $title, artist: $artist, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTrackImpl &&
            (identical(other.trackUrl, trackUrl) ||
                other.trackUrl == trackUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, trackUrl, title, artist, imageUrl);

  /// Create a copy of MediaPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTrackImplCopyWith<_$LoadTrackImpl> get copyWith =>
      __$$LoadTrackImplCopyWithImpl<_$LoadTrackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String trackUrl, String title, String artist, String imageUrl)
        loadTrack,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function(Duration position) seek,
    required TResult Function() toggleShuffle,
    required TResult Function() toggleLoop,
    required TResult Function() stop,
  }) {
    return loadTrack(trackUrl, title, artist, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function(Duration position)? seek,
    TResult? Function()? toggleShuffle,
    TResult? Function()? toggleLoop,
    TResult? Function()? stop,
  }) {
    return loadTrack?.call(trackUrl, title, artist, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function(Duration position)? seek,
    TResult Function()? toggleShuffle,
    TResult Function()? toggleLoop,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (loadTrack != null) {
      return loadTrack(trackUrl, title, artist, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTrack value) loadTrack,
    required TResult Function(Play value) play,
    required TResult Function(Pause value) pause,
    required TResult Function(Seek value) seek,
    required TResult Function(ToggleShuffle value) toggleShuffle,
    required TResult Function(ToggleLoop value) toggleLoop,
    required TResult Function(Stop value) stop,
  }) {
    return loadTrack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTrack value)? loadTrack,
    TResult? Function(Play value)? play,
    TResult? Function(Pause value)? pause,
    TResult? Function(Seek value)? seek,
    TResult? Function(ToggleShuffle value)? toggleShuffle,
    TResult? Function(ToggleLoop value)? toggleLoop,
    TResult? Function(Stop value)? stop,
  }) {
    return loadTrack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTrack value)? loadTrack,
    TResult Function(Play value)? play,
    TResult Function(Pause value)? pause,
    TResult Function(Seek value)? seek,
    TResult Function(ToggleShuffle value)? toggleShuffle,
    TResult Function(ToggleLoop value)? toggleLoop,
    TResult Function(Stop value)? stop,
    required TResult orElse(),
  }) {
    if (loadTrack != null) {
      return loadTrack(this);
    }
    return orElse();
  }
}

abstract class LoadTrack implements MediaPlayerEvent {
  const factory LoadTrack(
      {required final String trackUrl,
      required final String title,
      required final String artist,
      required final String imageUrl}) = _$LoadTrackImpl;

  String get trackUrl;
  String get title;
  String get artist;
  String get imageUrl;

  /// Create a copy of MediaPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTrackImplCopyWith<_$LoadTrackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayImplCopyWith<$Res> {
  factory _$$PlayImplCopyWith(
          _$PlayImpl value, $Res Function(_$PlayImpl) then) =
      __$$PlayImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayImplCopyWithImpl<$Res>
    extends _$MediaPlayerEventCopyWithImpl<$Res, _$PlayImpl>
    implements _$$PlayImplCopyWith<$Res> {
  __$$PlayImplCopyWithImpl(_$PlayImpl _value, $Res Function(_$PlayImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlayImpl implements Play {
  const _$PlayImpl();

  @override
  String toString() {
    return 'MediaPlayerEvent.play()';
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
    required TResult Function(
            String trackUrl, String title, String artist, String imageUrl)
        loadTrack,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function(Duration position) seek,
    required TResult Function() toggleShuffle,
    required TResult Function() toggleLoop,
    required TResult Function() stop,
  }) {
    return play();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function(Duration position)? seek,
    TResult? Function()? toggleShuffle,
    TResult? Function()? toggleLoop,
    TResult? Function()? stop,
  }) {
    return play?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function(Duration position)? seek,
    TResult Function()? toggleShuffle,
    TResult Function()? toggleLoop,
    TResult Function()? stop,
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
    required TResult Function(LoadTrack value) loadTrack,
    required TResult Function(Play value) play,
    required TResult Function(Pause value) pause,
    required TResult Function(Seek value) seek,
    required TResult Function(ToggleShuffle value) toggleShuffle,
    required TResult Function(ToggleLoop value) toggleLoop,
    required TResult Function(Stop value) stop,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTrack value)? loadTrack,
    TResult? Function(Play value)? play,
    TResult? Function(Pause value)? pause,
    TResult? Function(Seek value)? seek,
    TResult? Function(ToggleShuffle value)? toggleShuffle,
    TResult? Function(ToggleLoop value)? toggleLoop,
    TResult? Function(Stop value)? stop,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTrack value)? loadTrack,
    TResult Function(Play value)? play,
    TResult Function(Pause value)? pause,
    TResult Function(Seek value)? seek,
    TResult Function(ToggleShuffle value)? toggleShuffle,
    TResult Function(ToggleLoop value)? toggleLoop,
    TResult Function(Stop value)? stop,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class Play implements MediaPlayerEvent {
  const factory Play() = _$PlayImpl;
}

/// @nodoc
abstract class _$$PauseImplCopyWith<$Res> {
  factory _$$PauseImplCopyWith(
          _$PauseImpl value, $Res Function(_$PauseImpl) then) =
      __$$PauseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseImplCopyWithImpl<$Res>
    extends _$MediaPlayerEventCopyWithImpl<$Res, _$PauseImpl>
    implements _$$PauseImplCopyWith<$Res> {
  __$$PauseImplCopyWithImpl(
      _$PauseImpl _value, $Res Function(_$PauseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PauseImpl implements Pause {
  const _$PauseImpl();

  @override
  String toString() {
    return 'MediaPlayerEvent.pause()';
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
    required TResult Function(
            String trackUrl, String title, String artist, String imageUrl)
        loadTrack,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function(Duration position) seek,
    required TResult Function() toggleShuffle,
    required TResult Function() toggleLoop,
    required TResult Function() stop,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function(Duration position)? seek,
    TResult? Function()? toggleShuffle,
    TResult? Function()? toggleLoop,
    TResult? Function()? stop,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function(Duration position)? seek,
    TResult Function()? toggleShuffle,
    TResult Function()? toggleLoop,
    TResult Function()? stop,
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
    required TResult Function(LoadTrack value) loadTrack,
    required TResult Function(Play value) play,
    required TResult Function(Pause value) pause,
    required TResult Function(Seek value) seek,
    required TResult Function(ToggleShuffle value) toggleShuffle,
    required TResult Function(ToggleLoop value) toggleLoop,
    required TResult Function(Stop value) stop,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTrack value)? loadTrack,
    TResult? Function(Play value)? play,
    TResult? Function(Pause value)? pause,
    TResult? Function(Seek value)? seek,
    TResult? Function(ToggleShuffle value)? toggleShuffle,
    TResult? Function(ToggleLoop value)? toggleLoop,
    TResult? Function(Stop value)? stop,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTrack value)? loadTrack,
    TResult Function(Play value)? play,
    TResult Function(Pause value)? pause,
    TResult Function(Seek value)? seek,
    TResult Function(ToggleShuffle value)? toggleShuffle,
    TResult Function(ToggleLoop value)? toggleLoop,
    TResult Function(Stop value)? stop,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class Pause implements MediaPlayerEvent {
  const factory Pause() = _$PauseImpl;
}

/// @nodoc
abstract class _$$SeekImplCopyWith<$Res> {
  factory _$$SeekImplCopyWith(
          _$SeekImpl value, $Res Function(_$SeekImpl) then) =
      __$$SeekImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration position});
}

/// @nodoc
class __$$SeekImplCopyWithImpl<$Res>
    extends _$MediaPlayerEventCopyWithImpl<$Res, _$SeekImpl>
    implements _$$SeekImplCopyWith<$Res> {
  __$$SeekImplCopyWithImpl(_$SeekImpl _value, $Res Function(_$SeekImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$SeekImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$SeekImpl implements Seek {
  const _$SeekImpl(this.position);

  @override
  final Duration position;

  @override
  String toString() {
    return 'MediaPlayerEvent.seek(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeekImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of MediaPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeekImplCopyWith<_$SeekImpl> get copyWith =>
      __$$SeekImplCopyWithImpl<_$SeekImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String trackUrl, String title, String artist, String imageUrl)
        loadTrack,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function(Duration position) seek,
    required TResult Function() toggleShuffle,
    required TResult Function() toggleLoop,
    required TResult Function() stop,
  }) {
    return seek(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function(Duration position)? seek,
    TResult? Function()? toggleShuffle,
    TResult? Function()? toggleLoop,
    TResult? Function()? stop,
  }) {
    return seek?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function(Duration position)? seek,
    TResult Function()? toggleShuffle,
    TResult Function()? toggleLoop,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (seek != null) {
      return seek(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTrack value) loadTrack,
    required TResult Function(Play value) play,
    required TResult Function(Pause value) pause,
    required TResult Function(Seek value) seek,
    required TResult Function(ToggleShuffle value) toggleShuffle,
    required TResult Function(ToggleLoop value) toggleLoop,
    required TResult Function(Stop value) stop,
  }) {
    return seek(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTrack value)? loadTrack,
    TResult? Function(Play value)? play,
    TResult? Function(Pause value)? pause,
    TResult? Function(Seek value)? seek,
    TResult? Function(ToggleShuffle value)? toggleShuffle,
    TResult? Function(ToggleLoop value)? toggleLoop,
    TResult? Function(Stop value)? stop,
  }) {
    return seek?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTrack value)? loadTrack,
    TResult Function(Play value)? play,
    TResult Function(Pause value)? pause,
    TResult Function(Seek value)? seek,
    TResult Function(ToggleShuffle value)? toggleShuffle,
    TResult Function(ToggleLoop value)? toggleLoop,
    TResult Function(Stop value)? stop,
    required TResult orElse(),
  }) {
    if (seek != null) {
      return seek(this);
    }
    return orElse();
  }
}

abstract class Seek implements MediaPlayerEvent {
  const factory Seek(final Duration position) = _$SeekImpl;

  Duration get position;

  /// Create a copy of MediaPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeekImplCopyWith<_$SeekImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleShuffleImplCopyWith<$Res> {
  factory _$$ToggleShuffleImplCopyWith(
          _$ToggleShuffleImpl value, $Res Function(_$ToggleShuffleImpl) then) =
      __$$ToggleShuffleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleShuffleImplCopyWithImpl<$Res>
    extends _$MediaPlayerEventCopyWithImpl<$Res, _$ToggleShuffleImpl>
    implements _$$ToggleShuffleImplCopyWith<$Res> {
  __$$ToggleShuffleImplCopyWithImpl(
      _$ToggleShuffleImpl _value, $Res Function(_$ToggleShuffleImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleShuffleImpl implements ToggleShuffle {
  const _$ToggleShuffleImpl();

  @override
  String toString() {
    return 'MediaPlayerEvent.toggleShuffle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleShuffleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String trackUrl, String title, String artist, String imageUrl)
        loadTrack,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function(Duration position) seek,
    required TResult Function() toggleShuffle,
    required TResult Function() toggleLoop,
    required TResult Function() stop,
  }) {
    return toggleShuffle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function(Duration position)? seek,
    TResult? Function()? toggleShuffle,
    TResult? Function()? toggleLoop,
    TResult? Function()? stop,
  }) {
    return toggleShuffle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function(Duration position)? seek,
    TResult Function()? toggleShuffle,
    TResult Function()? toggleLoop,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (toggleShuffle != null) {
      return toggleShuffle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTrack value) loadTrack,
    required TResult Function(Play value) play,
    required TResult Function(Pause value) pause,
    required TResult Function(Seek value) seek,
    required TResult Function(ToggleShuffle value) toggleShuffle,
    required TResult Function(ToggleLoop value) toggleLoop,
    required TResult Function(Stop value) stop,
  }) {
    return toggleShuffle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTrack value)? loadTrack,
    TResult? Function(Play value)? play,
    TResult? Function(Pause value)? pause,
    TResult? Function(Seek value)? seek,
    TResult? Function(ToggleShuffle value)? toggleShuffle,
    TResult? Function(ToggleLoop value)? toggleLoop,
    TResult? Function(Stop value)? stop,
  }) {
    return toggleShuffle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTrack value)? loadTrack,
    TResult Function(Play value)? play,
    TResult Function(Pause value)? pause,
    TResult Function(Seek value)? seek,
    TResult Function(ToggleShuffle value)? toggleShuffle,
    TResult Function(ToggleLoop value)? toggleLoop,
    TResult Function(Stop value)? stop,
    required TResult orElse(),
  }) {
    if (toggleShuffle != null) {
      return toggleShuffle(this);
    }
    return orElse();
  }
}

abstract class ToggleShuffle implements MediaPlayerEvent {
  const factory ToggleShuffle() = _$ToggleShuffleImpl;
}

/// @nodoc
abstract class _$$ToggleLoopImplCopyWith<$Res> {
  factory _$$ToggleLoopImplCopyWith(
          _$ToggleLoopImpl value, $Res Function(_$ToggleLoopImpl) then) =
      __$$ToggleLoopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleLoopImplCopyWithImpl<$Res>
    extends _$MediaPlayerEventCopyWithImpl<$Res, _$ToggleLoopImpl>
    implements _$$ToggleLoopImplCopyWith<$Res> {
  __$$ToggleLoopImplCopyWithImpl(
      _$ToggleLoopImpl _value, $Res Function(_$ToggleLoopImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleLoopImpl implements ToggleLoop {
  const _$ToggleLoopImpl();

  @override
  String toString() {
    return 'MediaPlayerEvent.toggleLoop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleLoopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String trackUrl, String title, String artist, String imageUrl)
        loadTrack,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function(Duration position) seek,
    required TResult Function() toggleShuffle,
    required TResult Function() toggleLoop,
    required TResult Function() stop,
  }) {
    return toggleLoop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function(Duration position)? seek,
    TResult? Function()? toggleShuffle,
    TResult? Function()? toggleLoop,
    TResult? Function()? stop,
  }) {
    return toggleLoop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function(Duration position)? seek,
    TResult Function()? toggleShuffle,
    TResult Function()? toggleLoop,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (toggleLoop != null) {
      return toggleLoop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTrack value) loadTrack,
    required TResult Function(Play value) play,
    required TResult Function(Pause value) pause,
    required TResult Function(Seek value) seek,
    required TResult Function(ToggleShuffle value) toggleShuffle,
    required TResult Function(ToggleLoop value) toggleLoop,
    required TResult Function(Stop value) stop,
  }) {
    return toggleLoop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTrack value)? loadTrack,
    TResult? Function(Play value)? play,
    TResult? Function(Pause value)? pause,
    TResult? Function(Seek value)? seek,
    TResult? Function(ToggleShuffle value)? toggleShuffle,
    TResult? Function(ToggleLoop value)? toggleLoop,
    TResult? Function(Stop value)? stop,
  }) {
    return toggleLoop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTrack value)? loadTrack,
    TResult Function(Play value)? play,
    TResult Function(Pause value)? pause,
    TResult Function(Seek value)? seek,
    TResult Function(ToggleShuffle value)? toggleShuffle,
    TResult Function(ToggleLoop value)? toggleLoop,
    TResult Function(Stop value)? stop,
    required TResult orElse(),
  }) {
    if (toggleLoop != null) {
      return toggleLoop(this);
    }
    return orElse();
  }
}

abstract class ToggleLoop implements MediaPlayerEvent {
  const factory ToggleLoop() = _$ToggleLoopImpl;
}

/// @nodoc
abstract class _$$StopImplCopyWith<$Res> {
  factory _$$StopImplCopyWith(
          _$StopImpl value, $Res Function(_$StopImpl) then) =
      __$$StopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopImplCopyWithImpl<$Res>
    extends _$MediaPlayerEventCopyWithImpl<$Res, _$StopImpl>
    implements _$$StopImplCopyWith<$Res> {
  __$$StopImplCopyWithImpl(_$StopImpl _value, $Res Function(_$StopImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopImpl implements Stop {
  const _$StopImpl();

  @override
  String toString() {
    return 'MediaPlayerEvent.stop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String trackUrl, String title, String artist, String imageUrl)
        loadTrack,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function(Duration position) seek,
    required TResult Function() toggleShuffle,
    required TResult Function() toggleLoop,
    required TResult Function() stop,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function(Duration position)? seek,
    TResult? Function()? toggleShuffle,
    TResult? Function()? toggleLoop,
    TResult? Function()? stop,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String trackUrl, String title, String artist, String imageUrl)?
        loadTrack,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function(Duration position)? seek,
    TResult Function()? toggleShuffle,
    TResult Function()? toggleLoop,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTrack value) loadTrack,
    required TResult Function(Play value) play,
    required TResult Function(Pause value) pause,
    required TResult Function(Seek value) seek,
    required TResult Function(ToggleShuffle value) toggleShuffle,
    required TResult Function(ToggleLoop value) toggleLoop,
    required TResult Function(Stop value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTrack value)? loadTrack,
    TResult? Function(Play value)? play,
    TResult? Function(Pause value)? pause,
    TResult? Function(Seek value)? seek,
    TResult? Function(ToggleShuffle value)? toggleShuffle,
    TResult? Function(ToggleLoop value)? toggleLoop,
    TResult? Function(Stop value)? stop,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTrack value)? loadTrack,
    TResult Function(Play value)? play,
    TResult Function(Pause value)? pause,
    TResult Function(Seek value)? seek,
    TResult Function(ToggleShuffle value)? toggleShuffle,
    TResult Function(ToggleLoop value)? toggleLoop,
    TResult Function(Stop value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class Stop implements MediaPlayerEvent {
  const factory Stop() = _$StopImpl;
}
