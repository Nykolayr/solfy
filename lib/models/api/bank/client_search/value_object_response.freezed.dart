// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_object_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ValueObjectResponse _$ValueObjectResponseFromJson(Map<String, dynamic> json) {
  return ValueObject.fromJson(json);
}

/// @nodoc
class _$ValueObjectResponseTearOff {
  const _$ValueObjectResponseTearOff();

  ValueObject call(
      @JsonKey(name: "id") dynamic id, @JsonKey(name: "value") String? value) {
    return ValueObject(
      id,
      value,
    );
  }

  ValueObjectResponse fromJson(Map<String, Object> json) {
    return ValueObjectResponse.fromJson(json);
  }
}

/// @nodoc
const $ValueObjectResponse = _$ValueObjectResponseTearOff();

/// @nodoc
mixin _$ValueObjectResponse {
  /// Идентификатор объекта
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Значение объекта
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValueObjectResponseCopyWith<ValueObjectResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueObjectResponseCopyWith<$Res> {
  factory $ValueObjectResponseCopyWith(
          ValueObjectResponse value, $Res Function(ValueObjectResponse) then) =
      _$ValueObjectResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "value") String? value});
}

/// @nodoc
class _$ValueObjectResponseCopyWithImpl<$Res>
    implements $ValueObjectResponseCopyWith<$Res> {
  _$ValueObjectResponseCopyWithImpl(this._value, this._then);

  final ValueObjectResponse _value;
  // ignore: unused_field
  final $Res Function(ValueObjectResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $ValueObjectCopyWith<$Res>
    implements $ValueObjectResponseCopyWith<$Res> {
  factory $ValueObjectCopyWith(
          ValueObject value, $Res Function(ValueObject) then) =
      _$ValueObjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "value") String? value});
}

/// @nodoc
class _$ValueObjectCopyWithImpl<$Res>
    extends _$ValueObjectResponseCopyWithImpl<$Res>
    implements $ValueObjectCopyWith<$Res> {
  _$ValueObjectCopyWithImpl(
      ValueObject _value, $Res Function(ValueObject) _then)
      : super(_value, (v) => _then(v as ValueObject));

  @override
  ValueObject get _value => super._value as ValueObject;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(ValueObject(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValueObject implements ValueObject {
  const _$ValueObject(
      @JsonKey(name: "id") this.id, @JsonKey(name: "value") this.value);

  factory _$ValueObject.fromJson(Map<String, dynamic> json) =>
      _$$ValueObjectFromJson(json);

  @override

  /// Идентификатор объекта
  @JsonKey(name: "id")
  final dynamic id;
  @override

  /// Значение объекта
  @JsonKey(name: "value")
  final String? value;

  @override
  String toString() {
    return 'ValueObjectResponse(id: $id, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValueObject &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $ValueObjectCopyWith<ValueObject> get copyWith =>
      _$ValueObjectCopyWithImpl<ValueObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValueObjectToJson(this);
  }
}

abstract class ValueObject implements ValueObjectResponse {
  const factory ValueObject(@JsonKey(name: "id") dynamic id,
      @JsonKey(name: "value") String? value) = _$ValueObject;

  factory ValueObject.fromJson(Map<String, dynamic> json) =
      _$ValueObject.fromJson;

  @override

  /// Идентификатор объекта
  @JsonKey(name: "id")
  dynamic get id => throw _privateConstructorUsedError;
  @override

  /// Значение объекта
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ValueObjectCopyWith<ValueObject> get copyWith =>
      throw _privateConstructorUsedError;
}
