// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackItemModel _$TrackItemModelFromJson(Map<String, dynamic> json) {
  return _TrackItemModel.fromJson(json);
}

/// @nodoc
mixin _$TrackItemModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError; // remove JsonKey here
  List<String> get artists => throw _privateConstructorUsedError;
  int get durationMs => throw _privateConstructorUsedError;
  int get trackNumber => throw _privateConstructorUsedError;
  List<SourceImage> get images => throw _privateConstructorUsedError;
  AlbumModel? get album => throw _privateConstructorUsedError;

  /// Serializes this TrackItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrackItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackItemModelCopyWith<TrackItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackItemModelCopyWith<$Res> {
  factory $TrackItemModelCopyWith(
          TrackItemModel value, $Res Function(TrackItemModel) then) =
      _$TrackItemModelCopyWithImpl<$Res, TrackItemModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> artists,
      int durationMs,
      int trackNumber,
      List<SourceImage> images,
      AlbumModel? album});

  $AlbumModelCopyWith<$Res>? get album;
}

/// @nodoc
class _$TrackItemModelCopyWithImpl<$Res, $Val extends TrackItemModel>
    implements $TrackItemModelCopyWith<$Res> {
  _$TrackItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? artists = null,
    Object? durationMs = null,
    Object? trackNumber = null,
    Object? images = null,
    Object? album = freezed,
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
              as List<String>,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SourceImage>,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumModel?,
    ) as $Val);
  }

  /// Create a copy of TrackItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AlbumModelCopyWith<$Res>? get album {
    if (_value.album == null) {
      return null;
    }

    return $AlbumModelCopyWith<$Res>(_value.album!, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrackItemModelImplCopyWith<$Res>
    implements $TrackItemModelCopyWith<$Res> {
  factory _$$TrackItemModelImplCopyWith(_$TrackItemModelImpl value,
          $Res Function(_$TrackItemModelImpl) then) =
      __$$TrackItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> artists,
      int durationMs,
      int trackNumber,
      List<SourceImage> images,
      AlbumModel? album});

  @override
  $AlbumModelCopyWith<$Res>? get album;
}

/// @nodoc
class __$$TrackItemModelImplCopyWithImpl<$Res>
    extends _$TrackItemModelCopyWithImpl<$Res, _$TrackItemModelImpl>
    implements _$$TrackItemModelImplCopyWith<$Res> {
  __$$TrackItemModelImplCopyWithImpl(
      _$TrackItemModelImpl _value, $Res Function(_$TrackItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? artists = null,
    Object? durationMs = null,
    Object? trackNumber = null,
    Object? images = null,
    Object? album = freezed,
  }) {
    return _then(_$TrackItemModelImpl(
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
              as List<String>,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SourceImage>,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackItemModelImpl extends _TrackItemModel
    with DiagnosticableTreeMixin {
  const _$TrackItemModelImpl(
      {required this.id,
      required this.name,
      required final List<String> artists,
      required this.durationMs,
      required this.trackNumber,
      final List<SourceImage> images = const [],
      this.album})
      : _artists = artists,
        _images = images,
        super._();

  factory _$TrackItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackItemModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
// remove JsonKey here
  final List<String> _artists;
// remove JsonKey here
  @override
  List<String> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final int durationMs;
  @override
  final int trackNumber;
  final List<SourceImage> _images;
  @override
  @JsonKey()
  List<SourceImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final AlbumModel? album;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackItemModel(id: $id, name: $name, artists: $artists, durationMs: $durationMs, trackNumber: $trackNumber, images: $images, album: $album)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackItemModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('artists', artists))
      ..add(DiagnosticsProperty('durationMs', durationMs))
      ..add(DiagnosticsProperty('trackNumber', trackNumber))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('album', album));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.album, album) || other.album == album));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_artists),
      durationMs,
      trackNumber,
      const DeepCollectionEquality().hash(_images),
      album);

  /// Create a copy of TrackItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackItemModelImplCopyWith<_$TrackItemModelImpl> get copyWith =>
      __$$TrackItemModelImplCopyWithImpl<_$TrackItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackItemModelImplToJson(
      this,
    );
  }
}

abstract class _TrackItemModel extends TrackItemModel {
  const factory _TrackItemModel(
      {required final String id,
      required final String name,
      required final List<String> artists,
      required final int durationMs,
      required final int trackNumber,
      final List<SourceImage> images,
      final AlbumModel? album}) = _$TrackItemModelImpl;
  const _TrackItemModel._() : super._();

  factory _TrackItemModel.fromJson(Map<String, dynamic> json) =
      _$TrackItemModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name; // remove JsonKey here
  @override
  List<String> get artists;
  @override
  int get durationMs;
  @override
  int get trackNumber;
  @override
  List<SourceImage> get images;
  @override
  AlbumModel? get album;

  /// Create a copy of TrackItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackItemModelImplCopyWith<_$TrackItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
