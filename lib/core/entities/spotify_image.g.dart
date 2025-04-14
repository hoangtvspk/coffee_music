// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotifyImageImpl _$$SpotifyImageImplFromJson(Map<String, dynamic> json) =>
    _$SpotifyImageImpl(
      url: json['url'] as String,
      height: (json['height'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SpotifyImageImplToJson(_$SpotifyImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };
