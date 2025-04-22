// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_tracks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AlbumTracksEvent {
  String get albumId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String albumId) started,
    required TResult Function(String albumId) loadTracks,
    required TResult Function(String albumId) loadAlbumInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String albumId)? started,
    TResult? Function(String albumId)? loadTracks,
    TResult? Function(String albumId)? loadAlbumInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String albumId)? started,
    TResult Function(String albumId)? loadTracks,
    TResult Function(String albumId)? loadAlbumInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadTracks value) loadTracks,
    required TResult Function(_LoadAlbumInfo value) loadAlbumInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadTracks value)? loadTracks,
    TResult? Function(_LoadAlbumInfo value)? loadAlbumInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadTracks value)? loadTracks,
    TResult Function(_LoadAlbumInfo value)? loadAlbumInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AlbumTracksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlbumTracksEventCopyWith<AlbumTracksEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumTracksEventCopyWith<$Res> {
  factory $AlbumTracksEventCopyWith(
          AlbumTracksEvent value, $Res Function(AlbumTracksEvent) then) =
      _$AlbumTracksEventCopyWithImpl<$Res, AlbumTracksEvent>;
  @useResult
  $Res call({String albumId});
}

/// @nodoc
class _$AlbumTracksEventCopyWithImpl<$Res, $Val extends AlbumTracksEvent>
    implements $AlbumTracksEventCopyWith<$Res> {
  _$AlbumTracksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlbumTracksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = null,
  }) {
    return _then(_value.copyWith(
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $AlbumTracksEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String albumId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AlbumTracksEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlbumTracksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = null,
  }) {
    return _then(_$StartedImpl(
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.albumId});

  @override
  final String albumId;

  @override
  String toString() {
    return 'AlbumTracksEvent.started(albumId: $albumId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.albumId, albumId) || other.albumId == albumId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, albumId);

  /// Create a copy of AlbumTracksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String albumId) started,
    required TResult Function(String albumId) loadTracks,
    required TResult Function(String albumId) loadAlbumInfo,
  }) {
    return started(albumId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String albumId)? started,
    TResult? Function(String albumId)? loadTracks,
    TResult? Function(String albumId)? loadAlbumInfo,
  }) {
    return started?.call(albumId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String albumId)? started,
    TResult Function(String albumId)? loadTracks,
    TResult Function(String albumId)? loadAlbumInfo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(albumId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadTracks value) loadTracks,
    required TResult Function(_LoadAlbumInfo value) loadAlbumInfo,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadTracks value)? loadTracks,
    TResult? Function(_LoadAlbumInfo value)? loadAlbumInfo,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadTracks value)? loadTracks,
    TResult Function(_LoadAlbumInfo value)? loadAlbumInfo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AlbumTracksEvent {
  const factory _Started({required final String albumId}) = _$StartedImpl;

  @override
  String get albumId;

  /// Create a copy of AlbumTracksEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTracksImplCopyWith<$Res>
    implements $AlbumTracksEventCopyWith<$Res> {
  factory _$$LoadTracksImplCopyWith(
          _$LoadTracksImpl value, $Res Function(_$LoadTracksImpl) then) =
      __$$LoadTracksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String albumId});
}

/// @nodoc
class __$$LoadTracksImplCopyWithImpl<$Res>
    extends _$AlbumTracksEventCopyWithImpl<$Res, _$LoadTracksImpl>
    implements _$$LoadTracksImplCopyWith<$Res> {
  __$$LoadTracksImplCopyWithImpl(
      _$LoadTracksImpl _value, $Res Function(_$LoadTracksImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlbumTracksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = null,
  }) {
    return _then(_$LoadTracksImpl(
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadTracksImpl implements _LoadTracks {
  const _$LoadTracksImpl({required this.albumId});

  @override
  final String albumId;

  @override
  String toString() {
    return 'AlbumTracksEvent.loadTracks(albumId: $albumId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTracksImpl &&
            (identical(other.albumId, albumId) || other.albumId == albumId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, albumId);

  /// Create a copy of AlbumTracksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTracksImplCopyWith<_$LoadTracksImpl> get copyWith =>
      __$$LoadTracksImplCopyWithImpl<_$LoadTracksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String albumId) started,
    required TResult Function(String albumId) loadTracks,
    required TResult Function(String albumId) loadAlbumInfo,
  }) {
    return loadTracks(albumId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String albumId)? started,
    TResult? Function(String albumId)? loadTracks,
    TResult? Function(String albumId)? loadAlbumInfo,
  }) {
    return loadTracks?.call(albumId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String albumId)? started,
    TResult Function(String albumId)? loadTracks,
    TResult Function(String albumId)? loadAlbumInfo,
    required TResult orElse(),
  }) {
    if (loadTracks != null) {
      return loadTracks(albumId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadTracks value) loadTracks,
    required TResult Function(_LoadAlbumInfo value) loadAlbumInfo,
  }) {
    return loadTracks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadTracks value)? loadTracks,
    TResult? Function(_LoadAlbumInfo value)? loadAlbumInfo,
  }) {
    return loadTracks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadTracks value)? loadTracks,
    TResult Function(_LoadAlbumInfo value)? loadAlbumInfo,
    required TResult orElse(),
  }) {
    if (loadTracks != null) {
      return loadTracks(this);
    }
    return orElse();
  }
}

