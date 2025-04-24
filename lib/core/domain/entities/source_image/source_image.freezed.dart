// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SourceImage _$SourceImageFromJson(Map<String, dynamic> json) {
  return _SourceImage.fromJson(json);
}

/// @nodoc
mixin _$SourceImage {
  String get url => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  /// Serializes this SourceImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SourceImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SourceImageCopyWith<SourceImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceImageCopyWith<$Res> {
  factory $SourceImageCopyWith(
          SourceImage value, $Res Function(SourceImage) then) =
      _$SourceImageCopyWithImpl<$Res, SourceImage>;
  @useResult
  $Res call({String url, int height, int width});
}

/// @nodoc
class _$SourceImageCopyWithImpl<$Res, $Val extends SourceImage>
    implements $SourceImageCopyWith<$Res> {
  _$SourceImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SourceImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceImageImplCopyWith<$Res>
    implements $SourceImageCopyWith<$Res> {
  factory _$$SourceImageImplCopyWith(
          _$SourceImageImpl value, $Res Function(_$SourceImageImpl) then) =
      __$$SourceImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, int height, int width});
}

/// @nodoc
class __$$SourceImageImplCopyWithImpl<$Res>
    extends _$SourceImageCopyWithImpl<$Res, _$SourceImageImpl>
    implements _$$SourceImageImplCopyWith<$Res> {
  __$$SourceImageImplCopyWithImpl(
      _$SourceImageImpl _value, $Res Function(_$SourceImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SourceImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_$SourceImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceImageImpl with DiagnosticableTreeMixin implements _SourceImage {
  const _$SourceImageImpl(
      {required this.url, required this.height, required this.width});

  factory _$SourceImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceImageImplFromJson(json);

  @override
  final String url;
  @override
  final int height;
  @override
  final int width;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SourceImage(url: $url, height: $height, width: $width)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SourceImage'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('width', width));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceImageImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, height, width);

  /// Create a copy of SourceImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceImageImplCopyWith<_$SourceImageImpl> get copyWith =>
      __$$SourceImageImplCopyWithImpl<_$SourceImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceImageImplToJson(
      this,
    );
  }
}

abstract class _SourceImage implements SourceImage {
  const factory _SourceImage(
      {required final String url,
      required final int height,
      required final int width}) = _$SourceImageImpl;

  factory _SourceImage.fromJson(Map<String, dynamic> json) =
      _$SourceImageImpl.fromJson;

  @override
  String get url;
  @override
  int get height;
  @override
  int get width;

  /// Create a copy of SourceImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SourceImageImplCopyWith<_$SourceImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
