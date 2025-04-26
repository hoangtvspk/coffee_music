// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playback_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaybackState _$PlaybackStateFromJson(Map<String, dynamic> json) {
  return _PlaybackState.fromJson(json);
}

/// @nodoc
mixin _$PlaybackState {
  Device? get device => throw _privateConstructorUsedError;
  @JsonKey(name: 'repeat_state')
  String? get repeatState => throw _privateConstructorUsedError;
  @JsonKey(name: 'shuffle_state')
  bool? get shuffleState => throw _privateConstructorUsedError;
  Context? get context => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'progress_ms')
  int? get progressMs => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_playing')
  bool? get isPlaying => throw _privateConstructorUsedError;
  Track? get item => throw _privateConstructorUsedError;
  @JsonKey(name: 'currently_playing_type')
  String? get currentlyPlayingType => throw _privateConstructorUsedError;
  PlayerActions? get actions => throw _privateConstructorUsedError;

  /// Serializes this PlaybackState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaybackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaybackStateCopyWith<PlaybackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaybackStateCopyWith<$Res> {
  factory $PlaybackStateCopyWith(
          PlaybackState value, $Res Function(PlaybackState) then) =
      _$PlaybackStateCopyWithImpl<$Res, PlaybackState>;
  @useResult
  $Res call(
      {Device? device,
      @JsonKey(name: 'repeat_state') String? repeatState,
      @JsonKey(name: 'shuffle_state') bool? shuffleState,
      Context? context,
      int? timestamp,
      @JsonKey(name: 'progress_ms') int? progressMs,
      @JsonKey(name: 'is_playing') bool? isPlaying,
      Track? item,
      @JsonKey(name: 'currently_playing_type') String? currentlyPlayingType,
      PlayerActions? actions});

  $DeviceCopyWith<$Res>? get device;
  $ContextCopyWith<$Res>? get context;
  $TrackCopyWith<$Res>? get item;
  $PlayerActionsCopyWith<$Res>? get actions;
}

/// @nodoc
class _$PlaybackStateCopyWithImpl<$Res, $Val extends PlaybackState>
    implements $PlaybackStateCopyWith<$Res> {
  _$PlaybackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaybackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = freezed,
    Object? repeatState = freezed,
    Object? shuffleState = freezed,
    Object? context = freezed,
    Object? timestamp = freezed,
    Object? progressMs = freezed,
    Object? isPlaying = freezed,
    Object? item = freezed,
    Object? currentlyPlayingType = freezed,
    Object? actions = freezed,
  }) {
    return _then(_value.copyWith(
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device?,
      repeatState: freezed == repeatState
          ? _value.repeatState
          : repeatState // ignore: cast_nullable_to_non_nullable
              as String?,
      shuffleState: freezed == shuffleState
          ? _value.shuffleState
          : shuffleState // ignore: cast_nullable_to_non_nullable
              as bool?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      progressMs: freezed == progressMs
          ? _value.progressMs
          : progressMs // ignore: cast_nullable_to_non_nullable
              as int?,
      isPlaying: freezed == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Track?,
      currentlyPlayingType: freezed == currentlyPlayingType
          ? _value.currentlyPlayingType
          : currentlyPlayingType // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as PlayerActions?,
    ) as $Val);
  }

  /// Create a copy of PlaybackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeviceCopyWith<$Res>? get device {
    if (_value.device == null) {
      return null;
    }

    return $DeviceCopyWith<$Res>(_value.device!, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }

  /// Create a copy of PlaybackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContextCopyWith<$Res>? get context {
    if (_value.context == null) {
      return null;
    }

    return $ContextCopyWith<$Res>(_value.context!, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }

  /// Create a copy of PlaybackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $TrackCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }

  /// Create a copy of PlaybackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerActionsCopyWith<$Res>? get actions {
    if (_value.actions == null) {
      return null;
    }

    return $PlayerActionsCopyWith<$Res>(_value.actions!, (value) {
      return _then(_value.copyWith(actions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaybackStateImplCopyWith<$Res>
    implements $PlaybackStateCopyWith<$Res> {
  factory _$$PlaybackStateImplCopyWith(
          _$PlaybackStateImpl value, $Res Function(_$PlaybackStateImpl) then) =
      __$$PlaybackStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Device? device,
      @JsonKey(name: 'repeat_state') String? repeatState,
      @JsonKey(name: 'shuffle_state') bool? shuffleState,
      Context? context,
      int? timestamp,
      @JsonKey(name: 'progress_ms') int? progressMs,
      @JsonKey(name: 'is_playing') bool? isPlaying,
      Track? item,
      @JsonKey(name: 'currently_playing_type') String? currentlyPlayingType,
      PlayerActions? actions});

  @override
  $DeviceCopyWith<$Res>? get device;
  @override
  $ContextCopyWith<$Res>? get context;
  @override
  $TrackCopyWith<$Res>? get item;
  @override
  $PlayerActionsCopyWith<$Res>? get actions;
}

/// @nodoc
class __$$PlaybackStateImplCopyWithImpl<$Res>
    extends _$PlaybackStateCopyWithImpl<$Res, _$PlaybackStateImpl>
    implements _$$PlaybackStateImplCopyWith<$Res> {
  __$$PlaybackStateImplCopyWithImpl(
      _$PlaybackStateImpl _value, $Res Function(_$PlaybackStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaybackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = freezed,
    Object? repeatState = freezed,
    Object? shuffleState = freezed,
    Object? context = freezed,
    Object? timestamp = freezed,
    Object? progressMs = freezed,
    Object? isPlaying = freezed,
    Object? item = freezed,
    Object? currentlyPlayingType = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$PlaybackStateImpl(
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device?,
      repeatState: freezed == repeatState
          ? _value.repeatState
          : repeatState // ignore: cast_nullable_to_non_nullable
              as String?,
      shuffleState: freezed == shuffleState
          ? _value.shuffleState
          : shuffleState // ignore: cast_nullable_to_non_nullable
              as bool?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      progressMs: freezed == progressMs
          ? _value.progressMs
          : progressMs // ignore: cast_nullable_to_non_nullable
              as int?,
      isPlaying: freezed == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Track?,
      currentlyPlayingType: freezed == currentlyPlayingType
          ? _value.currentlyPlayingType
          : currentlyPlayingType // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as PlayerActions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaybackStateImpl implements _PlaybackState {
  const _$PlaybackStateImpl(
      {this.device,
      @JsonKey(name: 'repeat_state') this.repeatState,
      @JsonKey(name: 'shuffle_state') this.shuffleState,
      this.context,
      this.timestamp,
      @JsonKey(name: 'progress_ms') this.progressMs,
      @JsonKey(name: 'is_playing') this.isPlaying,
      this.item,
      @JsonKey(name: 'currently_playing_type') this.currentlyPlayingType,
      this.actions});

  factory _$PlaybackStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaybackStateImplFromJson(json);

  @override
  final Device? device;
  @override
  @JsonKey(name: 'repeat_state')
  final String? repeatState;
  @override
  @JsonKey(name: 'shuffle_state')
  final bool? shuffleState;
  @override
  final Context? context;
  @override
  final int? timestamp;
  @override
  @JsonKey(name: 'progress_ms')
  final int? progressMs;
  @override
  @JsonKey(name: 'is_playing')
  final bool? isPlaying;
  @override
  final Track? item;
  @override
  @JsonKey(name: 'currently_playing_type')
  final String? currentlyPlayingType;
  @override
  final PlayerActions? actions;

  @override
  String toString() {
    return 'PlaybackState(device: $device, repeatState: $repeatState, shuffleState: $shuffleState, context: $context, timestamp: $timestamp, progressMs: $progressMs, isPlaying: $isPlaying, item: $item, currentlyPlayingType: $currentlyPlayingType, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaybackStateImpl &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.repeatState, repeatState) ||
                other.repeatState == repeatState) &&
            (identical(other.shuffleState, shuffleState) ||
                other.shuffleState == shuffleState) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.progressMs, progressMs) ||
                other.progressMs == progressMs) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.currentlyPlayingType, currentlyPlayingType) ||
                other.currentlyPlayingType == currentlyPlayingType) &&
            (identical(other.actions, actions) || other.actions == actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      device,
      repeatState,
      shuffleState,
      context,
      timestamp,
      progressMs,
      isPlaying,
      item,
      currentlyPlayingType,
      actions);

  /// Create a copy of PlaybackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaybackStateImplCopyWith<_$PlaybackStateImpl> get copyWith =>
      __$$PlaybackStateImplCopyWithImpl<_$PlaybackStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaybackStateImplToJson(
      this,
    );
  }
}

