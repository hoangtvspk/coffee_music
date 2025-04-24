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
    required TResult Function(String trackId, int offset, int limit)
        getSavedTracks,
    required TResult Function(String artistId, int offset, int limit)
        getArtistTopTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int offset, int limit)? getNewReleases,
    TResult? Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult? Function(String ids)? getTracks,
    TResult? Function(String trackId, int offset, int limit)? getSavedTracks,
    TResult? Function(String artistId, int offset, int limit)?
        getArtistTopTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int offset, int limit)? getNewReleases,
    TResult Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult Function(String ids)? getTracks,
    TResult Function(String trackId, int offset, int limit)? getSavedTracks,
    TResult Function(String artistId, int offset, int limit)?
        getArtistTopTracks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetNewReleases value) getNewReleases,
    required TResult Function(_GetUserPlaylists value) getUserPlaylists,
    required TResult Function(_GetTracks value) getTracks,
    required TResult Function(_GetSavedTracks value) getSavedTracks,
    required TResult Function(_GetArtistTopTracks value) getArtistTopTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNewReleases value)? getNewReleases,
    TResult? Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult? Function(_GetTracks value)? getTracks,
    TResult? Function(_GetSavedTracks value)? getSavedTracks,
    TResult? Function(_GetArtistTopTracks value)? getArtistTopTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNewReleases value)? getNewReleases,
    TResult Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult Function(_GetTracks value)? getTracks,
    TResult Function(_GetSavedTracks value)? getSavedTracks,
    TResult Function(_GetArtistTopTracks value)? getArtistTopTracks,
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
    required TResult Function(String trackId, int offset, int limit)
        getSavedTracks,
    required TResult Function(String artistId, int offset, int limit)
        getArtistTopTracks,
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
    TResult? Function(String trackId, int offset, int limit)? getSavedTracks,
    TResult? Function(String artistId, int offset, int limit)?
        getArtistTopTracks,
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
    TResult Function(String trackId, int offset, int limit)? getSavedTracks,
    TResult Function(String artistId, int offset, int limit)?
        getArtistTopTracks,
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
    required TResult Function(_GetSavedTracks value) getSavedTracks,
    required TResult Function(_GetArtistTopTracks value) getArtistTopTracks,
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
    TResult? Function(_GetSavedTracks value)? getSavedTracks,
    TResult? Function(_GetArtistTopTracks value)? getArtistTopTracks,
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
    TResult Function(_GetSavedTracks value)? getSavedTracks,
    TResult Function(_GetArtistTopTracks value)? getArtistTopTracks,
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
    required TResult Function(String trackId, int offset, int limit)
        getSavedTracks,
    required TResult Function(String artistId, int offset, int limit)
        getArtistTopTracks,
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
    TResult? Function(String trackId, int offset, int limit)? getSavedTracks,
    TResult? Function(String artistId, int offset, int limit)?
        getArtistTopTracks,
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
    TResult Function(String trackId, int offset, int limit)? getSavedTracks,
    TResult Function(String artistId, int offset, int limit)?
        getArtistTopTracks,
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
    required TResult Function(_GetSavedTracks value) getSavedTracks,
    required TResult Function(_GetArtistTopTracks value) getArtistTopTracks,
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
    TResult? Function(_GetSavedTracks value)? getSavedTracks,
    TResult? Function(_GetArtistTopTracks value)? getArtistTopTracks,
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
    TResult Function(_GetSavedTracks value)? getSavedTracks,
    TResult Function(_GetArtistTopTracks value)? getArtistTopTracks,
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
    required TResult Function(String trackId, int offset, int limit)
        getSavedTracks,
    required TResult Function(String artistId, int offset, int limit)
        getArtistTopTracks,
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
    TResult? Function(String trackId, int offset, int limit)? getSavedTracks,
    TResult? Function(String artistId, int offset, int limit)?
        getArtistTopTracks,
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
    TResult Function(String trackId, int offset, int limit)? getSavedTracks,
    TResult Function(String artistId, int offset, int limit)?
        getArtistTopTracks,
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
    required TResult Function(_GetSavedTracks value) getSavedTracks,
    required TResult Function(_GetArtistTopTracks value) getArtistTopTracks,
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
    TResult? Function(_GetSavedTracks value)? getSavedTracks,
    TResult? Function(_GetArtistTopTracks value)? getArtistTopTracks,
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
    TResult Function(_GetSavedTracks value)? getSavedTracks,
    TResult Function(_GetArtistTopTracks value)? getArtistTopTracks,
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
    required TResult Function(String trackId, int offset, int limit)
        getSavedTracks,
    required TResult Function(String artistId, int offset, int limit)
        getArtistTopTracks,
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
    TResult? Function(String trackId, int offset, int limit)? getSavedTracks,
    TResult? Function(String artistId, int offset, int limit)?
        getArtistTopTracks,
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
    TResult Function(String trackId, int offset, int limit)? getSavedTracks,
    TResult Function(String artistId, int offset, int limit)?
        getArtistTopTracks,
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
    required TResult Function(_GetSavedTracks value) getSavedTracks,
    required TResult Function(_GetArtistTopTracks value) getArtistTopTracks,
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
    TResult? Function(_GetSavedTracks value)? getSavedTracks,
    TResult? Function(_GetArtistTopTracks value)? getArtistTopTracks,
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
    TResult Function(_GetSavedTracks value)? getSavedTracks,
    TResult Function(_GetArtistTopTracks value)? getArtistTopTracks,
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
abstract class _$$GetSavedTracksImplCopyWith<$Res> {
  factory _$$GetSavedTracksImplCopyWith(_$GetSavedTracksImpl value,
          $Res Function(_$GetSavedTracksImpl) then) =
      __$$GetSavedTracksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String trackId, int offset, int limit});
}

