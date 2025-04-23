// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnerModelImpl _$$OwnerModelImplFromJson(Map<String, dynamic> json) =>
    _$OwnerModelImpl(
      id: json['id'] as String,
      displayName: json['display_name'] as String,
      type: json['type'] as String,
      externalUrls: Map<String, String>.from(json['external_urls'] as Map),
    );

Map<String, dynamic> _$$OwnerModelImplToJson(_$OwnerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
      'type': instance.type,
      'external_urls': instance.externalUrls,
    };
