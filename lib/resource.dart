import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:larastore/dataset/meta.dart';
import 'package:larastore/dataset/resource_relations.dart';

part 'resource.g.dart';

/// Any model created on the backend.
@JsonSerializable(explicitToJson: true)
class Resource extends Equatable {

  @JsonKey(name: 'attributes')
  final Map<String, dynamic>? attributes;
  @JsonKey(name: 'meta')
  final DatasetMeta? meta;
  //final List<ResourceRelation> relations;
  final String? error;

  const Resource({this.attributes, this.meta, this.error});

  factory Resource.fail(String message) {
    return Resource(error: message);
  }

  // Create Dataset model from json node
  static Resource fromJson(Map<String, dynamic> node) =>
      _$ResourceFromJson(node);

  // Convert Dataset model to json node
  Map<String, dynamic> toJson() => _$ResourceToJson(this);

  @override
  List<Object?> get props => [attributes, meta];

}