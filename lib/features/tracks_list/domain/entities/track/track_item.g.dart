// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackItemImpl _$$TrackItemImplFromJson(Map<String, dynamic> json) =>
    _$TrackItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      artists:
          (json['artists'] as List<dynamic>).map((e) => e as String).toList(),
      durationMs: (json['durationMs'] as num).toInt(),
      trackNumber: (json['trackNumber'] as num).toInt(),
      images: (json['images'] as List<dynamic>)
          .map((e) => SourceImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      album: json['album'] == null
          ? null
          : Album.fromJson(json['album'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TrackItemImplToJson(_$TrackItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'artists': instance.artists,
      'durationMs': instance.durationMs,
      'trackNumber': instance.trackNumber,
      'images': instance.images,
      'album': instance.album,
    };