abstract class _PlaybackState implements PlaybackState {
  const factory _PlaybackState(
      {final Device? device,
      @JsonKey(name: 'repeat_state') final String? repeatState,
      @JsonKey(name: 'shuffle_state') final bool? shuffleState,
      final Context? context,
      final int? timestamp,
      @JsonKey(name: 'progress_ms') final int? progressMs,
      @JsonKey(name: 'is_playing') final bool? isPlaying,
      final Track? item,
      @JsonKey(name: 'currently_playing_type')
      final String? currentlyPlayingType,
      final PlayerActions? actions}) = _$PlaybackStateImpl;

  factory _PlaybackState.fromJson(Map<String, dynamic> json) =
      _$PlaybackStateImpl.fromJson;

  @override
  Device? get device;
  @override
  @JsonKey(name: 'repeat_state')
  String? get repeatState;
  @override
  @JsonKey(name: 'shuffle_state')
  bool? get shuffleState;
  @override
  Context? get context;
  @override
  int? get timestamp;
  @override
  @JsonKey(name: 'progress_ms')
  int? get progressMs;
  @override
  @JsonKey(name: 'is_playing')
  bool? get isPlaying;
  @override
  Track? get item;
  @override
  @JsonKey(name: 'currently_playing_type')
  String? get currentlyPlayingType;
  @override
  PlayerActions? get actions;

  /// Create a copy of PlaybackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaybackStateImplCopyWith<_$PlaybackStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return _Device.fromJson(json);
}

/// @nodoc
mixin _$Device {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_private_session')
  bool? get isPrivateSession => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_restricted')
  bool? get isRestricted => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'volume_percent')
  int? get volumePercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'supports_volume')
  bool? get supportsVolume => throw _privateConstructorUsedError;

  /// Serializes this Device to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceCopyWith<Device> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
      _$DeviceCopyWithImpl<$Res, Device>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'is_private_session') bool? isPrivateSession,
      @JsonKey(name: 'is_restricted') bool? isRestricted,
      String? name,
      String? type,
      @JsonKey(name: 'volume_percent') int? volumePercent,
      @JsonKey(name: 'supports_volume') bool? supportsVolume});
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res, $Val extends Device>
    implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = freezed,
    Object? isPrivateSession = freezed,
    Object? isRestricted = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? volumePercent = freezed,
    Object? supportsVolume = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPrivateSession: freezed == isPrivateSession
          ? _value.isPrivateSession
          : isPrivateSession // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRestricted: freezed == isRestricted
          ? _value.isRestricted
          : isRestricted // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      volumePercent: freezed == volumePercent
          ? _value.volumePercent
          : volumePercent // ignore: cast_nullable_to_non_nullable
              as int?,
      supportsVolume: freezed == supportsVolume
          ? _value.supportsVolume
          : supportsVolume // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceImplCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$$DeviceImplCopyWith(
          _$DeviceImpl value, $Res Function(_$DeviceImpl) then) =
      __$$DeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'is_private_session') bool? isPrivateSession,
      @JsonKey(name: 'is_restricted') bool? isRestricted,
      String? name,
      String? type,
      @JsonKey(name: 'volume_percent') int? volumePercent,
      @JsonKey(name: 'supports_volume') bool? supportsVolume});
}

/// @nodoc
class __$$DeviceImplCopyWithImpl<$Res>
    extends _$DeviceCopyWithImpl<$Res, _$DeviceImpl>
    implements _$$DeviceImplCopyWith<$Res> {
  __$$DeviceImplCopyWithImpl(
      _$DeviceImpl _value, $Res Function(_$DeviceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = freezed,
    Object? isPrivateSession = freezed,
    Object? isRestricted = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? volumePercent = freezed,
    Object? supportsVolume = freezed,
  }) {
    return _then(_$DeviceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPrivateSession: freezed == isPrivateSession
          ? _value.isPrivateSession
          : isPrivateSession // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRestricted: freezed == isRestricted
          ? _value.isRestricted
          : isRestricted // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      volumePercent: freezed == volumePercent
          ? _value.volumePercent
          : volumePercent // ignore: cast_nullable_to_non_nullable
              as int?,
      supportsVolume: freezed == supportsVolume
          ? _value.supportsVolume
          : supportsVolume // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceImpl implements _Device {
  const _$DeviceImpl(
      {this.id,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'is_private_session') this.isPrivateSession,
      @JsonKey(name: 'is_restricted') this.isRestricted,
      this.name,
      this.type,
      @JsonKey(name: 'volume_percent') this.volumePercent,
      @JsonKey(name: 'supports_volume') this.supportsVolume});

  factory _$DeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'is_private_session')
  final bool? isPrivateSession;
  @override
  @JsonKey(name: 'is_restricted')
  final bool? isRestricted;
  @override
  final String? name;
  @override
  final String? type;
  @override
  @JsonKey(name: 'volume_percent')
  final int? volumePercent;
  @override
  @JsonKey(name: 'supports_volume')
  final bool? supportsVolume;

  @override
  String toString() {
    return 'Device(id: $id, isActive: $isActive, isPrivateSession: $isPrivateSession, isRestricted: $isRestricted, name: $name, type: $type, volumePercent: $volumePercent, supportsVolume: $supportsVolume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isPrivateSession, isPrivateSession) ||
                other.isPrivateSession == isPrivateSession) &&
            (identical(other.isRestricted, isRestricted) ||
                other.isRestricted == isRestricted) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.volumePercent, volumePercent) ||
                other.volumePercent == volumePercent) &&
            (identical(other.supportsVolume, supportsVolume) ||
                other.supportsVolume == supportsVolume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, isActive, isPrivateSession,
      isRestricted, name, type, volumePercent, supportsVolume);

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceImplCopyWith<_$DeviceImpl> get copyWith =>
      __$$DeviceImplCopyWithImpl<_$DeviceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceImplToJson(
      this,
    );
  }
}

