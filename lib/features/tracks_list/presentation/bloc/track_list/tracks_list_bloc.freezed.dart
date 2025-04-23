// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracks_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TracksListEvent {
  String get listTrackId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String listTrackId) started,
    required TResult Function(String listTrackId) loadTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String listTrackId)? started,
    TResult? Function(String listTrackId)? loadTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String listTrackId)? started,
    TResult Function(String listTrackId)? loadTracks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadTracks value) loadTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadTracks value)? loadTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadTracks value)? loadTracks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TracksListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TracksListEventCopyWith<TracksListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TracksListEventCopyWith<$Res> {
  factory $TracksListEventCopyWith(
          TracksListEvent value, $Res Function(TracksListEvent) then) =
      _$TracksListEventCopyWithImpl<$Res, TracksListEvent>;
  @useResult
  $Res call({String listTrackId});
}

/// @nodoc
class _$TracksListEventCopyWithImpl<$Res, $Val extends TracksListEvent>
    implements $TracksListEventCopyWith<$Res> {
  _$TracksListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TracksListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listTrackId = null,
  }) {
    return _then(_value.copyWith(
      listTrackId: null == listTrackId
          ? _value.listTrackId
          : listTrackId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $TracksListEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String listTrackId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TracksListEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TracksListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listTrackId = null,
  }) {
    return _then(_$StartedImpl(
      listTrackId: null == listTrackId
          ? _value.listTrackId
          : listTrackId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.listTrackId});

  @override
  final String listTrackId;

  @override
  String toString() {
    return 'TracksListEvent.started(listTrackId: $listTrackId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.listTrackId, listTrackId) ||
                other.listTrackId == listTrackId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listTrackId);

  /// Create a copy of TracksListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String listTrackId) started,
    required TResult Function(String listTrackId) loadTracks,
  }) {
    return started(listTrackId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String listTrackId)? started,
    TResult? Function(String listTrackId)? loadTracks,
  }) {
    return started?.call(listTrackId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String listTrackId)? started,
    TResult Function(String listTrackId)? loadTracks,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(listTrackId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadTracks value) loadTracks,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadTracks value)? loadTracks,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadTracks value)? loadTracks,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TracksListEvent {
  const factory _Started({required final String listTrackId}) = _$StartedImpl;

  @override
  String get listTrackId;

  /// Create a copy of TracksListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTracksImplCopyWith<$Res>
    implements $TracksListEventCopyWith<$Res> {
  factory _$$LoadTracksImplCopyWith(
          _$LoadTracksImpl value, $Res Function(_$LoadTracksImpl) then) =
      __$$LoadTracksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String listTrackId});
}

/// @nodoc
class __$$LoadTracksImplCopyWithImpl<$Res>
    extends _$TracksListEventCopyWithImpl<$Res, _$LoadTracksImpl>
    implements _$$LoadTracksImplCopyWith<$Res> {
  __$$LoadTracksImplCopyWithImpl(
      _$LoadTracksImpl _value, $Res Function(_$LoadTracksImpl) _then)
      : super(_value, _then);

  /// Create a copy of TracksListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listTrackId = null,
  }) {
    return _then(_$LoadTracksImpl(
      listTrackId: null == listTrackId
          ? _value.listTrackId
          : listTrackId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadTracksImpl implements _LoadTracks {
  const _$LoadTracksImpl({required this.listTrackId});

  @override
  final String listTrackId;

  @override
  String toString() {
    return 'TracksListEvent.loadTracks(listTrackId: $listTrackId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTracksImpl &&
            (identical(other.listTrackId, listTrackId) ||
                other.listTrackId == listTrackId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listTrackId);

  /// Create a copy of TracksListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTracksImplCopyWith<_$LoadTracksImpl> get copyWith =>
      __$$LoadTracksImplCopyWithImpl<_$LoadTracksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String listTrackId) started,
    required TResult Function(String listTrackId) loadTracks,
  }) {
    return loadTracks(listTrackId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String listTrackId)? started,
    TResult? Function(String listTrackId)? loadTracks,
  }) {
    return loadTracks?.call(listTrackId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String listTrackId)? started,
    TResult Function(String listTrackId)? loadTracks,
    required TResult orElse(),
  }) {
    if (loadTracks != null) {
      return loadTracks(listTrackId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadTracks value) loadTracks,
  }) {
    return loadTracks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadTracks value)? loadTracks,
  }) {
    return loadTracks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadTracks value)? loadTracks,
    required TResult orElse(),
  }) {
    if (loadTracks != null) {
      return loadTracks(this);
    }
    return orElse();
  }
}

