import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:larastore/dataset/filters.dart';
import 'package:larastore/dataset/items.dart';
import 'package:larastore/dataset/meta.dart';
import 'package:larastore/enum/convert_type.dart';
import 'package:larastore/resource_converter.dart';
import 'package:larastore/support/type_support.dart';
import 'package:larastore/mixins/entity_mixin.dart';

part 'dataset.g.dart';

@JsonSerializable(explicitToJson: true)
class Dataset<T> extends Equatable {
  @GenericResourceConverter()
  final DatasetItems<T>? items;

  @JsonKey(name: 'filters')
  final DatasetFilters? filters;

  @JsonKey()
  final DatasetMeta? meta;
  final String? error;

  const Dataset({this.items, this.meta, this.filters, this.error});

  // Generic converter used to convert item data from api to dart and vice versa
  static late ResourceConverter _genericConverter;

  static void initialize({required ResourceConverter converter}) {
    _genericConverter = converter;
  }

  // Getter for the generic converter
  static ResourceConverter get converter => _genericConverter;

  factory Dataset.fail(String message) {
    return Dataset(error: message);
  }

  // Create Dataset model from json node
  static Dataset fromJson<T>(Map<String, dynamic> node) =>
      _$DatasetFromJson<T>(node);

  // Convert Dataset model to json node
  Map<String, dynamic> toJson() => _$DatasetToJson(this);

  @override
  List<Object?> get props => [items, meta, filters, error];

  static Dataset<T> toEntityDataset<T>(Dataset from) {

    return Dataset<T>(
        error: from.error,
        filters: from.filters,
        meta: from.meta,
        items: DatasetItems<T>(
            currentPage: from.items!.currentPage,
            data: from.items!.data.map((e) => (e as EntityMixin).toEntity() as T).toList(),
            firstPageUrl: from.items!.firstPageUrl,
            from: from.items!.from,
            lastPage: from.items!.lastPage,
            lastPageUrl: from.items!.lastPageUrl,
            links: from.items!.links,
            nextPageUrl: from.items!.nextPageUrl,
            path: from.items!.path,
            perPage: from.items!.perPage,
            prevPageUrl: from.items!.prevPageUrl,
            to: from.items!.to,
            total: from.items!.total
          ));
  }
}

class GenericResourceConverter<T> implements JsonConverter<T, Object?> {
  const GenericResourceConverter();

  @override
  T fromJson(Object? json) {
    return Dataset.converter
        .getConverterFor(
            resource: TypeSupport().typeToString(T),
            convertType: ConvertType.fromJson)!
        .call(json);
  }

  @override
  Object? toJson(T object) {
    return Dataset.converter
        .getConverterFor(
            resource: TypeSupport().typeToString(T),
            convertType: ConvertType.toJson)!
        .call(object);
  }
}
