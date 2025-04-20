// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackItemImpl _$$TrackItemImplFromJson(Map<String, dynamic> json) =>
    _$TrackItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => SpotifyImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      uri: json['uri'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$TrackItemImplToJson(_$TrackItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'uri': instance.uri,
      'type': instance.type,
    };
