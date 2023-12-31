// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dataset_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DatasetLink _$DatasetLinkFromJson(Map<String, dynamic> json) => DatasetLink(
      json['url'] as String?,
      json['label'] as String,
      json['active'] as bool,
    );

Map<String, dynamic> _$DatasetLinkToJson(DatasetLink instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
