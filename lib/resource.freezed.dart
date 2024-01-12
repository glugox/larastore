// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Resource<T> _$ResourceFromJson<T>(Map<String, dynamic> json) {
  return _Resource<T>.fromJson(json);
}

/// @nodoc
mixin _$Resource<T> {
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;
  DatasetMeta? get meta => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourceCopyWith<T, Resource<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceCopyWith<T, $Res> {
  factory $ResourceCopyWith(
          Resource<T> value, $Res Function(Resource<T>) then) =
      _$ResourceCopyWithImpl<T, $Res, Resource<T>>;
  @useResult
  $Res call(
      {Map<String, dynamic>? attributes, DatasetMeta? meta, String? error});
}

/// @nodoc
class _$ResourceCopyWithImpl<T, $Res, $Val extends Resource<T>>
    implements $ResourceCopyWith<T, $Res> {
  _$ResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = freezed,
    Object? meta = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DatasetMeta?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceImplCopyWith<T, $Res>
    implements $ResourceCopyWith<T, $Res> {
  factory _$$ResourceImplCopyWith(
          _$ResourceImpl<T> value, $Res Function(_$ResourceImpl<T>) then) =
      __$$ResourceImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? attributes, DatasetMeta? meta, String? error});
}

/// @nodoc
class __$$ResourceImplCopyWithImpl<T, $Res>
    extends _$ResourceCopyWithImpl<T, $Res, _$ResourceImpl<T>>
    implements _$$ResourceImplCopyWith<T, $Res> {
  __$$ResourceImplCopyWithImpl(
      _$ResourceImpl<T> _value, $Res Function(_$ResourceImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = freezed,
    Object? meta = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ResourceImpl<T>(
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DatasetMeta?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourceImpl<T> implements _Resource<T> {
  const _$ResourceImpl(
      {final Map<String, dynamic>? attributes, this.meta, this.error})
      : _attributes = attributes;

  factory _$ResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceImplFromJson(json);

  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DatasetMeta? meta;
  @override
  final String? error;

  @override
  String toString() {
    return 'Resource<$T>(attributes: $attributes, meta: $meta, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_attributes), meta, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceImplCopyWith<T, _$ResourceImpl<T>> get copyWith =>
      __$$ResourceImplCopyWithImpl<T, _$ResourceImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceImplToJson<T>(
      this,
    );
  }
}

abstract class _Resource<T> implements Resource<T> {
  const factory _Resource(
      {final Map<String, dynamic>? attributes,
      final DatasetMeta? meta,
      final String? error}) = _$ResourceImpl<T>;

  factory _Resource.fromJson(Map<String, dynamic> json) =
      _$ResourceImpl<T>.fromJson;

  @override
  Map<String, dynamic>? get attributes;
  @override
  DatasetMeta? get meta;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$ResourceImplCopyWith<T, _$ResourceImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
