// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaylistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int offset, int limit, String userId)
        getUserPlaylists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int offset, int limit, String userId)? getUserPlaylists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int offset, int limit, String userId)? getUserPlaylists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUserPlaylists value) getUserPlaylists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUserPlaylists value)? getUserPlaylists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUserPlaylists value)? getUserPlaylists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistEventCopyWith<$Res> {
  factory $PlaylistEventCopyWith(
          PlaylistEvent value, $Res Function(PlaylistEvent) then) =
      _$PlaylistEventCopyWithImpl<$Res, PlaylistEvent>;
}

/// @nodoc
class _$PlaylistEventCopyWithImpl<$Res, $Val extends PlaylistEvent>
    implements $PlaylistEventCopyWith<$Res> {
  _$PlaylistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PlaylistEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int offset, int limit, String userId)
        getUserPlaylists,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int offset, int limit, String userId)? getUserPlaylists,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int offset, int limit, String userId)? getUserPlaylists,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUserPlaylists value) getUserPlaylists,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUserPlaylists value)? getUserPlaylists,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUserPlaylists value)? getUserPlaylists,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PlaylistEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetUserPlaylistsImplCopyWith<$Res> {
  factory _$$GetUserPlaylistsImplCopyWith(_$GetUserPlaylistsImpl value,
          $Res Function(_$GetUserPlaylistsImpl) then) =
      __$$GetUserPlaylistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int offset, int limit, String userId});
}

/// @nodoc
class __$$GetUserPlaylistsImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$GetUserPlaylistsImpl>
    implements _$$GetUserPlaylistsImplCopyWith<$Res> {
  __$$GetUserPlaylistsImplCopyWithImpl(_$GetUserPlaylistsImpl _value,
      $Res Function(_$GetUserPlaylistsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? userId = null,
  }) {
    return _then(_$GetUserPlaylistsImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserPlaylistsImpl implements _GetUserPlaylists {
  const _$GetUserPlaylistsImpl(
      {this.offset = 0, this.limit = 20, required this.userId});

  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final int limit;
  @override
  final String userId;

  @override
  String toString() {
    return 'PlaylistEvent.getUserPlaylists(offset: $offset, limit: $limit, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserPlaylistsImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, limit, userId);

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserPlaylistsImplCopyWith<_$GetUserPlaylistsImpl> get copyWith =>
      __$$GetUserPlaylistsImplCopyWithImpl<_$GetUserPlaylistsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int offset, int limit, String userId)
        getUserPlaylists,
  }) {
    return getUserPlaylists(offset, limit, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int offset, int limit, String userId)? getUserPlaylists,
  }) {
    return getUserPlaylists?.call(offset, limit, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int offset, int limit, String userId)? getUserPlaylists,
    required TResult orElse(),
  }) {
    if (getUserPlaylists != null) {
      return getUserPlaylists(offset, limit, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUserPlaylists value) getUserPlaylists,
  }) {
    return getUserPlaylists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUserPlaylists value)? getUserPlaylists,
  }) {
    return getUserPlaylists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUserPlaylists value)? getUserPlaylists,
    required TResult orElse(),
  }) {
    if (getUserPlaylists != null) {
      return getUserPlaylists(this);
    }
    return orElse();
  }
}

abstract class _GetUserPlaylists implements PlaylistEvent {
  const factory _GetUserPlaylists(
      {final int offset,
      final int limit,
      required final String userId}) = _$GetUserPlaylistsImpl;

  int get offset;
  int get limit;
  String get userId;

  /// Create a copy of PlaylistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserPlaylistsImplCopyWith<_$GetUserPlaylistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaylistState {
  List<Playlist> get userPlaylists => throw _privateConstructorUsedError;
  Status get statusLoadPlaylists => throw _privateConstructorUsedError;

