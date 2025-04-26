// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackModel _$TrackModelFromJson(Map<String, dynamic> json) {
  return _TrackModel.fromJson(json);
}

/// @nodoc
mixin _$TrackModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Artist> get artists => throw _privateConstructorUsedError;
  AlbumModel get album => throw _privateConstructorUsedError;
  @JsonKey(name: 'preview_url')
  String? get previewUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_ms')
  int get durationMs => throw _privateConstructorUsedError;

  /// Serializes this TrackModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackModelCopyWith<TrackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackModelCopyWith<$Res> {
  factory $TrackModelCopyWith(
          TrackModel value, $Res Function(TrackModel) then) =
      _$TrackModelCopyWithImpl<$Res, TrackModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<Artist> artists,
      AlbumModel album,
      @JsonKey(name: 'preview_url') String? previewUrl,
      @JsonKey(name: 'duration_ms') int durationMs});

  $AlbumModelCopyWith<$Res> get album;
}

/// @nodoc
class _$TrackModelCopyWithImpl<$Res, $Val extends TrackModel>
    implements $TrackModelCopyWith<$Res> {
  _$TrackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? artists = null,
    Object? album = null,
    Object? previewUrl = freezed,
    Object? durationMs = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumModel,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of TrackModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AlbumModelCopyWith<$Res> get album {
    return $AlbumModelCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrackModelImplCopyWith<$Res>
    implements $TrackModelCopyWith<$Res> {
  factory _$$TrackModelImplCopyWith(
          _$TrackModelImpl value, $Res Function(_$TrackModelImpl) then) =
      __$$TrackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<Artist> artists,
      AlbumModel album,
      @JsonKey(name: 'preview_url') String? previewUrl,
      @JsonKey(name: 'duration_ms') int durationMs});

  @override
  $AlbumModelCopyWith<$Res> get album;
}

/// @nodoc
class __$$TrackModelImplCopyWithImpl<$Res>
    extends _$TrackModelCopyWithImpl<$Res, _$TrackModelImpl>
    implements _$$TrackModelImplCopyWith<$Res> {
  __$$TrackModelImplCopyWithImpl(
      _$TrackModelImpl _value, $Res Function(_$TrackModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? artists = null,
    Object? album = null,
    Object? previewUrl = freezed,
    Object? durationMs = null,
  }) {
    return _then(_$TrackModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumModel,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackModelImpl extends _TrackModel {
  const _$TrackModelImpl(
      {required this.id,
      required this.name,
      required final List<Artist> artists,
      required this.album,
      @JsonKey(name: 'preview_url') this.previewUrl = null,
      @JsonKey(name: 'duration_ms') required this.durationMs})
      : _artists = artists,
        super._();

  factory _$TrackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<Artist> _artists;
  @override
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final AlbumModel album;
  @override
  @JsonKey(name: 'preview_url')
  final String? previewUrl;
  @override
  @JsonKey(name: 'duration_ms')
  final int durationMs;

  @override
  String toString() {
    return 'TrackModel(id: $id, name: $name, artists: $artists, album: $album, previewUrl: $previewUrl, durationMs: $durationMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_artists),
      album,
      previewUrl,
      durationMs);

  /// Create a copy of TrackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackModelImplCopyWith<_$TrackModelImpl> get copyWith =>
      __$$TrackModelImplCopyWithImpl<_$TrackModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackModelImplToJson(
      this,
    );
  }
}

abstract class _TrackModel extends TrackModel {
  const factory _TrackModel(
          {required final String id,
          required final String name,
          required final List<Artist> artists,
          required final AlbumModel album,
          @JsonKey(name: 'preview_url') final String? previewUrl,
          @JsonKey(name: 'duration_ms') required final int durationMs}) =
      _$TrackModelImpl;
  const _TrackModel._() : super._();

  factory _TrackModel.fromJson(Map<String, dynamic> json) =
      _$TrackModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Artist> get artists;
  @override
  AlbumModel get album;
  @override
  @JsonKey(name: 'preview_url')
  String? get previewUrl;
  @override
  @JsonKey(name: 'duration_ms')
  int get durationMs;

  /// Create a copy of TrackModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackModelImplCopyWith<_$TrackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
