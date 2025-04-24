// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceImageImpl _$$SourceImageImplFromJson(Map<String, dynamic> json) =>
    _$SourceImageImpl(
      url: json['url'] as String,
      height: (json['height'] as num).toInt(),
      width: (json['width'] as num).toInt(),
    );

Map<String, dynamic> _$$SourceImageImplToJson(_$SourceImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };
