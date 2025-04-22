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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int offset, int limit)? getNewReleases,
    TResult? Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult? Function(String ids)? getTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int offset, int limit)? getNewReleases,
    TResult Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult Function(String ids)? getTracks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetNewReleases value) getNewReleases,
    required TResult Function(_GetUserPlaylists value) getUserPlaylists,
    required TResult Function(_GetTracks value) getTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNewReleases value)? getNewReleases,
    TResult? Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult? Function(_GetTracks value)? getTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNewReleases value)? getNewReleases,
    TResult Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult Function(_GetTracks value)? getTracks,
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
mixin _$HomeState {
  List<Album> get newReleases => throw _privateConstructorUsedError;
  List<Playlist> get userPlaylists => throw _privateConstructorUsedError;
  Track get tracks => throw _privateConstructorUsedError;
  Status get statusLoadNewReleases => throw _privateConstructorUsedError;
  Status get statusLoadPlaylists => throw _privateConstructorUsedError;
  Status get statusLoadTracks => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<Album> newReleases,
      List<Playlist> userPlaylists,
      Track tracks,
      Status statusLoadNewReleases,
      Status statusLoadPlaylists,
      Status statusLoadTracks});

  $TrackCopyWith<$Res> get tracks;
  $StatusCopyWith<$Res> get statusLoadNewReleases;
  $StatusCopyWith<$Res> get statusLoadPlaylists;
  $StatusCopyWith<$Res> get statusLoadTracks;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newReleases = null,
    Object? userPlaylists = null,
    Object? tracks = null,
    Object? statusLoadNewReleases = null,
    Object? statusLoadPlaylists = null,
    Object? statusLoadTracks = null,
  }) {
    return _then(_value.copyWith(
      newReleases: null == newReleases
          ? _value.newReleases
          : newReleases // ignore: cast_nullable_to_non_nullable
              as List<Album>,
      userPlaylists: null == userPlaylists
          ? _value.userPlaylists
          : userPlaylists // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Track,
      statusLoadNewReleases: null == statusLoadNewReleases
          ? _value.statusLoadNewReleases
          : statusLoadNewReleases // ignore: cast_nullable_to_non_nullable
              as Status,
      statusLoadPlaylists: null == statusLoadPlaylists
          ? _value.statusLoadPlaylists
          : statusLoadPlaylists // ignore: cast_nullable_to_non_nullable
              as Status,
      statusLoadTracks: null == statusLoadTracks
          ? _value.statusLoadTracks
          : statusLoadTracks // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackCopyWith<$Res> get tracks {
    return $TrackCopyWith<$Res>(_value.tracks, (value) {
      return _then(_value.copyWith(tracks: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusLoadNewReleases {
    return $StatusCopyWith<$Res>(_value.statusLoadNewReleases, (value) {
      return _then(_value.copyWith(statusLoadNewReleases: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusLoadPlaylists {
    return $StatusCopyWith<$Res>(_value.statusLoadPlaylists, (value) {
      return _then(_value.copyWith(statusLoadPlaylists: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusLoadTracks {
    return $StatusCopyWith<$Res>(_value.statusLoadTracks, (value) {
      return _then(_value.copyWith(statusLoadTracks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Album> newReleases,
      List<Playlist> userPlaylists,
      Track tracks,
      Status statusLoadNewReleases,
      Status statusLoadPlaylists,
      Status statusLoadTracks});

  @override
  $TrackCopyWith<$Res> get tracks;
  @override
  $StatusCopyWith<$Res> get statusLoadNewReleases;
  @override
  $StatusCopyWith<$Res> get statusLoadPlaylists;
  @override
  $StatusCopyWith<$Res> get statusLoadTracks;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newReleases = null,
    Object? userPlaylists = null,
    Object? tracks = null,
    Object? statusLoadNewReleases = null,
    Object? statusLoadPlaylists = null,
    Object? statusLoadTracks = null,
  }) {
    return _then(_$HomeStateImpl(
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
      statusLoadNewReleases: null == statusLoadNewReleases
          ? _value.statusLoadNewReleases
          : statusLoadNewReleases // ignore: cast_nullable_to_non_nullable
              as Status,
      statusLoadPlaylists: null == statusLoadPlaylists
          ? _value.statusLoadPlaylists
          : statusLoadPlaylists // ignore: cast_nullable_to_non_nullable
              as Status,
      statusLoadTracks: null == statusLoadTracks
          ? _value.statusLoadTracks
          : statusLoadTracks // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {final List<Album> newReleases = const [],
      final List<Playlist> userPlaylists = const [],
      this.tracks = const Track(),
      this.statusLoadNewReleases = const Status.idle(),
      this.statusLoadPlaylists = const Status.idle(),
      this.statusLoadTracks = const Status.idle()})
      : _newReleases = newReleases,
        _userPlaylists = userPlaylists;

  final List<Album> _newReleases;
  @override
  @JsonKey()
  List<Album> get newReleases {
    if (_newReleases is EqualUnmodifiableListView) return _newReleases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newReleases);
  }

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
  final Track tracks;
  @override
  @JsonKey()
  final Status statusLoadNewReleases;
  @override
  @JsonKey()
  final Status statusLoadPlaylists;
  @override
  @JsonKey()
  final Status statusLoadTracks;

  @override
  String toString() {
    return 'HomeState(newReleases: $newReleases, userPlaylists: $userPlaylists, tracks: $tracks, statusLoadNewReleases: $statusLoadNewReleases, statusLoadPlaylists: $statusLoadPlaylists, statusLoadTracks: $statusLoadTracks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._newReleases, _newReleases) &&
            const DeepCollectionEquality()
                .equals(other._userPlaylists, _userPlaylists) &&
            (identical(other.tracks, tracks) || other.tracks == tracks) &&
            (identical(other.statusLoadNewReleases, statusLoadNewReleases) ||
                other.statusLoadNewReleases == statusLoadNewReleases) &&
            (identical(other.statusLoadPlaylists, statusLoadPlaylists) ||
                other.statusLoadPlaylists == statusLoadPlaylists) &&
            (identical(other.statusLoadTracks, statusLoadTracks) ||
                other.statusLoadTracks == statusLoadTracks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_newReleases),
      const DeepCollectionEquality().hash(_userPlaylists),
      tracks,
      statusLoadNewReleases,
      statusLoadPlaylists,
      statusLoadTracks);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final List<Album> newReleases,
      final List<Playlist> userPlaylists,
      final Track tracks,
      final Status statusLoadNewReleases,
      final Status statusLoadPlaylists,
      final Status statusLoadTracks}) = _$HomeStateImpl;

  @override
  List<Album> get newReleases;
  @override
  List<Playlist> get userPlaylists;
  @override
  Track get tracks;
  @override
  Status get statusLoadNewReleases;
  @override
  Status get statusLoadPlaylists;
  @override
  Status get statusLoadTracks;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
