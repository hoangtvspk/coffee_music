// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaylistImpl _$$PlaylistImplFromJson(Map<String, dynamic> json) =>
    _$PlaylistImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => SourceImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      owner: json['owner'] as String,
      totalTracks: (json['totalTracks'] as num).toInt(),
      type: json['type'] as String,
      releaseDate: json['releaseDate'] as String,
      artists:
          (json['artists'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PlaylistImplToJson(_$PlaylistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'images': instance.images,
      'owner': instance.owner,
      'totalTracks': instance.totalTracks,
      'type': instance.type,
      'releaseDate': instance.releaseDate,
      'artists': instance.artists,
    };
