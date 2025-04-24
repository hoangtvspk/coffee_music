// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumImpl _$$AlbumImplFromJson(Map<String, dynamic> json) => _$AlbumImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => SourceImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
      albumType: json['albumType'] as String,
      releaseDate: json['releaseDate'] as String,
      totalTracks: (json['totalTracks'] as num).toInt(),
      artists:
          (json['artists'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AlbumImplToJson(_$AlbumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'type': instance.type,
      'albumType': instance.albumType,
      'releaseDate': instance.releaseDate,
      'totalTracks': instance.totalTracks,
      'artists': instance.artists,
    };
