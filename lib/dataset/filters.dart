import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'filters.g.dart';

@JsonSerializable()
class DatasetFilters extends Equatable {
  final String? search;
  final String? trashed;

  const DatasetFilters(this.search, this.trashed);

  // Create DatasetFilters model from json node
  factory DatasetFilters.fromJson(Map<String, dynamic> node) =>
      _$DatasetFiltersFromJson(node);

  // Convert DatasetFilters model to json node
  Map<String, dynamic> toJson() => _$DatasetFiltersToJson(this);
  
  @override
  List<Object?> get props => [search, trashed];
}
