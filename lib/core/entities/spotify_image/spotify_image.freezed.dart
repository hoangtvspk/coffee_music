// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotifyImage _$SpotifyImageFromJson(Map<String, dynamic> json) {
  return _SpotifyImage.fromJson(json);
}

/// @nodoc
mixin _$SpotifyImage {
  String get url => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  /// Serializes this SpotifyImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotifyImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotifyImageCopyWith<SpotifyImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyImageCopyWith<$Res> {
  factory $SpotifyImageCopyWith(
          SpotifyImage value, $Res Function(SpotifyImage) then) =
      _$SpotifyImageCopyWithImpl<$Res, SpotifyImage>;
  @useResult
  $Res call({String url, int height, int width});
}

/// @nodoc
class _$SpotifyImageCopyWithImpl<$Res, $Val extends SpotifyImage>
    implements $SpotifyImageCopyWith<$Res> {
  _$SpotifyImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotifyImage
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
abstract class _$$SpotifyImageImplCopyWith<$Res>
    implements $SpotifyImageCopyWith<$Res> {
  factory _$$SpotifyImageImplCopyWith(
          _$SpotifyImageImpl value, $Res Function(_$SpotifyImageImpl) then) =
      __$$SpotifyImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, int height, int width});
}

/// @nodoc
class __$$SpotifyImageImplCopyWithImpl<$Res>
    extends _$SpotifyImageCopyWithImpl<$Res, _$SpotifyImageImpl>
    implements _$$SpotifyImageImplCopyWith<$Res> {
  __$$SpotifyImageImplCopyWithImpl(
      _$SpotifyImageImpl _value, $Res Function(_$SpotifyImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotifyImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_$SpotifyImageImpl(
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
class _$SpotifyImageImpl with DiagnosticableTreeMixin implements _SpotifyImage {
  const _$SpotifyImageImpl(
      {required this.url, required this.height, required this.width});

  factory _$SpotifyImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyImageImplFromJson(json);

  @override
  final String url;
  @override
  final int height;
  @override
  final int width;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpotifyImage(url: $url, height: $height, width: $width)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpotifyImage'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('width', width));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyImageImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, height, width);

  /// Create a copy of SpotifyImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyImageImplCopyWith<_$SpotifyImageImpl> get copyWith =>
      __$$SpotifyImageImplCopyWithImpl<_$SpotifyImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyImageImplToJson(
      this,
    );
  }
}

abstract class _SpotifyImage implements SpotifyImage {
  const factory _SpotifyImage(
      {required final String url,
      required final int height,
      required final int width}) = _$SpotifyImageImpl;

  factory _SpotifyImage.fromJson(Map<String, dynamic> json) =
      _$SpotifyImageImpl.fromJson;

  @override
  String get url;
  @override
  int get height;
  @override
  int get width;

  /// Create a copy of SpotifyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotifyImageImplCopyWith<_$SpotifyImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
