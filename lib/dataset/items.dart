import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:larastore/constants.dart';
import 'package:larastore/dataset.dart';
import 'package:larastore/dataset/items/dataset_link.dart';

part 'items.g.dart';

@JsonSerializable(includeIfNull: false)
class DatasetItems<T> extends Equatable {
  @JsonKey(name: 'current_page')
  final int currentPage;
  @GenericResourceConverter()
  final List<T> data;
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  final int? from;
  @JsonKey(name: 'last_page')
  final int lastPage;
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  final List<DatasetLink> links;
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  final String path;
  @JsonKey(name: 'per_page')
  final int perPage;
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  final int? to;
  final int total;

  const DatasetItems(
      {required this.currentPage,
      required this.data,
      required this.firstPageUrl,
      required this.from,
      required this.lastPage,
      required this.lastPageUrl,
      required this.links,
      required this.nextPageUrl,
      required this.path,
      required this.perPage,
      required this.prevPageUrl,
      required this.to,
      required this.total});

  factory DatasetItems.copyFrom(
      {int? currantPage,
      List<T>? data,
      String? firstPageUrl,
      int? from,
      int? lastPage,
      String? lastPageUrl,
      List<DatasetLink>? links,
      String? nextPageUrl,
      String? path,
      int? perPage,
      String? prevPageUrl,
      int? to,
      int? total}) {
    return DatasetItems(
        currentPage: currantPage ?? 0,
        data: data ?? [],
        firstPageUrl: firstPageUrl,
        from: from ?? 0,
        lastPage: lastPage ?? 0,
        lastPageUrl: lastPageUrl,
        links: links ?? [],
        nextPageUrl: nextPageUrl,
        path: path ?? '',
        perPage: perPage ?? Constants.itemsPerPage,
        prevPageUrl: prevPageUrl,
        to: to ?? 0,
        total: total ?? 0);
  }

  // Create DatasetResponse model from json node
  factory DatasetItems.fromJson(Map<String, dynamic> node) =>
      _$DatasetItemsFromJson<T>(node);

  // Convert DatasetResponse model to json node
  Map<String, dynamic> toJson() => _$DatasetItemsToJson(this);

  @override
  List<Object?> get props => [
        currentPage,
        data,
        firstPageUrl,
        from,
        lastPage,
        lastPageUrl,
        links,
        nextPageUrl,
        path,
        perPage,
        prevPageUrl,
        to,
        total
      ];
}