abstract class _Device implements Device {
  const factory _Device(
          {final String? id,
          @JsonKey(name: 'is_active') final bool? isActive,
          @JsonKey(name: 'is_private_session') final bool? isPrivateSession,
          @JsonKey(name: 'is_restricted') final bool? isRestricted,
          final String? name,
          final String? type,
          @JsonKey(name: 'volume_percent') final int? volumePercent,
          @JsonKey(name: 'supports_volume') final bool? supportsVolume}) =
      _$DeviceImpl;

  factory _Device.fromJson(Map<String, dynamic> json) = _$DeviceImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'is_private_session')
  bool? get isPrivateSession;
  @override
  @JsonKey(name: 'is_restricted')
  bool? get isRestricted;
  @override
  String? get name;
  @override
  String? get type;
  @override
  @JsonKey(name: 'volume_percent')
  int? get volumePercent;
  @override
  @JsonKey(name: 'supports_volume')
  bool? get supportsVolume;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceImplCopyWith<_$DeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Context _$ContextFromJson(Map<String, dynamic> json) {
  return _Context.fromJson(json);
}

/// @nodoc
mixin _$Context {
  String get type => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;

  /// Serializes this Context to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Context
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContextCopyWith<Context> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextCopyWith<$Res> {
  factory $ContextCopyWith(Context value, $Res Function(Context) then) =
      _$ContextCopyWithImpl<$Res, Context>;
  @useResult
  $Res call({String type, String href, ExternalUrls externalUrls, String uri});

  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class _$ContextCopyWithImpl<$Res, $Val extends Context>
    implements $ContextCopyWith<$Res> {
  _$ContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Context
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? href = null,
    Object? externalUrls = null,
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Context
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContextImplCopyWith<$Res> implements $ContextCopyWith<$Res> {
  factory _$$ContextImplCopyWith(
          _$ContextImpl value, $Res Function(_$ContextImpl) then) =
      __$$ContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String href, ExternalUrls externalUrls, String uri});

  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class __$$ContextImplCopyWithImpl<$Res>
    extends _$ContextCopyWithImpl<$Res, _$ContextImpl>
    implements _$$ContextImplCopyWith<$Res> {
  __$$ContextImplCopyWithImpl(
      _$ContextImpl _value, $Res Function(_$ContextImpl) _then)
      : super(_value, _then);

  /// Create a copy of Context
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? href = null,
    Object? externalUrls = null,
    Object? uri = null,
  }) {
    return _then(_$ContextImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContextImpl implements _Context {
  const _$ContextImpl(
      {required this.type,
      required this.href,
      required this.externalUrls,
      required this.uri});

  factory _$ContextImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContextImplFromJson(json);

  @override
  final String type;
  @override
  final String href;
  @override
  final ExternalUrls externalUrls;
  @override
  final String uri;

  @override
  String toString() {
    return 'Context(type: $type, href: $href, externalUrls: $externalUrls, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContextImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, href, externalUrls, uri);

  /// Create a copy of Context
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContextImplCopyWith<_$ContextImpl> get copyWith =>
      __$$ContextImplCopyWithImpl<_$ContextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContextImplToJson(
      this,
    );
  }
}

abstract class _Context implements Context {
  const factory _Context(
      {required final String type,
      required final String href,
      required final ExternalUrls externalUrls,
      required final String uri}) = _$ContextImpl;

  factory _Context.fromJson(Map<String, dynamic> json) = _$ContextImpl.fromJson;

  @override
  String get type;
  @override
  String get href;
  @override
  ExternalUrls get externalUrls;
  @override
  String get uri;

  /// Create a copy of Context
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContextImplCopyWith<_$ContextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalUrls _$ExternalUrlsFromJson(Map<String, dynamic> json) {
  return _ExternalUrls.fromJson(json);
}

/// @nodoc
mixin _$ExternalUrls {
  String get spotify => throw _privateConstructorUsedError;

  /// Serializes this ExternalUrls to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExternalUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExternalUrlsCopyWith<ExternalUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalUrlsCopyWith<$Res> {
  factory $ExternalUrlsCopyWith(
          ExternalUrls value, $Res Function(ExternalUrls) then) =
      _$ExternalUrlsCopyWithImpl<$Res, ExternalUrls>;
  @useResult
  $Res call({String spotify});
}

/// @nodoc
class _$ExternalUrlsCopyWithImpl<$Res, $Val extends ExternalUrls>
    implements $ExternalUrlsCopyWith<$Res> {
  _$ExternalUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExternalUrls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = null,
  }) {
    return _then(_value.copyWith(
      spotify: null == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalUrlsImplCopyWith<$Res>
    implements $ExternalUrlsCopyWith<$Res> {
  factory _$$ExternalUrlsImplCopyWith(
          _$ExternalUrlsImpl value, $Res Function(_$ExternalUrlsImpl) then) =
      __$$ExternalUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String spotify});
}

/// @nodoc
class __$$ExternalUrlsImplCopyWithImpl<$Res>
    extends _$ExternalUrlsCopyWithImpl<$Res, _$ExternalUrlsImpl>
    implements _$$ExternalUrlsImplCopyWith<$Res> {
  __$$ExternalUrlsImplCopyWithImpl(
      _$ExternalUrlsImpl _value, $Res Function(_$ExternalUrlsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExternalUrls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = null,
  }) {
    return _then(_$ExternalUrlsImpl(
      spotify: null == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalUrlsImpl implements _ExternalUrls {
  const _$ExternalUrlsImpl({required this.spotify});

  factory _$ExternalUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalUrlsImplFromJson(json);

  @override
  final String spotify;

  @override
  String toString() {
    return 'ExternalUrls(spotify: $spotify)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalUrlsImpl &&
            (identical(other.spotify, spotify) || other.spotify == spotify));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, spotify);

  /// Create a copy of ExternalUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
      __$$ExternalUrlsImplCopyWithImpl<_$ExternalUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalUrlsImplToJson(
      this,
    );
  }
}

abstract class _ExternalUrls implements ExternalUrls {
  const factory _ExternalUrls({required final String spotify}) =
      _$ExternalUrlsImpl;

  factory _ExternalUrls.fromJson(Map<String, dynamic> json) =
      _$ExternalUrlsImpl.fromJson;

  @override
  String get spotify;

  /// Create a copy of ExternalUrls
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Track _$TrackFromJson(Map<String, dynamic> json) {
  return _Track.fromJson(json);
}

/// @nodoc
mixin _$Track {
  Album get album => throw _privateConstructorUsedError;
  List<Artist> get artists => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_markets')
  List<String> get availableMarkets => throw _privateConstructorUsedError;
  @JsonKey(name: 'disc_number')
  int get discNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_ms')
  int get durationMs => throw _privateConstructorUsedError;
  bool get explicit => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_ids')
  ExternalIds get externalIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'preview_url')
  String? get previewUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_number')
  int get trackNumber => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_local')
  bool get isLocal => throw _privateConstructorUsedError;

  /// Serializes this Track to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackCopyWith<Track> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackCopyWith<$Res> {
  factory $TrackCopyWith(Track value, $Res Function(Track) then) =
      _$TrackCopyWithImpl<$Res, Track>;
  @useResult
  $Res call(
      {Album album,
      List<Artist> artists,
      @JsonKey(name: 'available_markets') List<String> availableMarkets,
      @JsonKey(name: 'disc_number') int discNumber,
      @JsonKey(name: 'duration_ms') int durationMs,
      bool explicit,
      @JsonKey(name: 'external_ids') ExternalIds externalIds,
      @JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      String href,
      String id,
      String name,
      int popularity,
      @JsonKey(name: 'preview_url') String? previewUrl,
      @JsonKey(name: 'track_number') int trackNumber,
      String type,
      String uri,
      @JsonKey(name: 'is_local') bool isLocal});

  $AlbumCopyWith<$Res> get album;
  $ExternalIdsCopyWith<$Res> get externalIds;
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class _$TrackCopyWithImpl<$Res, $Val extends Track>
    implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
    Object? artists = null,
    Object? availableMarkets = null,
    Object? discNumber = null,
    Object? durationMs = null,
    Object? explicit = null,
    Object? externalIds = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? name = null,
    Object? popularity = null,
    Object? previewUrl = freezed,
    Object? trackNumber = null,
    Object? type = null,
    Object? uri = null,
    Object? isLocal = null,
  }) {
    return _then(_value.copyWith(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      availableMarkets: null == availableMarkets
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      discNumber: null == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      explicit: null == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
      externalIds: null == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AlbumCopyWith<$Res> get album {
    return $AlbumCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExternalIdsCopyWith<$Res> get externalIds {
    return $ExternalIdsCopyWith<$Res>(_value.externalIds, (value) {
      return _then(_value.copyWith(externalIds: value) as $Val);
    });
  }

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrackImplCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$$TrackImplCopyWith(
          _$TrackImpl value, $Res Function(_$TrackImpl) then) =
      __$$TrackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Album album,
      List<Artist> artists,
      @JsonKey(name: 'available_markets') List<String> availableMarkets,
      @JsonKey(name: 'disc_number') int discNumber,
      @JsonKey(name: 'duration_ms') int durationMs,
      bool explicit,
      @JsonKey(name: 'external_ids') ExternalIds externalIds,
      @JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      String href,
      String id,
      String name,
      int popularity,
      @JsonKey(name: 'preview_url') String? previewUrl,
      @JsonKey(name: 'track_number') int trackNumber,
      String type,
      String uri,
      @JsonKey(name: 'is_local') bool isLocal});

  @override
  $AlbumCopyWith<$Res> get album;
  @override
  $ExternalIdsCopyWith<$Res> get externalIds;
  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class __$$TrackImplCopyWithImpl<$Res>
    extends _$TrackCopyWithImpl<$Res, _$TrackImpl>
    implements _$$TrackImplCopyWith<$Res> {
  __$$TrackImplCopyWithImpl(
      _$TrackImpl _value, $Res Function(_$TrackImpl) _then)
      : super(_value, _then);

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
    Object? artists = null,
    Object? availableMarkets = null,
    Object? discNumber = null,
    Object? durationMs = null,
    Object? explicit = null,
    Object? externalIds = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? name = null,
    Object? popularity = null,
    Object? previewUrl = freezed,
    Object? trackNumber = null,
    Object? type = null,
    Object? uri = null,
    Object? isLocal = null,
  }) {
    return _then(_$TrackImpl(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      availableMarkets: null == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      discNumber: null == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      explicit: null == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
      externalIds: null == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackImpl implements _Track {
  const _$TrackImpl(
      {required this.album,
      required final List<Artist> artists,
      @JsonKey(name: 'available_markets')
      required final List<String> availableMarkets,
      @JsonKey(name: 'disc_number') required this.discNumber,
      @JsonKey(name: 'duration_ms') required this.durationMs,
      required this.explicit,
      @JsonKey(name: 'external_ids') required this.externalIds,
      @JsonKey(name: 'external_urls') required this.externalUrls,
      required this.href,
      required this.id,
      required this.name,
      required this.popularity,
      @JsonKey(name: 'preview_url') this.previewUrl,
      @JsonKey(name: 'track_number') required this.trackNumber,
      required this.type,
      required this.uri,
      @JsonKey(name: 'is_local') required this.isLocal})
      : _artists = artists,
        _availableMarkets = availableMarkets;

  factory _$TrackImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackImplFromJson(json);

  @override
  final Album album;
  final List<Artist> _artists;
  @override
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<String> _availableMarkets;
  @override
  @JsonKey(name: 'available_markets')
  List<String> get availableMarkets {
    if (_availableMarkets is EqualUnmodifiableListView)
      return _availableMarkets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableMarkets);
  }

  @override
  @JsonKey(name: 'disc_number')
  final int discNumber;
  @override
  @JsonKey(name: 'duration_ms')
  final int durationMs;
  @override
  final bool explicit;
  @override
  @JsonKey(name: 'external_ids')
  final ExternalIds externalIds;
  @override
  @JsonKey(name: 'external_urls')
  final ExternalUrls externalUrls;
  @override
  final String href;
  @override
  final String id;
  @override
  final String name;
  @override
  final int popularity;
  @override
  @JsonKey(name: 'preview_url')
  final String? previewUrl;
  @override
  @JsonKey(name: 'track_number')
  final int trackNumber;
  @override
  final String type;
  @override
  final String uri;
  @override
  @JsonKey(name: 'is_local')
  final bool isLocal;

  @override
  String toString() {
    return 'Track(album: $album, artists: $artists, availableMarkets: $availableMarkets, discNumber: $discNumber, durationMs: $durationMs, explicit: $explicit, externalIds: $externalIds, externalUrls: $externalUrls, href: $href, id: $id, name: $name, popularity: $popularity, previewUrl: $previewUrl, trackNumber: $trackNumber, type: $type, uri: $uri, isLocal: $isLocal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackImpl &&
            (identical(other.album, album) || other.album == album) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality()
                .equals(other._availableMarkets, _availableMarkets) &&
            (identical(other.discNumber, discNumber) ||
                other.discNumber == discNumber) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.explicit, explicit) ||
                other.explicit == explicit) &&
            (identical(other.externalIds, externalIds) ||
                other.externalIds == externalIds) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.isLocal, isLocal) || other.isLocal == isLocal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      album,
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_availableMarkets),
      discNumber,
      durationMs,
      explicit,
      externalIds,
      externalUrls,
      href,
      id,
      name,
      popularity,
      previewUrl,
      trackNumber,
      type,
      uri,
      isLocal);

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackImplCopyWith<_$TrackImpl> get copyWith =>
      __$$TrackImplCopyWithImpl<_$TrackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackImplToJson(
      this,
    );
  }
}

abstract class _Track implements Track {
  const factory _Track(
      {required final Album album,
      required final List<Artist> artists,
      @JsonKey(name: 'available_markets')
      required final List<String> availableMarkets,
      @JsonKey(name: 'disc_number') required final int discNumber,
      @JsonKey(name: 'duration_ms') required final int durationMs,
      required final bool explicit,
      @JsonKey(name: 'external_ids') required final ExternalIds externalIds,
      @JsonKey(name: 'external_urls') required final ExternalUrls externalUrls,
      required final String href,
      required final String id,
      required final String name,
      required final int popularity,
      @JsonKey(name: 'preview_url') final String? previewUrl,
      @JsonKey(name: 'track_number') required final int trackNumber,
      required final String type,
      required final String uri,
      @JsonKey(name: 'is_local') required final bool isLocal}) = _$TrackImpl;

  factory _Track.fromJson(Map<String, dynamic> json) = _$TrackImpl.fromJson;

  @override
  Album get album;
  @override
  List<Artist> get artists;
  @override
  @JsonKey(name: 'available_markets')
  List<String> get availableMarkets;
  @override
  @JsonKey(name: 'disc_number')
  int get discNumber;
  @override
  @JsonKey(name: 'duration_ms')
  int get durationMs;
  @override
  bool get explicit;
  @override
  @JsonKey(name: 'external_ids')
  ExternalIds get externalIds;
  @override
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls;
  @override
  String get href;
  @override
  String get id;
  @override
  String get name;
  @override
  int get popularity;
  @override
  @JsonKey(name: 'preview_url')
  String? get previewUrl;
  @override
  @JsonKey(name: 'track_number')
  int get trackNumber;
  @override
  String get type;
  @override
  String get uri;
  @override
  @JsonKey(name: 'is_local')
  bool get isLocal;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackImplCopyWith<_$TrackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return _Album.fromJson(json);
}

/// @nodoc
mixin _$Album {
  @JsonKey(name: 'album_type')
  String get albumType => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tracks')
  int get totalTracks => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_markets')
  List<String> get availableMarkets => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  List<Image> get images => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date_precision')
  String get releaseDatePrecision => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;
  List<Artist> get artists => throw _privateConstructorUsedError;

  /// Serializes this Album to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Album
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res, Album>;
  @useResult
  $Res call(
      {@JsonKey(name: 'album_type') String albumType,
      @JsonKey(name: 'total_tracks') int totalTracks,
      @JsonKey(name: 'available_markets') List<String> availableMarkets,
      @JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      String href,
      String id,
      List<Image> images,
      String name,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'release_date_precision') String releaseDatePrecision,
      String type,
      String uri,
      List<Artist> artists});

  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res, $Val extends Album>
    implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Album
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumType = null,
    Object? totalTracks = null,
    Object? availableMarkets = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? images = null,
    Object? name = null,
    Object? releaseDate = null,
    Object? releaseDatePrecision = null,
    Object? type = null,
    Object? uri = null,
    Object? artists = null,
  }) {
    return _then(_value.copyWith(
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String,
      totalTracks: null == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int,
      availableMarkets: null == availableMarkets
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDatePrecision: null == releaseDatePrecision
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ) as $Val);
  }

  /// Create a copy of Album
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlbumImplCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$$AlbumImplCopyWith(
          _$AlbumImpl value, $Res Function(_$AlbumImpl) then) =
      __$$AlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'album_type') String albumType,
      @JsonKey(name: 'total_tracks') int totalTracks,
      @JsonKey(name: 'available_markets') List<String> availableMarkets,
      @JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      String href,
      String id,
      List<Image> images,
      String name,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'release_date_precision') String releaseDatePrecision,
      String type,
      String uri,
      List<Artist> artists});

  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class __$$AlbumImplCopyWithImpl<$Res>
    extends _$AlbumCopyWithImpl<$Res, _$AlbumImpl>
    implements _$$AlbumImplCopyWith<$Res> {
  __$$AlbumImplCopyWithImpl(
      _$AlbumImpl _value, $Res Function(_$AlbumImpl) _then)
      : super(_value, _then);

  /// Create a copy of Album
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumType = null,
    Object? totalTracks = null,
    Object? availableMarkets = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? images = null,
    Object? name = null,
    Object? releaseDate = null,
    Object? releaseDatePrecision = null,
    Object? type = null,
    Object? uri = null,
    Object? artists = null,
  }) {
    return _then(_$AlbumImpl(
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String,
      totalTracks: null == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int,
      availableMarkets: null == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDatePrecision: null == releaseDatePrecision
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumImpl implements _Album {
  const _$AlbumImpl(
      {@JsonKey(name: 'album_type') required this.albumType,
      @JsonKey(name: 'total_tracks') required this.totalTracks,
      @JsonKey(name: 'available_markets')
      required final List<String> availableMarkets,
      @JsonKey(name: 'external_urls') required this.externalUrls,
      required this.href,
      required this.id,
      required final List<Image> images,
      required this.name,
      @JsonKey(name: 'release_date') required this.releaseDate,
      @JsonKey(name: 'release_date_precision')
      required this.releaseDatePrecision,
      required this.type,
      required this.uri,
      required final List<Artist> artists})
      : _availableMarkets = availableMarkets,
        _images = images,
        _artists = artists;

  factory _$AlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumImplFromJson(json);

  @override
  @JsonKey(name: 'album_type')
  final String albumType;
  @override
  @JsonKey(name: 'total_tracks')
  final int totalTracks;
  final List<String> _availableMarkets;
  @override
  @JsonKey(name: 'available_markets')
  List<String> get availableMarkets {
    if (_availableMarkets is EqualUnmodifiableListView)
      return _availableMarkets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableMarkets);
  }

  @override
  @JsonKey(name: 'external_urls')
  final ExternalUrls externalUrls;
  @override
  final String href;
  @override
  final String id;
  final List<Image> _images;
  @override
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String name;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  @JsonKey(name: 'release_date_precision')
  final String releaseDatePrecision;
  @override
  final String type;
  @override
  final String uri;
  final List<Artist> _artists;
  @override
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString() {
    return 'Album(albumType: $albumType, totalTracks: $totalTracks, availableMarkets: $availableMarkets, externalUrls: $externalUrls, href: $href, id: $id, images: $images, name: $name, releaseDate: $releaseDate, releaseDatePrecision: $releaseDatePrecision, type: $type, uri: $uri, artists: $artists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumImpl &&
            (identical(other.albumType, albumType) ||
                other.albumType == albumType) &&
            (identical(other.totalTracks, totalTracks) ||
                other.totalTracks == totalTracks) &&
            const DeepCollectionEquality()
                .equals(other._availableMarkets, _availableMarkets) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                other.releaseDatePrecision == releaseDatePrecision) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      albumType,
      totalTracks,
      const DeepCollectionEquality().hash(_availableMarkets),
      externalUrls,
      href,
      id,
      const DeepCollectionEquality().hash(_images),
      name,
      releaseDate,
      releaseDatePrecision,
      type,
      uri,
      const DeepCollectionEquality().hash(_artists));

  /// Create a copy of Album
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      __$$AlbumImplCopyWithImpl<_$AlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumImplToJson(
      this,
    );
  }
}

