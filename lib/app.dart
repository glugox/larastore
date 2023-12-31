import 'package:equatable/equatable.dart';
import 'package:larastore/enum/convert_type.dart';
import 'package:larastore/resource_converter.dart';

class App {}

/// This is a base class for all models that are stored in database.
/// Some fields are required. If the database table does not have 'name' field,
/// the model class must provide property or getter to get name representation
/// using other data.
abstract class ResourceEntity extends Equatable {
  final int? id;
  final String name;

  const ResourceEntity({
    this.id,
    required this.name,
  });

  // Create user model from json node
  factory ResourceEntity.fromJson(Map<String, dynamic> node) {
    throw UnimplementedError();
  }

  // Convert user model to json node
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }

  @override
  List<Object?> get props => [id, name];
}

class UserModel implements ResourceEntity {
  @override
  final int? id;
  final String email;
  final String username;
  final String? token;

  const UserModel(
      {this.id, required this.email, required this.username, this.token});

  @override
  List<Object?> get props => [id, email, username];

  @override
  String get name => email;

  @override
  bool? get stringify => false;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'username': username,
      'token': token,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> node) => UserModel(
        id: node['id'] as int?,
        email: node['email'] as String,
        username: node['username'] as String,
        token: node['token'] as String?,
      );
}

class RegionModel implements ResourceEntity {
  @override
  final int? id;
  @override
  final String name;

  const RegionModel({this.id, required this.name});

  @override
  List<Object?> get props => [id, name];

  @override
  bool? get stringify => false;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory RegionModel.fromJson(Map<String, dynamic> node) =>
      RegionModel(id: node['id'] as int?, name: node['name'] as String);
}

class AppResourceConverter implements ResourceConverter {
  final fromJsonfactories = <String, Function>{
    'UserModel': (Map<String, dynamic> json) => UserModel.fromJson(json),
    'RegionModel': (Map<String, dynamic> json) => RegionModel.fromJson(json),
  };

  final toJsonFactories = <String, Function>{
      'UserModel': (UserModel model) => model.toJson(),
      'RegionModel': (RegionModel model) => model.toJson()
    };

  @override
  Function? getConverterFor({required String resource, required ConvertType convertType}){
    return convertType == ConvertType.fromJson 
      ? fromJsonfactories[resource]
      : toJsonFactories[resource];
  }
}