/// @nodoc
class __$$GetSavedTracksImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetSavedTracksImpl>
    implements _$$GetSavedTracksImplCopyWith<$Res> {
  __$$GetSavedTracksImplCopyWithImpl(
      _$GetSavedTracksImpl _value, $Res Function(_$GetSavedTracksImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackId = null,
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$GetSavedTracksImpl(
      trackId: null == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$GetSavedTracksImpl implements _GetSavedTracks {
  const _$GetSavedTracksImpl(
      {required this.trackId, this.offset = 0, this.limit = 20});

  @override
  final String trackId;
  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'HomeEvent.getSavedTracks(trackId: $trackId, offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSavedTracksImpl &&
            (identical(other.trackId, trackId) || other.trackId == trackId) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackId, offset, limit);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSavedTracksImplCopyWith<_$GetSavedTracksImpl> get copyWith =>
      __$$GetSavedTracksImplCopyWithImpl<_$GetSavedTracksImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int offset, int limit) getNewReleases,
    required TResult Function(int offset, int limit, String userId)
        getUserPlaylists,
    required TResult Function(String ids) getTracks,
    required TResult Function(String trackId, int offset, int limit)
        getSavedTracks,
    required TResult Function(String artistId, int offset, int limit)
        getArtistTopTracks,
  }) {
    return getSavedTracks(trackId, offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int offset, int limit)? getNewReleases,
    TResult? Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult? Function(String ids)? getTracks,
    TResult? Function(String trackId, int offset, int limit)? getSavedTracks,
    TResult? Function(String artistId, int offset, int limit)?
        getArtistTopTracks,
  }) {
    return getSavedTracks?.call(trackId, offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int offset, int limit)? getNewReleases,
    TResult Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult Function(String ids)? getTracks,
    TResult Function(String trackId, int offset, int limit)? getSavedTracks,
    TResult Function(String artistId, int offset, int limit)?
        getArtistTopTracks,
    required TResult orElse(),
  }) {
    if (getSavedTracks != null) {
      return getSavedTracks(trackId, offset, limit);
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
    required TResult Function(_GetSavedTracks value) getSavedTracks,
    required TResult Function(_GetArtistTopTracks value) getArtistTopTracks,
  }) {
    return getSavedTracks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNewReleases value)? getNewReleases,
    TResult? Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult? Function(_GetTracks value)? getTracks,
    TResult? Function(_GetSavedTracks value)? getSavedTracks,
    TResult? Function(_GetArtistTopTracks value)? getArtistTopTracks,
  }) {
    return getSavedTracks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNewReleases value)? getNewReleases,
    TResult Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult Function(_GetTracks value)? getTracks,
    TResult Function(_GetSavedTracks value)? getSavedTracks,
    TResult Function(_GetArtistTopTracks value)? getArtistTopTracks,
    required TResult orElse(),
  }) {
    if (getSavedTracks != null) {
      return getSavedTracks(this);
    }
    return orElse();
  }
}

