import 'package:larastore/resource_converter.dart';

class LarastoreOptions {
  final String baseUrl;
  final ResourceConverter converter;
  const LarastoreOptions({
    required this.baseUrl,
    required this.converter
    });
}