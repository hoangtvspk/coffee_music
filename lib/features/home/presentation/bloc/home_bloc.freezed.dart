// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int offset, int limit) getNewReleases,
    required TResult Function(int offset, int limit, String userId)
        getUserPlaylists,
    required TResult Function(String ids) getTracks,
    required TResult Function(String message) homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int offset, int limit)? getNewReleases,
    TResult? Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult? Function(String ids)? getTracks,
    TResult? Function(String message)? homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int offset, int limit)? getNewReleases,
    TResult Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult Function(String ids)? getTracks,
    TResult Function(String message)? homeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetNewReleases value) getNewReleases,
    required TResult Function(_GetUserPlaylists value) getUserPlaylists,
    required TResult Function(_GetTracks value) getTracks,
    required TResult Function(_HomeError value) homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNewReleases value)? getNewReleases,
    TResult? Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult? Function(_GetTracks value)? getTracks,
    TResult? Function(_HomeError value)? homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNewReleases value)? getNewReleases,
    TResult Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult Function(_GetTracks value)? getTracks,
    TResult Function(_HomeError value)? homeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
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
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
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
    required TResult Function(int offset, int limit) getNewReleases,
    required TResult Function(int offset, int limit, String userId)
        getUserPlaylists,
    required TResult Function(String ids) getTracks,
    required TResult Function(String message) homeError,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int offset, int limit)? getNewReleases,
    TResult? Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult? Function(String ids)? getTracks,
    TResult? Function(String message)? homeError,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int offset, int limit)? getNewReleases,
    TResult Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult Function(String ids)? getTracks,
    TResult Function(String message)? homeError,
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
    required TResult Function(_GetNewReleases value) getNewReleases,
    required TResult Function(_GetUserPlaylists value) getUserPlaylists,
    required TResult Function(_GetTracks value) getTracks,
    required TResult Function(_HomeError value) homeError,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNewReleases value)? getNewReleases,
    TResult? Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult? Function(_GetTracks value)? getTracks,
    TResult? Function(_HomeError value)? homeError,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNewReleases value)? getNewReleases,
    TResult Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult Function(_GetTracks value)? getTracks,
    TResult Function(_HomeError value)? homeError,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetNewReleasesImplCopyWith<$Res> {
  factory _$$GetNewReleasesImplCopyWith(_$GetNewReleasesImpl value,
          $Res Function(_$GetNewReleasesImpl) then) =
      __$$GetNewReleasesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int offset, int limit});
}

/// @nodoc
class __$$GetNewReleasesImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetNewReleasesImpl>
    implements _$$GetNewReleasesImplCopyWith<$Res> {
  __$$GetNewReleasesImplCopyWithImpl(
      _$GetNewReleasesImpl _value, $Res Function(_$GetNewReleasesImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$GetNewReleasesImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetNewReleasesImpl implements _GetNewReleases {
  const _$GetNewReleasesImpl({this.offset = 0, this.limit = 20});

  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'HomeEvent.getNewReleases(offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNewReleasesImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, limit);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNewReleasesImplCopyWith<_$GetNewReleasesImpl> get copyWith =>
      __$$GetNewReleasesImplCopyWithImpl<_$GetNewReleasesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int offset, int limit) getNewReleases,
    required TResult Function(int offset, int limit, String userId)
        getUserPlaylists,
    required TResult Function(String ids) getTracks,
    required TResult Function(String message) homeError,
  }) {
    return getNewReleases(offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int offset, int limit)? getNewReleases,
    TResult? Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult? Function(String ids)? getTracks,
    TResult? Function(String message)? homeError,
  }) {
    return getNewReleases?.call(offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int offset, int limit)? getNewReleases,
    TResult Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult Function(String ids)? getTracks,
    TResult Function(String message)? homeError,
    required TResult orElse(),
  }) {
    if (getNewReleases != null) {
      return getNewReleases(offset, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetNewReleases value) getNewReleases,
    required TResult Function(_GetUserPlaylists value) getUserPlaylists,
    required TResult Function(_GetTracks value) getTracks,
    required TResult Function(_HomeError value) homeError,
  }) {
    return getNewReleases(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNewReleases value)? getNewReleases,
    TResult? Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult? Function(_GetTracks value)? getTracks,
    TResult? Function(_HomeError value)? homeError,
  }) {
    return getNewReleases?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNewReleases value)? getNewReleases,
    TResult Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult Function(_GetTracks value)? getTracks,
    TResult Function(_HomeError value)? homeError,
    required TResult orElse(),
  }) {
    if (getNewReleases != null) {
      return getNewReleases(this);
    }
    return orElse();
  }
}

