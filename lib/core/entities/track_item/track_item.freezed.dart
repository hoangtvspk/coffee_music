// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackItem _$TrackItemFromJson(Map<String, dynamic> json) {
  return _TrackItem.fromJson(json);
}

/// @nodoc
mixin _$TrackItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<SpotifyImage> get images => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this TrackItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrackItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackItemCopyWith<TrackItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackItemCopyWith<$Res> {
  factory $TrackItemCopyWith(TrackItem value, $Res Function(TrackItem) then) =
      _$TrackItemCopyWithImpl<$Res, TrackItem>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<SpotifyImage> images,
      String uri,
      String type});
}

/// @nodoc
class _$TrackItemCopyWithImpl<$Res, $Val extends TrackItem>
    implements $TrackItemCopyWith<$Res> {
  _$TrackItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? uri = null,
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
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImage>,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackItemImplCopyWith<$Res>
    implements $TrackItemCopyWith<$Res> {
  factory _$$TrackItemImplCopyWith(
          _$TrackItemImpl value, $Res Function(_$TrackItemImpl) then) =
      __$$TrackItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<SpotifyImage> images,
      String uri,
      String type});
}

/// @nodoc
class __$$TrackItemImplCopyWithImpl<$Res>
    extends _$TrackItemCopyWithImpl<$Res, _$TrackItemImpl>
    implements _$$TrackItemImplCopyWith<$Res> {
  __$$TrackItemImplCopyWithImpl(
      _$TrackItemImpl _value, $Res Function(_$TrackItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? uri = null,
    Object? type = null,
  }) {
    return _then(_$TrackItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImage>,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackItemImpl with DiagnosticableTreeMixin implements _TrackItem {
  const _$TrackItemImpl(
      {required this.id,
      required this.name,
      required final List<SpotifyImage> images,
      required this.uri,
      required this.type})
      : _images = images;

  factory _$TrackItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<SpotifyImage> _images;
  @override
  List<SpotifyImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String uri;
  @override
  final String type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackItem(id: $id, name: $name, images: $images, uri: $uri, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('uri', uri))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_images), uri, type);

  /// Create a copy of TrackItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackItemImplCopyWith<_$TrackItemImpl> get copyWith =>
      __$$TrackItemImplCopyWithImpl<_$TrackItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackItemImplToJson(
      this,
    );
  }
}

abstract class _TrackItem implements TrackItem {
  const factory _TrackItem(
      {required final String id,
      required final String name,
      required final List<SpotifyImage> images,
      required final String uri,
      required final String type}) = _$TrackItemImpl;

  factory _TrackItem.fromJson(Map<String, dynamic> json) =
      _$TrackItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<SpotifyImage> get images;
  @override
  String get uri;
  @override
  String get type;

  /// Create a copy of TrackItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackItemImplCopyWith<_$TrackItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