abstract class _Album implements Album {
  const factory _Album(
      {@JsonKey(name: 'album_type') required final String albumType,
      @JsonKey(name: 'total_tracks') required final int totalTracks,
      @JsonKey(name: 'available_markets')
      required final List<String> availableMarkets,
      @JsonKey(name: 'external_urls') required final ExternalUrls externalUrls,
      required final String href,
      required final String id,
      required final List<Image> images,
      required final String name,
      @JsonKey(name: 'release_date') required final String releaseDate,
      @JsonKey(name: 'release_date_precision')
      required final String releaseDatePrecision,
      required final String type,
      required final String uri,
      required final List<Artist> artists}) = _$AlbumImpl;

  factory _Album.fromJson(Map<String, dynamic> json) = _$AlbumImpl.fromJson;

  @override
  @JsonKey(name: 'album_type')
  String get albumType;
  @override
  @JsonKey(name: 'total_tracks')
  int get totalTracks;
  @override
  @JsonKey(name: 'available_markets')
  List<String> get availableMarkets;
  @override
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls;
  @override
  String get href;
  @override
  String get id;
  @override
  List<Image> get images;
  @override
  String get name;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  @JsonKey(name: 'release_date_precision')
  String get releaseDatePrecision;
  @override
  String get type;
  @override
  String get uri;
  @override
  List<Artist> get artists;