  /// Create a copy of PlaylistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaylistStateCopyWith<PlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistStateCopyWith<$Res> {
  factory $PlaylistStateCopyWith(
          PlaylistState value, $Res Function(PlaylistState) then) =
      _$PlaylistStateCopyWithImpl<$Res, PlaylistState>;
  @useResult
  $Res call({List<Playlist> userPlaylists, Status statusLoadPlaylists});

  $StatusCopyWith<$Res> get statusLoadPlaylists;
}

/// @nodoc
class _$PlaylistStateCopyWithImpl<$Res, $Val extends PlaylistState>
    implements $PlaylistStateCopyWith<$Res> {
  _$PlaylistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaylistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPlaylists = null,
    Object? statusLoadPlaylists = null,
  }) {
    return _then(_value.copyWith(
      userPlaylists: null == userPlaylists
          ? _value.userPlaylists
          : userPlaylists // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
      statusLoadPlaylists: null == statusLoadPlaylists
          ? _value.statusLoadPlaylists
          : statusLoadPlaylists // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  /// Create a copy of PlaylistState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusLoadPlaylists {
    return $StatusCopyWith<$Res>(_value.statusLoadPlaylists, (value) {
      return _then(_value.copyWith(statusLoadPlaylists: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaylistStateImplCopyWith<$Res>
    implements $PlaylistStateCopyWith<$Res> {
  factory _$$PlaylistStateImplCopyWith(
          _$PlaylistStateImpl value, $Res Function(_$PlaylistStateImpl) then) =
      __$$PlaylistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Playlist> userPlaylists, Status statusLoadPlaylists});

  @override
  $StatusCopyWith<$Res> get statusLoadPlaylists;
}

/// @nodoc
class __$$PlaylistStateImplCopyWithImpl<$Res>
    extends _$PlaylistStateCopyWithImpl<$Res, _$PlaylistStateImpl>
    implements _$$PlaylistStateImplCopyWith<$Res> {
  __$$PlaylistStateImplCopyWithImpl(
      _$PlaylistStateImpl _value, $Res Function(_$PlaylistStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPlaylists = null,
    Object? statusLoadPlaylists = null,
  }) {
    return _then(_$PlaylistStateImpl(
      userPlaylists: null == userPlaylists
          ? _value._userPlaylists
          : userPlaylists // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
      statusLoadPlaylists: null == statusLoadPlaylists
          ? _value.statusLoadPlaylists
          : statusLoadPlaylists // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$PlaylistStateImpl implements _PlaylistState {
  const _$PlaylistStateImpl(
      {final List<Playlist> userPlaylists = const [],
      this.statusLoadPlaylists = const Status.idle()})
      : _userPlaylists = userPlaylists;

  final List<Playlist> _userPlaylists;
  @override
  @JsonKey()
  List<Playlist> get userPlaylists {
    if (_userPlaylists is EqualUnmodifiableListView) return _userPlaylists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userPlaylists);
  }

  @override
  @JsonKey()
  final Status statusLoadPlaylists;

  @override
  String toString() {
    return 'PlaylistState(userPlaylists: $userPlaylists, statusLoadPlaylists: $statusLoadPlaylists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistStateImpl &&
            const DeepCollectionEquality()
                .equals(other._userPlaylists, _userPlaylists) &&
            (identical(other.statusLoadPlaylists, statusLoadPlaylists) ||
                other.statusLoadPlaylists == statusLoadPlaylists));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_userPlaylists), statusLoadPlaylists);

  /// Create a copy of PlaylistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistStateImplCopyWith<_$PlaylistStateImpl> get copyWith =>
      __$$PlaylistStateImplCopyWithImpl<_$PlaylistStateImpl>(this, _$identity);
}

abstract class _PlaylistState implements PlaylistState {
  const factory _PlaylistState(
      {final List<Playlist> userPlaylists,
      final Status statusLoadPlaylists}) = _$PlaylistStateImpl;

  @override
  List<Playlist> get userPlaylists;
  @override
  Status get statusLoadPlaylists;

  /// Create a copy of PlaylistState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistStateImplCopyWith<_$PlaylistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
