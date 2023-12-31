import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dataset_link.g.dart';

@JsonSerializable()
class DatasetLink extends Equatable {
  
  final String? url;
  final String label;
  final bool active;

  const DatasetLink(this.url, this.label, this.active);

  // Create DatasetLink model from json node
  factory DatasetLink.fromJson(Map<String, dynamic> node) =>
      _$DatasetLinkFromJson(node);

  // Convert DatasetLink model to json node
  Map<String, dynamic> toJson() => _$DatasetLinkToJson(this);
  
  @override
  List<Object?> get props => [url, label, active];
}