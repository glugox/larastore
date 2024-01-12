
import 'package:build/build.dart';
import 'package:larastore/generators/resource_serializable_generator.dart';
import 'package:source_gen/source_gen.dart';

/// This file is the main import for our builder

/// Main generator factory. See build.yml
Builder resourceBuilder(BuilderOptions options) => SharedPartBuilder([ResourceSerializableGenerator()], 'resource');