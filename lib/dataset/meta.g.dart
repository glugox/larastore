// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DatasetMeta _$DatasetMetaFromJson(Map<String, dynamic> json) => DatasetMeta(
      slugPlural: json['slugPlural'] as String,
      slugSingular: json['slugSingular'] as String,
      titlePlural: json['titlePlural'] as String,
      titleSingular: json['titleSingular'] as String,
      relationName: json['relationName'] as String,
      color: json['color'] as String?,
      icon: json['icon'] as String?,
      slugPrefix: json['slugPrefix'] as String?,
      className: json['className'] as String?,
      newFormComponent: json['newFormComponent'] as String?,
    );

Map<String, dynamic> _$DatasetMetaToJson(DatasetMeta instance) =>
    <String, dynamic>{
      'slugPlural': instance.slugPlural,
      'slugSingular': instance.slugSingular,
      'titlePlural': instance.titlePlural,
      'titleSingular': instance.titleSingular,
      'color': instance.color,
      'icon': instance.icon,
      'relationName': instance.relationName,
      'slugPrefix': instance.slugPrefix,
      'className': instance.className,
      'newFormComponent': instance.newFormComponent,
    };
