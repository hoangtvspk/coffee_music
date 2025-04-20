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
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _artistsFromJson)
  List<String> get artists => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_ms')
  int get durationMs => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_number')
  int get trackNumber => throw _privateConstructorUsedError;

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
      @JsonKey(fromJson: _artistsFromJson) List<String> artists,
      @JsonKey(name: 'duration_ms') int durationMs,
      @JsonKey(name: 'track_number') int trackNumber});
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
    ) as $Val);
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
      @JsonKey(fromJson: _artistsFromJson) List<String> artists,
      @JsonKey(name: 'duration_ms') int durationMs,
      @JsonKey(name: 'track_number') int trackNumber});
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
      @JsonKey(fromJson: _artistsFromJson) required final List<String> artists,
      @JsonKey(name: 'duration_ms') required this.durationMs,
      @JsonKey(name: 'track_number') required this.trackNumber})
      : _artists = artists,
        super._();

  factory _$TrackItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackItemModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<String> _artists;
  @override
  @JsonKey(fromJson: _artistsFromJson)
  List<String> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  @JsonKey(name: 'duration_ms')
  final int durationMs;
  @override
  @JsonKey(name: 'track_number')
  final int trackNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackItemModel(id: $id, name: $name, artists: $artists, durationMs: $durationMs, trackNumber: $trackNumber)';
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
      ..add(DiagnosticsProperty('trackNumber', trackNumber));
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
                other.trackNumber == trackNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_artists), durationMs, trackNumber);

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
      @JsonKey(fromJson: _artistsFromJson) required final List<String> artists,
      @JsonKey(name: 'duration_ms') required final int durationMs,
      @JsonKey(name: 'track_number')
      required final int trackNumber}) = _$TrackItemModelImpl;
  const _TrackItemModel._() : super._();

  factory _TrackItemModel.fromJson(Map<String, dynamic> json) =
      _$TrackItemModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(fromJson: _artistsFromJson)
  List<String> get artists;
  @override
  @JsonKey(name: 'duration_ms')
  int get durationMs;
  @override
  @JsonKey(name: 'track_number')
  int get trackNumber;

  /// Create a copy of TrackItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackItemModelImplCopyWith<_$TrackItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
