// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumModelImpl _$$AlbumModelImplFromJson(Map<String, dynamic> json) =>
    _$AlbumModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => SourceImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
      albumType: json['album_type'] as String,
      releaseDate: json['release_date'] as String,
      totalTracks: (json['total_tracks'] as num).toInt(),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlbumModelImplToJson(_$AlbumModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'type': instance.type,
      'album_type': instance.albumType,
      'release_date': instance.releaseDate,
      'total_tracks': instance.totalTracks,
      'artists': instance.artists,
    };
