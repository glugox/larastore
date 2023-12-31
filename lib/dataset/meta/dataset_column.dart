import 'package:larastore/dataset/meta/dataset_rule.dart';

class DatasetColumn {
  
  final String dataType;
  final bool isRequired;
  final String? defaultValue;
  final bool isEmail;
  final String name;
  final String label;
  final List<DatasetRule> rules;
  final bool isLinkable;
  final bool isHidden;
  final bool showLabel;
  final bool showValue;
  final bool canReset;
  final bool isDisabled;
  final bool isSortable;
  final bool isNullable;
  final bool isSearchable;
  final bool isAccessor;
  final bool isPicklistItem;
  final bool isRelation;
  final String? relationName;
  final String? relationPath;
  final String slugPrefix;
  final bool isFilterable;
  final bool showInTable;
  final bool showInForm;
  final bool showOnPage;
  final int? colSpan;
  final String? namespace;
  final String? render;
  final String? renderProps;
  final bool lazyOptions;
  final int? min;
  final int? max;

  DatasetColumn(
    this.dataType,
    this.isRequired,
    this.defaultValue,
    this.isEmail,
    this.name,
    this.label,
    this.rules,
    this.isLinkable,
    this.isHidden,
    this.showLabel,
    this.showValue,
    this.canReset,
    this.isDisabled,
    this.isSortable,
    this.isNullable,
    this.isSearchable,
    this.isAccessor,
    this.isPicklistItem,
    this.isRelation,
    this.relationName,
    this.relationPath,
    this.slugPrefix,
    this.isFilterable,
    this.showInTable,
    this.showInForm,
    this.showOnPage,
    this.colSpan,
    this.namespace,
    this.render,
    this.renderProps,
    this.lazyOptions,
    this.min,
    this.max,
  );
}