abstract class _GetNewReleases implements HomeEvent {
  const factory _GetNewReleases({final int offset, final int limit}) =
      _$GetNewReleasesImpl;

  int get offset;
  int get limit;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNewReleasesImplCopyWith<_$GetNewReleasesImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$HomeEventCopyWithImpl<$Res, _$GetUserPlaylistsImpl>
    implements _$$GetUserPlaylistsImplCopyWith<$Res> {
  __$$GetUserPlaylistsImplCopyWithImpl(_$GetUserPlaylistsImpl _value,
      $Res Function(_$GetUserPlaylistsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
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
    return 'HomeEvent.getUserPlaylists(offset: $offset, limit: $limit, userId: $userId)';
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

  /// Create a copy of HomeEvent
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
    required TResult Function(int offset, int limit) getNewReleases,
    required TResult Function(int offset, int limit, String userId)
        getUserPlaylists,
    required TResult Function(String ids) getTracks,
    required TResult Function(String message) homeError,
  }) {
    return getUserPlaylists(offset, limit, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int offset, int limit)? getNewReleases,
    TResult? Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult? Function(String ids)? getTracks,
    TResult? Function(String message)? homeError,
  }) {
    return getUserPlaylists?.call(offset, limit, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int offset, int limit)? getNewReleases,
    TResult Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult Function(String ids)? getTracks,
    TResult Function(String message)? homeError,
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
    required TResult Function(_GetNewReleases value) getNewReleases,
    required TResult Function(_GetUserPlaylists value) getUserPlaylists,
    required TResult Function(_GetTracks value) getTracks,
    required TResult Function(_HomeError value) homeError,
  }) {
    return getUserPlaylists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNewReleases value)? getNewReleases,
    TResult? Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult? Function(_GetTracks value)? getTracks,
    TResult? Function(_HomeError value)? homeError,
  }) {
    return getUserPlaylists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNewReleases value)? getNewReleases,
    TResult Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult Function(_GetTracks value)? getTracks,
    TResult Function(_HomeError value)? homeError,
    required TResult orElse(),
  }) {
    if (getUserPlaylists != null) {
      return getUserPlaylists(this);
    }
    return orElse();
  }
}

abstract class _GetUserPlaylists implements HomeEvent {
  const factory _GetUserPlaylists(
      {final int offset,
      final int limit,
      required final String userId}) = _$GetUserPlaylistsImpl;

  int get offset;
  int get limit;
  String get userId;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserPlaylistsImplCopyWith<_$GetUserPlaylistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTracksImplCopyWith<$Res> {
  factory _$$GetTracksImplCopyWith(
          _$GetTracksImpl value, $Res Function(_$GetTracksImpl) then) =
      __$$GetTracksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ids});
}

/// @nodoc
class __$$GetTracksImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetTracksImpl>
    implements _$$GetTracksImplCopyWith<$Res> {
  __$$GetTracksImplCopyWithImpl(
      _$GetTracksImpl _value, $Res Function(_$GetTracksImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$GetTracksImpl(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTracksImpl implements _GetTracks {
  const _$GetTracksImpl({required this.ids});

  @override
  final String ids;

  @override
  String toString() {
    return 'HomeEvent.getTracks(ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTracksImpl &&
            (identical(other.ids, ids) || other.ids == ids));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ids);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTracksImplCopyWith<_$GetTracksImpl> get copyWith =>
      __$$GetTracksImplCopyWithImpl<_$GetTracksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int offset, int limit) getNewReleases,
    required TResult Function(int offset, int limit, String userId)
        getUserPlaylists,
    required TResult Function(String ids) getTracks,
    required TResult Function(String message) homeError,
  }) {
    return getTracks(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int offset, int limit)? getNewReleases,
    TResult? Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult? Function(String ids)? getTracks,
    TResult? Function(String message)? homeError,
  }) {
    return getTracks?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int offset, int limit)? getNewReleases,
    TResult Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult Function(String ids)? getTracks,
    TResult Function(String message)? homeError,
    required TResult orElse(),
  }) {
    if (getTracks != null) {
      return getTracks(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetNewReleases value) getNewReleases,
    required TResult Function(_GetUserPlaylists value) getUserPlaylists,
    required TResult Function(_GetTracks value) getTracks,
    required TResult Function(_HomeError value) homeError,
  }) {
    return getTracks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNewReleases value)? getNewReleases,
    TResult? Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult? Function(_GetTracks value)? getTracks,
    TResult? Function(_HomeError value)? homeError,
  }) {
    return getTracks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNewReleases value)? getNewReleases,
    TResult Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult Function(_GetTracks value)? getTracks,
    TResult Function(_HomeError value)? homeError,
    required TResult orElse(),
  }) {
    if (getTracks != null) {
      return getTracks(this);
    }
    return orElse();
  }
}

