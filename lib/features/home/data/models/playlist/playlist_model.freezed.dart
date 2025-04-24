// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaylistModel _$PlaylistModelFromJson(Map<String, dynamic> json) {
  return _PlaylistModel.fromJson(json);
}

/// @nodoc
mixin _$PlaylistModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<SourceImage> get images => throw _privateConstructorUsedError;
  OwnerModel get owner => throw _privateConstructorUsedError;
  Map<String, dynamic> get tracks => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this PlaylistModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaylistModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaylistModelCopyWith<PlaylistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistModelCopyWith<$Res> {
  factory $PlaylistModelCopyWith(
          PlaylistModel value, $Res Function(PlaylistModel) then) =
      _$PlaylistModelCopyWithImpl<$Res, PlaylistModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      List<SourceImage> images,
      OwnerModel owner,
      Map<String, dynamic> tracks,
      String type});

  $OwnerModelCopyWith<$Res> get owner;
}

/// @nodoc
class _$PlaylistModelCopyWithImpl<$Res, $Val extends PlaylistModel>
    implements $PlaylistModelCopyWith<$Res> {
  _$PlaylistModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaylistModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? images = null,
    Object? owner = null,
    Object? tracks = null,
    Object? type = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SourceImage>,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerModel,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of PlaylistModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerModelCopyWith<$Res> get owner {
    return $OwnerModelCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaylistModelImplCopyWith<$Res>
    implements $PlaylistModelCopyWith<$Res> {
  factory _$$PlaylistModelImplCopyWith(
          _$PlaylistModelImpl value, $Res Function(_$PlaylistModelImpl) then) =
      __$$PlaylistModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      List<SourceImage> images,
      OwnerModel owner,
      Map<String, dynamic> tracks,
      String type});

  @override
  $OwnerModelCopyWith<$Res> get owner;
}

/// @nodoc
class __$$PlaylistModelImplCopyWithImpl<$Res>
    extends _$PlaylistModelCopyWithImpl<$Res, _$PlaylistModelImpl>
    implements _$$PlaylistModelImplCopyWith<$Res> {
  __$$PlaylistModelImplCopyWithImpl(
      _$PlaylistModelImpl _value, $Res Function(_$PlaylistModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? images = null,
    Object? owner = null,
    Object? tracks = null,
    Object? type = null,
  }) {
    return _then(_$PlaylistModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SourceImage>,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerModel,
      tracks: null == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaylistModelImpl extends _PlaylistModel {
  const _$PlaylistModelImpl(
      {required this.id,
      required this.name,
      required this.description,
      final List<SourceImage> images = const [],
      required this.owner,
      required final Map<String, dynamic> tracks,
      required this.type})
      : _images = images,
        _tracks = tracks,
        super._();

  factory _$PlaylistModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  final List<SourceImage> _images;
  @override
  @JsonKey()
  List<SourceImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final OwnerModel owner;
  final Map<String, dynamic> _tracks;
  @override
  Map<String, dynamic> get tracks {
    if (_tracks is EqualUnmodifiableMapView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tracks);
  }

  @override
  final String type;

  @override
  String toString() {
    return 'PlaylistModel(id: $id, name: $name, description: $description, images: $images, owner: $owner, tracks: $tracks, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_images),
      owner,
      const DeepCollectionEquality().hash(_tracks),
      type);

  /// Create a copy of PlaylistModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistModelImplCopyWith<_$PlaylistModelImpl> get copyWith =>
      __$$PlaylistModelImplCopyWithImpl<_$PlaylistModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistModelImplToJson(
      this,
    );
  }
}

abstract class _PlaylistModel extends PlaylistModel {
  const factory _PlaylistModel(
      {required final String id,
      required final String name,
      required final String description,
      final List<SourceImage> images,
      required final OwnerModel owner,
      required final Map<String, dynamic> tracks,
      required final String type}) = _$PlaylistModelImpl;
  const _PlaylistModel._() : super._();

  factory _PlaylistModel.fromJson(Map<String, dynamic> json) =
      _$PlaylistModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  List<SourceImage> get images;
  @override
  OwnerModel get owner;
  @override
  Map<String, dynamic> get tracks;
  @override
  String get type;

  /// Create a copy of PlaylistModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistModelImplCopyWith<_$PlaylistModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
