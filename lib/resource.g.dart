// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resource _$ResourceFromJson(Map<String, dynamic> json) => Resource(
      attributes: json['attributes'] as Map<String, dynamic>?,
      meta: json['meta'] == null
          ? null
          : DatasetMeta.fromJson(json['meta'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$ResourceToJson(Resource instance) => <String, dynamic>{
      'attributes': instance.attributes,
      'meta': instance.meta?.toJson(),
      'error': instance.error,
    };