abstract class _LoadTracks implements TracksListEvent {
  const factory _LoadTracks({required final String listTrackId}) =
      _$LoadTracksImpl;

  @override
  String get listTrackId;

  /// Create a copy of TracksListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTracksImplCopyWith<_$LoadTracksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TracksListState {
// Data fields
  List<TrackItem> get tracks =>
      throw _privateConstructorUsedError; // Status fields
  Status get statusLoadTracks => throw _privateConstructorUsedError;

  /// Create a copy of TracksListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TracksListStateCopyWith<TracksListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TracksListStateCopyWith<$Res> {
  factory $TracksListStateCopyWith(
          TracksListState value, $Res Function(TracksListState) then) =
      _$TracksListStateCopyWithImpl<$Res, TracksListState>;
  @useResult
  $Res call({List<TrackItem> tracks, Status statusLoadTracks});

  $StatusCopyWith<$Res> get statusLoadTracks;
}

/// @nodoc
class _$TracksListStateCopyWithImpl<$Res, $Val extends TracksListState>
    implements $TracksListStateCopyWith<$Res> {
  _$TracksListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TracksListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tracks = null,
    Object? statusLoadTracks = null,
  }) {
    return _then(_value.copyWith(
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<TrackItem>,
      statusLoadTracks: null == statusLoadTracks
          ? _value.statusLoadTracks
          : statusLoadTracks // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  /// Create a copy of TracksListState
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
abstract class _$$TracksListStateImplCopyWith<$Res>
    implements $TracksListStateCopyWith<$Res> {
  factory _$$TracksListStateImplCopyWith(_$TracksListStateImpl value,
          $Res Function(_$TracksListStateImpl) then) =
      __$$TracksListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TrackItem> tracks, Status statusLoadTracks});

  @override
  $StatusCopyWith<$Res> get statusLoadTracks;
}

/// @nodoc
class __$$TracksListStateImplCopyWithImpl<$Res>
    extends _$TracksListStateCopyWithImpl<$Res, _$TracksListStateImpl>
    implements _$$TracksListStateImplCopyWith<$Res> {
  __$$TracksListStateImplCopyWithImpl(
      _$TracksListStateImpl _value, $Res Function(_$TracksListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TracksListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tracks = null,
    Object? statusLoadTracks = null,
  }) {
    return _then(_$TracksListStateImpl(
      tracks: null == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<TrackItem>,
      statusLoadTracks: null == statusLoadTracks
          ? _value.statusLoadTracks
          : statusLoadTracks // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$TracksListStateImpl implements _TracksListState {
  const _$TracksListStateImpl(
      {final List<TrackItem> tracks = const [],
      this.statusLoadTracks = const Status.idle()})
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

// Status fields
  @override
  @JsonKey()
  final Status statusLoadTracks;

  @override
  String toString() {
    return 'TracksListState(tracks: $tracks, statusLoadTracks: $statusLoadTracks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TracksListStateImpl &&
            const DeepCollectionEquality().equals(other._tracks, _tracks) &&
            (identical(other.statusLoadTracks, statusLoadTracks) ||
                other.statusLoadTracks == statusLoadTracks));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_tracks), statusLoadTracks);

  /// Create a copy of TracksListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TracksListStateImplCopyWith<_$TracksListStateImpl> get copyWith =>
      __$$TracksListStateImplCopyWithImpl<_$TracksListStateImpl>(
          this, _$identity);
}

abstract class _TracksListState implements TracksListState {
  const factory _TracksListState(
      {final List<TrackItem> tracks,
      final Status statusLoadTracks}) = _$TracksListStateImpl;

// Data fields
  @override
  List<TrackItem> get tracks; // Status fields
  @override
  Status get statusLoadTracks;

  /// Create a copy of TracksListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TracksListStateImplCopyWith<_$TracksListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
