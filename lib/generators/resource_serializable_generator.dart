import 'package:analyzer/dart/element/element.dart';
import 'package:larastore/annotations.dart';
import 'package:source_gen/source_gen.dart';
import 'package:build/build.dart';

class ResourceSerializableGenerator extends GeneratorForAnnotation<ResourceSerializable> {

  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    var buffer = StringBuffer();

    /// Example: var user = UserModel.fromJson(json); userJson = user.toJson(); 
    // extension UserModelSerializer on UserModel {
    //   static UserModel fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
    //   Map<String, dynamic> toJson() => _$UserModelToJson(this);
    // }

    final className = element.displayName;

    buffer.writeln('/// Example: var user = UserModel.fromJson(json); userJson = user.toJson(); ');
    buffer.writeln('extension \$${className}Serializer on $className {');
    buffer.writeln('static $className fromJson(Map<String, dynamic> json) => _\$${className}FromJson(json);');
    buffer.writeln('Map<String, dynamic> toJson() => _\$${className}ToJson(this);');
    buffer.writeln('}');

    return buffer.toString();
  }
}


