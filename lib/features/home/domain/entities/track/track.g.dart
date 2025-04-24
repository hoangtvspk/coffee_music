// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackImpl _$$TrackImplFromJson(Map<String, dynamic> json) => _$TrackImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      album: Album.fromJson(json['album'] as Map<String, dynamic>),
      previewUrl: json['previewUrl'] as String?,
      durationMs: (json['durationMs'] as num).toInt(),
    );

Map<String, dynamic> _$$TrackImplToJson(_$TrackImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'artists': instance.artists,
      'album': instance.album,
      'previewUrl': instance.previewUrl,
      'durationMs': instance.durationMs,
    };
