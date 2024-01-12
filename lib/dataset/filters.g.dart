// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'filters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DatasetFilters _$DatasetFiltersFromJson(Map<String, dynamic> json) =>
    DatasetFilters(
      json['search'] as String?,
      json['trashed'] as String?,
    );

Map<String, dynamic> _$DatasetFiltersToJson(DatasetFilters instance) =>
    <String, dynamic>{
      'search': instance.search,
      'trashed': instance.trashed,
    };
