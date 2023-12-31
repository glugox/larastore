// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dataset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dataset<T> _$DatasetFromJson<T>(Map<String, dynamic> json) =>
    Dataset<T>(
      items: json['items'] == null
          ? null
          : DatasetItems<T>.fromJson(json['items'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : DatasetMeta.fromJson(json['meta'] as Map<String, dynamic>),
      filters: json['filters'] == null
          ? null
          : DatasetFilters.fromJson(json['filters'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$DatasetToJson<T>(Dataset<T> instance) =>
    <String, dynamic>{
      'items': instance.items?.toJson(),
      'filters': instance.filters?.toJson(),
      'meta': instance.meta?.toJson(),
      'error': instance.error,
    };