  /// Create a copy of Album
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;

  /// Serializes this Artist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res, Artist>;
  @useResult
  $Res call(
      {@JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      String href,
      String id,
      String name,
      String type,
      String uri});

  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res, $Val extends Artist>
    implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtistImplCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$ArtistImplCopyWith(
          _$ArtistImpl value, $Res Function(_$ArtistImpl) then) =
      __$$ArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      String href,
      String id,
      String name,
      String type,
      String uri});

  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class __$$ArtistImplCopyWithImpl<$Res>
    extends _$ArtistCopyWithImpl<$Res, _$ArtistImpl>
    implements _$$ArtistImplCopyWith<$Res> {
  __$$ArtistImplCopyWithImpl(
      _$ArtistImpl _value, $Res Function(_$ArtistImpl) _then)
      : super(_value, _then);

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_$ArtistImpl(
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistImpl implements _Artist {
  const _$ArtistImpl(
      {@JsonKey(name: 'external_urls') required this.externalUrls,
      required this.href,
      required this.id,
      required this.name,
      required this.type,
      required this.uri});

  factory _$ArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistImplFromJson(json);

  @override
  @JsonKey(name: 'external_urls')
  final ExternalUrls externalUrls;
  @override
  final String href;
  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
  @override
  final String uri;

  @override
  String toString() {
    return 'Artist(externalUrls: $externalUrls, href: $href, id: $id, name: $name, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistImpl &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, externalUrls, href, id, name, type, uri);

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      __$$ArtistImplCopyWithImpl<_$ArtistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistImplToJson(
      this,
    );
  }
}

abstract class _Artist implements Artist {
  const factory _Artist(
      {@JsonKey(name: 'external_urls') required final ExternalUrls externalUrls,
      required final String href,
      required final String id,
      required final String name,
      required final String type,
      required final String uri}) = _$ArtistImpl;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$ArtistImpl.fromJson;

  @override
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls;
  @override
  String get href;
  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get uri;

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  String get url => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  /// Serializes this Image to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({String url, int? height, int? width});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, int? height, int? width});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$ImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl(
      {required this.url, required this.height, required this.width});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  final String url;
  @override
  final int? height;
  @override
  final int? width;

  @override
  String toString() {
    return 'Image(url: $url, height: $height, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, height, width);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {required final String url,
      required final int? height,
      required final int? width}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  String get url;
  @override
  int? get height;
  @override
  int? get width;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalIds _$ExternalIdsFromJson(Map<String, dynamic> json) {
  return _ExternalIds.fromJson(json);
}

/// @nodoc
mixin _$ExternalIds {
  String? get isrc => throw _privateConstructorUsedError;
  String? get ean => throw _privateConstructorUsedError;
  String? get upc => throw _privateConstructorUsedError;

  /// Serializes this ExternalIds to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExternalIds
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExternalIdsCopyWith<ExternalIds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalIdsCopyWith<$Res> {
  factory $ExternalIdsCopyWith(
          ExternalIds value, $Res Function(ExternalIds) then) =
      _$ExternalIdsCopyWithImpl<$Res, ExternalIds>;
  @useResult
  $Res call({String? isrc, String? ean, String? upc});
}

/// @nodoc
class _$ExternalIdsCopyWithImpl<$Res, $Val extends ExternalIds>
    implements $ExternalIdsCopyWith<$Res> {
  _$ExternalIdsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExternalIds
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isrc = freezed,
    Object? ean = freezed,
    Object? upc = freezed,
  }) {
    return _then(_value.copyWith(
      isrc: freezed == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String?,
      ean: freezed == ean
          ? _value.ean
          : ean // ignore: cast_nullable_to_non_nullable
              as String?,
      upc: freezed == upc
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalIdsImplCopyWith<$Res>
    implements $ExternalIdsCopyWith<$Res> {
  factory _$$ExternalIdsImplCopyWith(
          _$ExternalIdsImpl value, $Res Function(_$ExternalIdsImpl) then) =
      __$$ExternalIdsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? isrc, String? ean, String? upc});
}

/// @nodoc
class __$$ExternalIdsImplCopyWithImpl<$Res>
    extends _$ExternalIdsCopyWithImpl<$Res, _$ExternalIdsImpl>
    implements _$$ExternalIdsImplCopyWith<$Res> {
  __$$ExternalIdsImplCopyWithImpl(
      _$ExternalIdsImpl _value, $Res Function(_$ExternalIdsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExternalIds
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isrc = freezed,
    Object? ean = freezed,
    Object? upc = freezed,
  }) {
    return _then(_$ExternalIdsImpl(
      isrc: freezed == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String?,
      ean: freezed == ean
          ? _value.ean
          : ean // ignore: cast_nullable_to_non_nullable
              as String?,
      upc: freezed == upc
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalIdsImpl implements _ExternalIds {
  const _$ExternalIdsImpl({this.isrc, this.ean, this.upc});

  factory _$ExternalIdsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalIdsImplFromJson(json);

  @override
  final String? isrc;
  @override
  final String? ean;
  @override
  final String? upc;

  @override
  String toString() {
    return 'ExternalIds(isrc: $isrc, ean: $ean, upc: $upc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalIdsImpl &&
            (identical(other.isrc, isrc) || other.isrc == isrc) &&
            (identical(other.ean, ean) || other.ean == ean) &&
            (identical(other.upc, upc) || other.upc == upc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isrc, ean, upc);

  /// Create a copy of ExternalIds
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalIdsImplCopyWith<_$ExternalIdsImpl> get copyWith =>
      __$$ExternalIdsImplCopyWithImpl<_$ExternalIdsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalIdsImplToJson(
      this,
    );
  }
}

abstract class _ExternalIds implements ExternalIds {
  const factory _ExternalIds(
      {final String? isrc,
      final String? ean,
      final String? upc}) = _$ExternalIdsImpl;

  factory _ExternalIds.fromJson(Map<String, dynamic> json) =
      _$ExternalIdsImpl.fromJson;

  @override
  String? get isrc;
  @override
  String? get ean;
  @override
  String? get upc;

  /// Create a copy of ExternalIds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExternalIdsImplCopyWith<_$ExternalIdsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerActions _$PlayerActionsFromJson(Map<String, dynamic> json) {
  return _PlayerActions.fromJson(json);
}

/// @nodoc
mixin _$PlayerActions {
  bool? get interruptingPlayback => throw _privateConstructorUsedError;
  bool? get pausing => throw _privateConstructorUsedError;
  bool? get resuming => throw _privateConstructorUsedError;
  bool? get seeking => throw _privateConstructorUsedError;
  bool? get skippingNext => throw _privateConstructorUsedError;
  bool? get skippingPrev => throw _privateConstructorUsedError;
  bool? get togglingRepeatContext => throw _privateConstructorUsedError;
  bool? get togglingShuffle => throw _privateConstructorUsedError;
  bool? get togglingRepeatTrack => throw _privateConstructorUsedError;
  bool? get transferringPlayback => throw _privateConstructorUsedError;

  /// Serializes this PlayerActions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayerActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerActionsCopyWith<PlayerActions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerActionsCopyWith<$Res> {
  factory $PlayerActionsCopyWith(
          PlayerActions value, $Res Function(PlayerActions) then) =
      _$PlayerActionsCopyWithImpl<$Res, PlayerActions>;
  @useResult
  $Res call(
      {bool? interruptingPlayback,
      bool? pausing,
      bool? resuming,
      bool? seeking,
      bool? skippingNext,
      bool? skippingPrev,
      bool? togglingRepeatContext,
      bool? togglingShuffle,
      bool? togglingRepeatTrack,
      bool? transferringPlayback});
}

/// @nodoc
class _$PlayerActionsCopyWithImpl<$Res, $Val extends PlayerActions>
    implements $PlayerActionsCopyWith<$Res> {
  _$PlayerActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interruptingPlayback = freezed,
    Object? pausing = freezed,
    Object? resuming = freezed,
    Object? seeking = freezed,
    Object? skippingNext = freezed,
    Object? skippingPrev = freezed,
    Object? togglingRepeatContext = freezed,
    Object? togglingShuffle = freezed,
    Object? togglingRepeatTrack = freezed,
    Object? transferringPlayback = freezed,
  }) {
    return _then(_value.copyWith(
      interruptingPlayback: freezed == interruptingPlayback
          ? _value.interruptingPlayback
          : interruptingPlayback // ignore: cast_nullable_to_non_nullable
              as bool?,
      pausing: freezed == pausing
          ? _value.pausing
          : pausing // ignore: cast_nullable_to_non_nullable
              as bool?,
      resuming: freezed == resuming
          ? _value.resuming
          : resuming // ignore: cast_nullable_to_non_nullable
              as bool?,
      seeking: freezed == seeking
          ? _value.seeking
          : seeking // ignore: cast_nullable_to_non_nullable
              as bool?,
      skippingNext: freezed == skippingNext
          ? _value.skippingNext
          : skippingNext // ignore: cast_nullable_to_non_nullable
              as bool?,
      skippingPrev: freezed == skippingPrev
          ? _value.skippingPrev
          : skippingPrev // ignore: cast_nullable_to_non_nullable
              as bool?,
      togglingRepeatContext: freezed == togglingRepeatContext
          ? _value.togglingRepeatContext
          : togglingRepeatContext // ignore: cast_nullable_to_non_nullable
              as bool?,
      togglingShuffle: freezed == togglingShuffle
          ? _value.togglingShuffle
          : togglingShuffle // ignore: cast_nullable_to_non_nullable
              as bool?,
      togglingRepeatTrack: freezed == togglingRepeatTrack
          ? _value.togglingRepeatTrack
          : togglingRepeatTrack // ignore: cast_nullable_to_non_nullable
              as bool?,
      transferringPlayback: freezed == transferringPlayback
          ? _value.transferringPlayback
          : transferringPlayback // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerActionsImplCopyWith<$Res>
    implements $PlayerActionsCopyWith<$Res> {
  factory _$$PlayerActionsImplCopyWith(
          _$PlayerActionsImpl value, $Res Function(_$PlayerActionsImpl) then) =
      __$$PlayerActionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? interruptingPlayback,
      bool? pausing,
      bool? resuming,
      bool? seeking,
      bool? skippingNext,
      bool? skippingPrev,
      bool? togglingRepeatContext,
      bool? togglingShuffle,
      bool? togglingRepeatTrack,
      bool? transferringPlayback});
}

/// @nodoc
class __$$PlayerActionsImplCopyWithImpl<$Res>
    extends _$PlayerActionsCopyWithImpl<$Res, _$PlayerActionsImpl>
    implements _$$PlayerActionsImplCopyWith<$Res> {
  __$$PlayerActionsImplCopyWithImpl(
      _$PlayerActionsImpl _value, $Res Function(_$PlayerActionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interruptingPlayback = freezed,
    Object? pausing = freezed,
    Object? resuming = freezed,
    Object? seeking = freezed,
    Object? skippingNext = freezed,
    Object? skippingPrev = freezed,
    Object? togglingRepeatContext = freezed,
    Object? togglingShuffle = freezed,
    Object? togglingRepeatTrack = freezed,
    Object? transferringPlayback = freezed,
  }) {
    return _then(_$PlayerActionsImpl(
      interruptingPlayback: freezed == interruptingPlayback
          ? _value.interruptingPlayback
          : interruptingPlayback // ignore: cast_nullable_to_non_nullable
              as bool?,
      pausing: freezed == pausing
          ? _value.pausing
          : pausing // ignore: cast_nullable_to_non_nullable
              as bool?,
      resuming: freezed == resuming
          ? _value.resuming
          : resuming // ignore: cast_nullable_to_non_nullable
              as bool?,
      seeking: freezed == seeking
          ? _value.seeking
          : seeking // ignore: cast_nullable_to_non_nullable
              as bool?,
      skippingNext: freezed == skippingNext
          ? _value.skippingNext
          : skippingNext // ignore: cast_nullable_to_non_nullable
              as bool?,
      skippingPrev: freezed == skippingPrev
          ? _value.skippingPrev
          : skippingPrev // ignore: cast_nullable_to_non_nullable
              as bool?,
      togglingRepeatContext: freezed == togglingRepeatContext
          ? _value.togglingRepeatContext
          : togglingRepeatContext // ignore: cast_nullable_to_non_nullable
              as bool?,
      togglingShuffle: freezed == togglingShuffle
          ? _value.togglingShuffle
          : togglingShuffle // ignore: cast_nullable_to_non_nullable
              as bool?,
      togglingRepeatTrack: freezed == togglingRepeatTrack
          ? _value.togglingRepeatTrack
          : togglingRepeatTrack // ignore: cast_nullable_to_non_nullable
              as bool?,
      transferringPlayback: freezed == transferringPlayback
          ? _value.transferringPlayback
          : transferringPlayback // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerActionsImpl implements _PlayerActions {
  const _$PlayerActionsImpl(
      {this.interruptingPlayback,
      this.pausing,
      this.resuming,
      this.seeking,
      this.skippingNext,
      this.skippingPrev,
      this.togglingRepeatContext,
      this.togglingShuffle,
      this.togglingRepeatTrack,
      this.transferringPlayback});

  factory _$PlayerActionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerActionsImplFromJson(json);

  @override
  final bool? interruptingPlayback;
  @override
  final bool? pausing;
  @override
  final bool? resuming;
  @override
  final bool? seeking;
  @override
  final bool? skippingNext;
  @override
  final bool? skippingPrev;
  @override
  final bool? togglingRepeatContext;
  @override
  final bool? togglingShuffle;
  @override
  final bool? togglingRepeatTrack;
  @override
  final bool? transferringPlayback;

  @override
  String toString() {
    return 'PlayerActions(interruptingPlayback: $interruptingPlayback, pausing: $pausing, resuming: $resuming, seeking: $seeking, skippingNext: $skippingNext, skippingPrev: $skippingPrev, togglingRepeatContext: $togglingRepeatContext, togglingShuffle: $togglingShuffle, togglingRepeatTrack: $togglingRepeatTrack, transferringPlayback: $transferringPlayback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerActionsImpl &&
            (identical(other.interruptingPlayback, interruptingPlayback) ||
                other.interruptingPlayback == interruptingPlayback) &&
            (identical(other.pausing, pausing) || other.pausing == pausing) &&
            (identical(other.resuming, resuming) ||
                other.resuming == resuming) &&
            (identical(other.seeking, seeking) || other.seeking == seeking) &&
            (identical(other.skippingNext, skippingNext) ||
                other.skippingNext == skippingNext) &&
            (identical(other.skippingPrev, skippingPrev) ||
                other.skippingPrev == skippingPrev) &&
            (identical(other.togglingRepeatContext, togglingRepeatContext) ||
                other.togglingRepeatContext == togglingRepeatContext) &&
            (identical(other.togglingShuffle, togglingShuffle) ||
                other.togglingShuffle == togglingShuffle) &&
            (identical(other.togglingRepeatTrack, togglingRepeatTrack) ||
                other.togglingRepeatTrack == togglingRepeatTrack) &&
            (identical(other.transferringPlayback, transferringPlayback) ||
                other.transferringPlayback == transferringPlayback));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      interruptingPlayback,
      pausing,
      resuming,
      seeking,
      skippingNext,
      skippingPrev,
      togglingRepeatContext,
      togglingShuffle,
      togglingRepeatTrack,
      transferringPlayback);

  /// Create a copy of PlayerActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerActionsImplCopyWith<_$PlayerActionsImpl> get copyWith =>
      __$$PlayerActionsImplCopyWithImpl<_$PlayerActionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerActionsImplToJson(
      this,
    );
  }
}

abstract class _PlayerActions implements PlayerActions {
  const factory _PlayerActions(
      {final bool? interruptingPlayback,
      final bool? pausing,
      final bool? resuming,
      final bool? seeking,
      final bool? skippingNext,
      final bool? skippingPrev,
      final bool? togglingRepeatContext,
      final bool? togglingShuffle,
      final bool? togglingRepeatTrack,
      final bool? transferringPlayback}) = _$PlayerActionsImpl;

  factory _PlayerActions.fromJson(Map<String, dynamic> json) =
      _$PlayerActionsImpl.fromJson;

  @override
  bool? get interruptingPlayback;
  @override
  bool? get pausing;
  @override
  bool? get resuming;
  @override
  bool? get seeking;
  @override
  bool? get skippingNext;
  @override
  bool? get skippingPrev;
  @override
  bool? get togglingRepeatContext;
  @override
  bool? get togglingShuffle;
  @override
  bool? get togglingRepeatTrack;
  @override
  bool? get transferringPlayback;

  /// Create a copy of PlayerActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerActionsImplCopyWith<_$PlayerActionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
