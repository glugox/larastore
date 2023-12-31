import 'package:larastore/enum/convert_type.dart';

abstract class ResourceConverter {
  Function? getConverterFor({required String resource, required ConvertType convertType});
}