abstract class _GetTracks implements HomeEvent {
  const factory _GetTracks({required final String ids}) = _$GetTracksImpl;

  String get ids;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTracksImplCopyWith<_$GetTracksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeErrorImplCopyWith<$Res> {
  factory _$$HomeErrorImplCopyWith(
          _$HomeErrorImpl value, $Res Function(_$HomeErrorImpl) then) =
      __$$HomeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HomeErrorImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeErrorImpl>
    implements _$$HomeErrorImplCopyWith<$Res> {
  __$$HomeErrorImplCopyWithImpl(
      _$HomeErrorImpl _value, $Res Function(_$HomeErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HomeErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeErrorImpl implements _HomeError {
  const _$HomeErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeEvent.homeError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeErrorImplCopyWith<_$HomeErrorImpl> get copyWith =>
      __$$HomeErrorImplCopyWithImpl<_$HomeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int offset, int limit) getNewReleases,
    required TResult Function(int offset, int limit, String userId)
        getUserPlaylists,
    required TResult Function(String ids) getTracks,
    required TResult Function(String message) homeError,
  }) {
    return homeError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int offset, int limit)? getNewReleases,
    TResult? Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult? Function(String ids)? getTracks,
    TResult? Function(String message)? homeError,
  }) {
    return homeError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int offset, int limit)? getNewReleases,
    TResult Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult Function(String ids)? getTracks,
    TResult Function(String message)? homeError,
    required TResult orElse(),
  }) {
    if (homeError != null) {
      return homeError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetNewReleases value) getNewReleases,
    required TResult Function(_GetUserPlaylists value) getUserPlaylists,
    required TResult Function(_GetTracks value) getTracks,
    required TResult Function(_HomeError value) homeError,
  }) {
    return homeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNewReleases value)? getNewReleases,
    TResult? Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult? Function(_GetTracks value)? getTracks,
    TResult? Function(_HomeError value)? homeError,
  }) {
    return homeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNewReleases value)? getNewReleases,
    TResult Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult Function(_GetTracks value)? getTracks,
    TResult Function(_HomeError value)? homeError,
    required TResult orElse(),
  }) {
    if (homeError != null) {
      return homeError(this);
    }
    return orElse();
  }
}

abstract class _HomeError implements HomeEvent {
  const factory _HomeError(final String message) = _$HomeErrorImpl;