abstract class _LoadTracks implements AlbumTracksEvent {
  const factory _LoadTracks({required final String albumId}) = _$LoadTracksImpl;

  @override
  String get albumId;

  /// Create a copy of AlbumTracksEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTracksImplCopyWith<_$LoadTracksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAlbumInfoImplCopyWith<$Res>
    implements $AlbumTracksEventCopyWith<$Res> {
  factory _$$LoadAlbumInfoImplCopyWith(
          _$LoadAlbumInfoImpl value, $Res Function(_$LoadAlbumInfoImpl) then) =
      __$$LoadAlbumInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String albumId});
}

/// @nodoc
class __$$LoadAlbumInfoImplCopyWithImpl<$Res>
    extends _$AlbumTracksEventCopyWithImpl<$Res, _$LoadAlbumInfoImpl>
    implements _$$LoadAlbumInfoImplCopyWith<$Res> {
  __$$LoadAlbumInfoImplCopyWithImpl(
      _$LoadAlbumInfoImpl _value, $Res Function(_$LoadAlbumInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlbumTracksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = null,
  }) {
    return _then(_$LoadAlbumInfoImpl(
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadAlbumInfoImpl implements _LoadAlbumInfo {
  const _$LoadAlbumInfoImpl({required this.albumId});

  @override
  final String albumId;

  @override
  String toString() {
    return 'AlbumTracksEvent.loadAlbumInfo(albumId: $albumId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAlbumInfoImpl &&
            (identical(other.albumId, albumId) || other.albumId == albumId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, albumId);

  /// Create a copy of AlbumTracksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAlbumInfoImplCopyWith<_$LoadAlbumInfoImpl> get copyWith =>
      __$$LoadAlbumInfoImplCopyWithImpl<_$LoadAlbumInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String albumId) started,
    required TResult Function(String albumId) loadTracks,
    required TResult Function(String albumId) loadAlbumInfo,
  }) {
    return loadAlbumInfo(albumId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String albumId)? started,
    TResult? Function(String albumId)? loadTracks,
    TResult? Function(String albumId)? loadAlbumInfo,
  }) {
    return loadAlbumInfo?.call(albumId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String albumId)? started,
    TResult Function(String albumId)? loadTracks,
    TResult Function(String albumId)? loadAlbumInfo,
    required TResult orElse(),
  }) {
    if (loadAlbumInfo != null) {
      return loadAlbumInfo(albumId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadTracks value) loadTracks,
    required TResult Function(_LoadAlbumInfo value) loadAlbumInfo,
  }) {
    return loadAlbumInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadTracks value)? loadTracks,
    TResult? Function(_LoadAlbumInfo value)? loadAlbumInfo,
  }) {
    return loadAlbumInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadTracks value)? loadTracks,
    TResult Function(_LoadAlbumInfo value)? loadAlbumInfo,
    required TResult orElse(),
  }) {
    if (loadAlbumInfo != null) {
      return loadAlbumInfo(this);
    }
    return orElse();
  }
}

abstract class _LoadAlbumInfo implements AlbumTracksEvent {
  const factory _LoadAlbumInfo({required final String albumId}) =
      _$LoadAlbumInfoImpl;

  @override
  String get albumId;

  /// Create a copy of AlbumTracksEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAlbumInfoImplCopyWith<_$LoadAlbumInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AlbumTracksState {
// Data fields
  List<TrackItem> get tracks => throw _privateConstructorUsedError;
  Album? get album => throw _privateConstructorUsedError; // Status fields
  Status get statusLoadTracks => throw _privateConstructorUsedError;
  Status get statusLoadAlbumInfo => throw _privateConstructorUsedError;

  /// Create a copy of AlbumTracksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlbumTracksStateCopyWith<AlbumTracksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumTracksStateCopyWith<$Res> {
  factory $AlbumTracksStateCopyWith(
          AlbumTracksState value, $Res Function(AlbumTracksState) then) =
      _$AlbumTracksStateCopyWithImpl<$Res, AlbumTracksState>;
  @useResult
  $Res call(
      {List<TrackItem> tracks,
      Album? album,
      Status statusLoadTracks,
      Status statusLoadAlbumInfo});

  $AlbumCopyWith<$Res>? get album;
  $StatusCopyWith<$Res> get statusLoadTracks;
  $StatusCopyWith<$Res> get statusLoadAlbumInfo;
}