abstract class _GetSavedTracks implements HomeEvent {
  const factory _GetSavedTracks(
      {required final String trackId,
      final int offset,
      final int limit}) = _$GetSavedTracksImpl;

  String get trackId;
  int get offset;
  int get limit;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSavedTracksImplCopyWith<_$GetSavedTracksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetArtistTopTracksImplCopyWith<$Res> {
  factory _$$GetArtistTopTracksImplCopyWith(_$GetArtistTopTracksImpl value,
          $Res Function(_$GetArtistTopTracksImpl) then) =
      __$$GetArtistTopTracksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artistId, int offset, int limit});
}

/// @nodoc
class __$$GetArtistTopTracksImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetArtistTopTracksImpl>
    implements _$$GetArtistTopTracksImplCopyWith<$Res> {
  __$$GetArtistTopTracksImplCopyWithImpl(_$GetArtistTopTracksImpl _value,
      $Res Function(_$GetArtistTopTracksImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$GetArtistTopTracksImpl(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$GetArtistTopTracksImpl implements _GetArtistTopTracks {
  const _$GetArtistTopTracksImpl(
      {required this.artistId, this.offset = 0, this.limit = 20});

  @override
  final String artistId;
  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'HomeEvent.getArtistTopTracks(artistId: $artistId, offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArtistTopTracksImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId, offset, limit);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArtistTopTracksImplCopyWith<_$GetArtistTopTracksImpl> get copyWith =>
      __$$GetArtistTopTracksImplCopyWithImpl<_$GetArtistTopTracksImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int offset, int limit) getNewReleases,
    required TResult Function(int offset, int limit, String userId)
        getUserPlaylists,
    required TResult Function(String ids) getTracks,
    required TResult Function(String trackId, int offset, int limit)
        getSavedTracks,
    required TResult Function(String artistId, int offset, int limit)
        getArtistTopTracks,
  }) {
    return getArtistTopTracks(artistId, offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int offset, int limit)? getNewReleases,
    TResult? Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult? Function(String ids)? getTracks,
    TResult? Function(String trackId, int offset, int limit)? getSavedTracks,
    TResult? Function(String artistId, int offset, int limit)?
        getArtistTopTracks,
  }) {
    return getArtistTopTracks?.call(artistId, offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int offset, int limit)? getNewReleases,
    TResult Function(int offset, int limit, String userId)? getUserPlaylists,
    TResult Function(String ids)? getTracks,
    TResult Function(String trackId, int offset, int limit)? getSavedTracks,
    TResult Function(String artistId, int offset, int limit)?
        getArtistTopTracks,
    required TResult orElse(),
  }) {
    if (getArtistTopTracks != null) {
      return getArtistTopTracks(artistId, offset, limit);
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
    required TResult Function(_GetSavedTracks value) getSavedTracks,
    required TResult Function(_GetArtistTopTracks value) getArtistTopTracks,
  }) {
    return getArtistTopTracks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNewReleases value)? getNewReleases,
    TResult? Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult? Function(_GetTracks value)? getTracks,
    TResult? Function(_GetSavedTracks value)? getSavedTracks,
    TResult? Function(_GetArtistTopTracks value)? getArtistTopTracks,
  }) {
    return getArtistTopTracks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNewReleases value)? getNewReleases,
    TResult Function(_GetUserPlaylists value)? getUserPlaylists,
    TResult Function(_GetTracks value)? getTracks,
    TResult Function(_GetSavedTracks value)? getSavedTracks,
    TResult Function(_GetArtistTopTracks value)? getArtistTopTracks,
    required TResult orElse(),
  }) {
    if (getArtistTopTracks != null) {
      return getArtistTopTracks(this);
    }
    return orElse();
  }
}

abstract class _GetArtistTopTracks implements HomeEvent {
  const factory _GetArtistTopTracks(
      {required final String artistId,
      final int offset,
      final int limit}) = _$GetArtistTopTracksImpl;

