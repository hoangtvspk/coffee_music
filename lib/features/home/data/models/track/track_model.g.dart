// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackModelImpl _$$TrackModelImplFromJson(Map<String, dynamic> json) =>
    _$TrackModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      album: AlbumModel.fromJson(json['album'] as Map<String, dynamic>),
      previewUrl: json['preview_url'] as String? ?? null,
      durationMs: (json['duration_ms'] as num).toInt(),
    );

Map<String, dynamic> _$$TrackModelImplToJson(_$TrackModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'artists': instance.artists,
      'album': instance.album,
      'preview_url': instance.previewUrl,
      'duration_ms': instance.durationMs,
    };
