// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResourceImpl<T> _$$ResourceImplFromJson<T>(Map<String, dynamic> json) =>
    _$ResourceImpl<T>(
      attributes: json['attributes'] as Map<String, dynamic>?,
      meta: json['meta'] == null
          ? null
          : DatasetMeta.fromJson(json['meta'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$ResourceImplToJson<T>(_$ResourceImpl<T> instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
      'meta': instance.meta,
      'error': instance.error,
    };
