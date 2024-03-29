// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DatasetItems<T> _$DatasetItemsFromJson<T>(Map<String, dynamic> json) =>
    DatasetItems<T>(
      currentPage: json['current_page'] as int,
      data: (json['data'] as List<dynamic>)
          .map(GenericResourceConverter<T>().fromJson)
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int,
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>)
          .map((e) => DatasetLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String,
      perPage: json['per_page'] as int,
      prevPageUrl: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int,
    );

Map<String, dynamic> _$DatasetItemsToJson<T>(DatasetItems<T> instance) {
  final val = <String, dynamic>{
    'current_page': instance.currentPage,
    'data': instance.data.map(GenericResourceConverter<T>().toJson).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_page_url', instance.firstPageUrl);
  writeNotNull('from', instance.from);
  val['last_page'] = instance.lastPage;
  writeNotNull('last_page_url', instance.lastPageUrl);
  val['links'] = instance.links;
  writeNotNull('next_page_url', instance.nextPageUrl);
  val['path'] = instance.path;
  val['per_page'] = instance.perPage;
  writeNotNull('prev_page_url', instance.prevPageUrl);
  writeNotNull('to', instance.to);
  val['total'] = instance.total;
  return val;
}