/// @nodoc
class _$AlbumTracksStateCopyWithImpl<$Res, $Val extends AlbumTracksState>
    implements $AlbumTracksStateCopyWith<$Res> {
  _$AlbumTracksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlbumTracksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tracks = null,
    Object? album = freezed,
    Object? statusLoadTracks = null,
    Object? statusLoadAlbumInfo = null,
  }) {
    return _then(_value.copyWith(
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<TrackItem>,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album?,
      statusLoadTracks: null == statusLoadTracks
          ? _value.statusLoadTracks
          : statusLoadTracks // ignore: cast_nullable_to_non_nullable
              as Status,
      statusLoadAlbumInfo: null == statusLoadAlbumInfo
          ? _value.statusLoadAlbumInfo
          : statusLoadAlbumInfo // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  /// Create a copy of AlbumTracksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AlbumCopyWith<$Res>? get album {
    if (_value.album == null) {
      return null;
    }

    return $AlbumCopyWith<$Res>(_value.album!, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }

  /// Create a copy of AlbumTracksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusLoadTracks {
    return $StatusCopyWith<$Res>(_value.statusLoadTracks, (value) {
      return _then(_value.copyWith(statusLoadTracks: value) as $Val);
    });
  }

  /// Create a copy of AlbumTracksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusLoadAlbumInfo {
    return $StatusCopyWith<$Res>(_value.statusLoadAlbumInfo, (value) {
      return _then(_value.copyWith(statusLoadAlbumInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlbumTracksStateImplCopyWith<$Res>
    implements $AlbumTracksStateCopyWith<$Res> {
  factory _$$AlbumTracksStateImplCopyWith(_$AlbumTracksStateImpl value,
          $Res Function(_$AlbumTracksStateImpl) then) =
      __$$AlbumTracksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TrackItem> tracks,
      Album? album,
      Status statusLoadTracks,
      Status statusLoadAlbumInfo});

  @override
  $AlbumCopyWith<$Res>? get album;
  @override
  $StatusCopyWith<$Res> get statusLoadTracks;
  @override
  $StatusCopyWith<$Res> get statusLoadAlbumInfo;
}

/// @nodoc
class __$$AlbumTracksStateImplCopyWithImpl<$Res>
    extends _$AlbumTracksStateCopyWithImpl<$Res, _$AlbumTracksStateImpl>
    implements _$$AlbumTracksStateImplCopyWith<$Res> {
  __$$AlbumTracksStateImplCopyWithImpl(_$AlbumTracksStateImpl _value,
      $Res Function(_$AlbumTracksStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlbumTracksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tracks = null,
    Object? album = freezed,
    Object? statusLoadTracks = null,
    Object? statusLoadAlbumInfo = null,
  }) {
    return _then(_$AlbumTracksStateImpl(
      tracks: null == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<TrackItem>,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album?,
      statusLoadTracks: null == statusLoadTracks
          ? _value.statusLoadTracks
          : statusLoadTracks // ignore: cast_nullable_to_non_nullable
              as Status,
      statusLoadAlbumInfo: null == statusLoadAlbumInfo
          ? _value.statusLoadAlbumInfo
          : statusLoadAlbumInfo // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$AlbumTracksStateImpl implements _AlbumTracksState {
  const _$AlbumTracksStateImpl(
      {final List<TrackItem> tracks = const [],
      this.album = null,
      this.statusLoadTracks = const Status.idle(),
      this.statusLoadAlbumInfo = const Status.idle()})
      : _tracks = tracks;

// Data fields
  final List<TrackItem> _tracks;
// Data fields
  @override
  @JsonKey()
  List<TrackItem> get tracks {
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tracks);
  }

  @override
  @JsonKey()
  final Album? album;
// Status fields
  @override
  @JsonKey()
  final Status statusLoadTracks;
  @override
  @JsonKey()
  final Status statusLoadAlbumInfo;

  @override
  String toString() {
    return 'AlbumTracksState(tracks: $tracks, album: $album, statusLoadTracks: $statusLoadTracks, statusLoadAlbumInfo: $statusLoadAlbumInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumTracksStateImpl &&
            const DeepCollectionEquality().equals(other._tracks, _tracks) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.statusLoadTracks, statusLoadTracks) ||
                other.statusLoadTracks == statusLoadTracks) &&
            (identical(other.statusLoadAlbumInfo, statusLoadAlbumInfo) ||
                other.statusLoadAlbumInfo == statusLoadAlbumInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tracks),
      album,
      statusLoadTracks,
      statusLoadAlbumInfo);

  /// Create a copy of AlbumTracksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumTracksStateImplCopyWith<_$AlbumTracksStateImpl> get copyWith =>
      __$$AlbumTracksStateImplCopyWithImpl<_$AlbumTracksStateImpl>(
          this, _$identity);
}

abstract class _AlbumTracksState implements AlbumTracksState {
  const factory _AlbumTracksState(
      {final List<TrackItem> tracks,
      final Album? album,
      final Status statusLoadTracks,
      final Status statusLoadAlbumInfo}) = _$AlbumTracksStateImpl;

// Data fields
  @override
  List<TrackItem> get tracks;
  @override
  Album? get album; // Status fields
  @override
  Status get statusLoadTracks;
  @override
  Status get statusLoadAlbumInfo;

  /// Create a copy of AlbumTracksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlbumTracksStateImplCopyWith<_$AlbumTracksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
