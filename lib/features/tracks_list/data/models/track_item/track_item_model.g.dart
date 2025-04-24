// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackItemModelImpl _$$TrackItemModelImplFromJson(Map<String, dynamic> json) =>
    _$TrackItemModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      artists: _artistsFromJson(json['artists'] as List),
      durationMs: (json['duration_ms'] as num).toInt(),
      trackNumber: (json['track_number'] as num).toInt(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => SourceImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      album: json['album'] == null
          ? null
          : AlbumModel.fromJson(json['album'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TrackItemModelImplToJson(
        _$TrackItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'artists': instance.artists,
      'duration_ms': instance.durationMs,
      'track_number': instance.trackNumber,
      'images': instance.images,
      'album': instance.album,
    };