  String get message;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeErrorImplCopyWith<_$HomeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) homeError,
    required TResult Function(
            List<Album> newReleases, List<Playlist> userPlaylists, Track tracks)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? homeError,
    TResult? Function(List<Album> newReleases, List<Playlist> userPlaylists,
            Track tracks)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? homeError,
    TResult Function(List<Album> newReleases, List<Playlist> userPlaylists,
            Track tracks)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HomeStateError value) homeError,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HomeStateError value)? homeError,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HomeStateError value)? homeError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) homeError,
    required TResult Function(
            List<Album> newReleases, List<Playlist> userPlaylists, Track tracks)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? homeError,
    TResult? Function(List<Album> newReleases, List<Playlist> userPlaylists,
            Track tracks)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? homeError,
    TResult Function(List<Album> newReleases, List<Playlist> userPlaylists,
            Track tracks)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HomeStateError value) homeError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HomeStateError value)? homeError,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HomeStateError value)? homeError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) homeError,
    required TResult Function(
            List<Album> newReleases, List<Playlist> userPlaylists, Track tracks)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? homeError,
    TResult? Function(List<Album> newReleases, List<Playlist> userPlaylists,
            Track tracks)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? homeError,
    TResult Function(List<Album> newReleases, List<Playlist> userPlaylists,
            Track tracks)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HomeStateError value) homeError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HomeStateError value)? homeError,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HomeStateError value)? homeError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$HomeStateErrorImplCopyWith<$Res> {
  factory _$$HomeStateErrorImplCopyWith(_$HomeStateErrorImpl value,
          $Res Function(_$HomeStateErrorImpl) then) =
      __$$HomeStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HomeStateErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateErrorImpl>
    implements _$$HomeStateErrorImplCopyWith<$Res> {
  __$$HomeStateErrorImplCopyWithImpl(
      _$HomeStateErrorImpl _value, $Res Function(_$HomeStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HomeStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeStateErrorImpl implements _HomeStateError {
  const _$HomeStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.homeError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateErrorImplCopyWith<_$HomeStateErrorImpl> get copyWith =>
      __$$HomeStateErrorImplCopyWithImpl<_$HomeStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) homeError,
    required TResult Function(
            List<Album> newReleases, List<Playlist> userPlaylists, Track tracks)
        loaded,
  }) {
    return homeError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? homeError,
    TResult? Function(List<Album> newReleases, List<Playlist> userPlaylists,
            Track tracks)?
        loaded,
  }) {
    return homeError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? homeError,
    TResult Function(List<Album> newReleases, List<Playlist> userPlaylists,
            Track tracks)?
        loaded,
    required TResult orElse(),
  }) {
    if (homeError != null) {
      return homeError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HomeStateError value) homeError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return homeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HomeStateError value)? homeError,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return homeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HomeStateError value)? homeError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (homeError != null) {
      return homeError(this);
    }
    return orElse();
  }
}

abstract class _HomeStateError implements HomeState {
  const factory _HomeStateError(final String message) = _$HomeStateErrorImpl;

  String get message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateErrorImplCopyWith<_$HomeStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Album> newReleases, List<Playlist> userPlaylists, Track tracks});

  $TrackCopyWith<$Res> get tracks;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newReleases = null,
    Object? userPlaylists = null,
    Object? tracks = null,
  }) {
    return _then(_$LoadedImpl(
      newReleases: null == newReleases
          ? _value._newReleases
          : newReleases // ignore: cast_nullable_to_non_nullable
              as List<Album>,
      userPlaylists: null == userPlaylists
          ? _value._userPlaylists
          : userPlaylists // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Track,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackCopyWith<$Res> get tracks {
    return $TrackCopyWith<$Res>(_value.tracks, (value) {
      return _then(_value.copyWith(tracks: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final List<Album> newReleases,
      required final List<Playlist> userPlaylists,
      required this.tracks})
      : _newReleases = newReleases,
        _userPlaylists = userPlaylists;

  final List<Album> _newReleases;
  @override
  List<Album> get newReleases {
    if (_newReleases is EqualUnmodifiableListView) return _newReleases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newReleases);
  }

  final List<Playlist> _userPlaylists;
  @override
  List<Playlist> get userPlaylists {
    if (_userPlaylists is EqualUnmodifiableListView) return _userPlaylists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userPlaylists);
  }

  @override
  final Track tracks;

  @override
  String toString() {
    return 'HomeState.loaded(newReleases: $newReleases, userPlaylists: $userPlaylists, tracks: $tracks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._newReleases, _newReleases) &&
            const DeepCollectionEquality()
                .equals(other._userPlaylists, _userPlaylists) &&
            (identical(other.tracks, tracks) || other.tracks == tracks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_newReleases),
      const DeepCollectionEquality().hash(_userPlaylists),
      tracks);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) homeError,
    required TResult Function(
            List<Album> newReleases, List<Playlist> userPlaylists, Track tracks)
        loaded,
  }) {
    return loaded(newReleases, userPlaylists, tracks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? homeError,
    TResult? Function(List<Album> newReleases, List<Playlist> userPlaylists,
            Track tracks)?
        loaded,
  }) {
    return loaded?.call(newReleases, userPlaylists, tracks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? homeError,
    TResult Function(List<Album> newReleases, List<Playlist> userPlaylists,
            Track tracks)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(newReleases, userPlaylists, tracks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HomeStateError value) homeError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HomeStateError value)? homeError,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HomeStateError value)? homeError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HomeState {
  const factory _Loaded(
      {required final List<Album> newReleases,
      required final List<Playlist> userPlaylists,
      required final Track tracks}) = _$LoadedImpl;

  List<Album> get newReleases;
  List<Playlist> get userPlaylists;
  Track get tracks;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
