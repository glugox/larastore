import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meta.g.dart';

@JsonSerializable()
class DatasetMeta extends Equatable {
  final String slugPlural;
  final String slugSingular;
  final String titlePlural;
  final String titleSingular;
  final String? color;
  final String? icon;
  final String relationName;
  final String? slugPrefix;
  final String? className;
  final String? newFormComponent;

  const DatasetMeta(
      {required this.slugPlural,
      required this.slugSingular,
      required this.titlePlural,
      required this.titleSingular,
      required this.relationName,
      this.color,
      this.icon,
      this.slugPrefix,
      this.className,
      this.newFormComponent});

  factory DatasetMeta.copyFrom(
      {required String slugPlural,
      required String slugSingular,
      required String titlePlural,
      required String titleSingular,
      required String relationName,
      String? color,
      String? icon,
      String? slugPrefix,
      String? className,
      String? newFormComponent}) {
    return DatasetMeta(
      slugPlural: slugPlural,
      slugSingular: slugSingular,
      titlePlural: titlePlural,
      titleSingular: titleSingular,
      color: color,
      icon: icon,
      relationName: relationName,
      slugPrefix: slugPrefix,
      className: className,
      newFormComponent: newFormComponent,
    );
  }

  // Create DatasetMeta model from json node
  factory DatasetMeta.fromJson(Map<String, dynamic> node) =>
      _$DatasetMetaFromJson(node);

  // Convert DatasetMeta model to json node
  Map<String, dynamic> toJson() => _$DatasetMetaToJson(this);
  
  @override
  List<Object?> get props => [slugPlural, slugSingular, titlePlural, titleSingular, color, icon, relationName, slugPrefix, className, newFormComponent];
}