  String get artistId;
  int get offset;
  int get limit;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetArtistTopTracksImplCopyWith<_$GetArtistTopTracksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<Album> get newReleases => throw _privateConstructorUsedError;
  List<Playlist> get userPlaylists => throw _privateConstructorUsedError;
  List<Track> get tracks => throw _privateConstructorUsedError;
  List<Track> get savedTracks => throw _privateConstructorUsedError;
  List<Track> get artistTopTracks => throw _privateConstructorUsedError;
  Status get statusLoadNewReleases => throw _privateConstructorUsedError;
  Status get statusLoadPlaylists => throw _privateConstructorUsedError;
  Status get statusLoadTracks => throw _privateConstructorUsedError;
  Status get statusLoadSavedTracks => throw _privateConstructorUsedError;
  Status get statusLoadArtistTopTracks => throw _privateConstructorUsedError;

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
      List<Track> tracks,
      List<Track> savedTracks,
      List<Track> artistTopTracks,
      Status statusLoadNewReleases,
      Status statusLoadPlaylists,
      Status statusLoadTracks,
      Status statusLoadSavedTracks,
      Status statusLoadArtistTopTracks});

  $StatusCopyWith<$Res> get statusLoadNewReleases;
  $StatusCopyWith<$Res> get statusLoadPlaylists;
  $StatusCopyWith<$Res> get statusLoadTracks;
  $StatusCopyWith<$Res> get statusLoadSavedTracks;
  $StatusCopyWith<$Res> get statusLoadArtistTopTracks;
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
    Object? savedTracks = null,
    Object? artistTopTracks = null,
    Object? statusLoadNewReleases = null,
    Object? statusLoadPlaylists = null,
    Object? statusLoadTracks = null,
    Object? statusLoadSavedTracks = null,
    Object? statusLoadArtistTopTracks = null,
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
              as List<Track>,
      savedTracks: null == savedTracks
          ? _value.savedTracks
          : savedTracks // ignore: cast_nullable_to_non_nullable
              as List<Track>,
      artistTopTracks: null == artistTopTracks
          ? _value.artistTopTracks
          : artistTopTracks // ignore: cast_nullable_to_non_nullable
              as List<Track>,
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
      statusLoadSavedTracks: null == statusLoadSavedTracks
          ? _value.statusLoadSavedTracks
          : statusLoadSavedTracks // ignore: cast_nullable_to_non_nullable
              as Status,
      statusLoadArtistTopTracks: null == statusLoadArtistTopTracks
          ? _value.statusLoadArtistTopTracks
          : statusLoadArtistTopTracks // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
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

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusLoadSavedTracks {
    return $StatusCopyWith<$Res>(_value.statusLoadSavedTracks, (value) {
      return _then(_value.copyWith(statusLoadSavedTracks: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusLoadArtistTopTracks {
    return $StatusCopyWith<$Res>(_value.statusLoadArtistTopTracks, (value) {
      return _then(_value.copyWith(statusLoadArtistTopTracks: value) as $Val);
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
      List<Track> tracks,
      List<Track> savedTracks,
      List<Track> artistTopTracks,
      Status statusLoadNewReleases,
      Status statusLoadPlaylists,
      Status statusLoadTracks,
      Status statusLoadSavedTracks,
      Status statusLoadArtistTopTracks});

  @override
  $StatusCopyWith<$Res> get statusLoadNewReleases;
  @override
  $StatusCopyWith<$Res> get statusLoadPlaylists;
  @override
  $StatusCopyWith<$Res> get statusLoadTracks;
  @override
  $StatusCopyWith<$Res> get statusLoadSavedTracks;
  @override
  $StatusCopyWith<$Res> get statusLoadArtistTopTracks;
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
    Object? savedTracks = null,
    Object? artistTopTracks = null,
    Object? statusLoadNewReleases = null,
    Object? statusLoadPlaylists = null,
    Object? statusLoadTracks = null,
    Object? statusLoadSavedTracks = null,
    Object? statusLoadArtistTopTracks = null,
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
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>,
      savedTracks: null == savedTracks
          ? _value._savedTracks
          : savedTracks // ignore: cast_nullable_to_non_nullable
              as List<Track>,
      artistTopTracks: null == artistTopTracks
          ? _value._artistTopTracks
          : artistTopTracks // ignore: cast_nullable_to_non_nullable
              as List<Track>,
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
      statusLoadSavedTracks: null == statusLoadSavedTracks
          ? _value.statusLoadSavedTracks
          : statusLoadSavedTracks // ignore: cast_nullable_to_non_nullable
              as Status,
      statusLoadArtistTopTracks: null == statusLoadArtistTopTracks
          ? _value.statusLoadArtistTopTracks
          : statusLoadArtistTopTracks // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {final List<Album> newReleases = const [],
      final List<Playlist> userPlaylists = const [],
      final List<Track> tracks = const [],
      final List<Track> savedTracks = const [],
      final List<Track> artistTopTracks = const [],
      this.statusLoadNewReleases = const Status.idle(),
      this.statusLoadPlaylists = const Status.idle(),
      this.statusLoadTracks = const Status.idle(),
      this.statusLoadSavedTracks = const Status.idle(),
      this.statusLoadArtistTopTracks = const Status.idle()})
      : _newReleases = newReleases,
        _userPlaylists = userPlaylists,
        _tracks = tracks,
        _savedTracks = savedTracks,
        _artistTopTracks = artistTopTracks;

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

  final List<Track> _tracks;
  @override
  @JsonKey()
  List<Track> get tracks {
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tracks);
  }

  final List<Track> _savedTracks;
  @override
  @JsonKey()
  List<Track> get savedTracks {
    if (_savedTracks is EqualUnmodifiableListView) return _savedTracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedTracks);
  }

  final List<Track> _artistTopTracks;
  @override
  @JsonKey()
  List<Track> get artistTopTracks {
    if (_artistTopTracks is EqualUnmodifiableListView) return _artistTopTracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artistTopTracks);
  }

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
  @JsonKey()
  final Status statusLoadSavedTracks;
  @override
  @JsonKey()
  final Status statusLoadArtistTopTracks;

  @override
  String toString() {
    return 'HomeState(newReleases: $newReleases, userPlaylists: $userPlaylists, tracks: $tracks, savedTracks: $savedTracks, artistTopTracks: $artistTopTracks, statusLoadNewReleases: $statusLoadNewReleases, statusLoadPlaylists: $statusLoadPlaylists, statusLoadTracks: $statusLoadTracks, statusLoadSavedTracks: $statusLoadSavedTracks, statusLoadArtistTopTracks: $statusLoadArtistTopTracks)';
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
            const DeepCollectionEquality().equals(other._tracks, _tracks) &&
            const DeepCollectionEquality()
                .equals(other._savedTracks, _savedTracks) &&
            const DeepCollectionEquality()
                .equals(other._artistTopTracks, _artistTopTracks) &&
            (identical(other.statusLoadNewReleases, statusLoadNewReleases) ||
                other.statusLoadNewReleases == statusLoadNewReleases) &&
            (identical(other.statusLoadPlaylists, statusLoadPlaylists) ||
                other.statusLoadPlaylists == statusLoadPlaylists) &&
            (identical(other.statusLoadTracks, statusLoadTracks) ||
                other.statusLoadTracks == statusLoadTracks) &&
            (identical(other.statusLoadSavedTracks, statusLoadSavedTracks) ||
                other.statusLoadSavedTracks == statusLoadSavedTracks) &&
            (identical(other.statusLoadArtistTopTracks,
                    statusLoadArtistTopTracks) ||
                other.statusLoadArtistTopTracks == statusLoadArtistTopTracks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_newReleases),
      const DeepCollectionEquality().hash(_userPlaylists),
      const DeepCollectionEquality().hash(_tracks),
      const DeepCollectionEquality().hash(_savedTracks),
      const DeepCollectionEquality().hash(_artistTopTracks),
      statusLoadNewReleases,
      statusLoadPlaylists,
      statusLoadTracks,
      statusLoadSavedTracks,
      statusLoadArtistTopTracks);

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
      final List<Track> tracks,
      final List<Track> savedTracks,
      final List<Track> artistTopTracks,
      final Status statusLoadNewReleases,
      final Status statusLoadPlaylists,
      final Status statusLoadTracks,
      final Status statusLoadSavedTracks,
      final Status statusLoadArtistTopTracks}) = _$HomeStateImpl;

  @override
  List<Album> get newReleases;
  @override
  List<Playlist> get userPlaylists;
  @override
  List<Track> get tracks;
  @override
  List<Track> get savedTracks;
  @override
  List<Track> get artistTopTracks;
  @override
  Status get statusLoadNewReleases;
  @override
  Status get statusLoadPlaylists;
  @override
  Status get statusLoadTracks;
  @override
  Status get statusLoadSavedTracks;
  @override
  Status get statusLoadArtistTopTracks;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
