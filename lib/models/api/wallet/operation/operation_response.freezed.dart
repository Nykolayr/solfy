// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'operation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OperationResponse _$OperationResponseFromJson(Map<String, dynamic> json) {
  return OperationResp.fromJson(json);
}

/// @nodoc
class _$OperationResponseTearOff {
  const _$OperationResponseTearOff();

  OperationResp call(
      @JsonKey(name: "operation") OperationOperationItemResponse? operation) {
    return OperationResp(
      operation,
    );
  }

  OperationResponse fromJson(Map<String, Object> json) {
    return OperationResponse.fromJson(json);
  }
}

/// @nodoc
const $OperationResponse = _$OperationResponseTearOff();

/// @nodoc
mixin _$OperationResponse {
  /// Операция
  @JsonKey(name: "operation")
  OperationOperationItemResponse? get operation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationResponseCopyWith<OperationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationResponseCopyWith<$Res> {
  factory $OperationResponseCopyWith(
          OperationResponse value, $Res Function(OperationResponse) then) =
      _$OperationResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "operation") OperationOperationItemResponse? operation});

  $OperationOperationItemResponseCopyWith<$Res>? get operation;
}

/// @nodoc
class _$OperationResponseCopyWithImpl<$Res>
    implements $OperationResponseCopyWith<$Res> {
  _$OperationResponseCopyWithImpl(this._value, this._then);

  final OperationResponse _value;
  // ignore: unused_field
  final $Res Function(OperationResponse) _then;

  @override
  $Res call({
    Object? operation = freezed,
  }) {
    return _then(_value.copyWith(
      operation: operation == freezed
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as OperationOperationItemResponse?,
    ));
  }

  @override
  $OperationOperationItemResponseCopyWith<$Res>? get operation {
    if (_value.operation == null) {
      return null;
    }

    return $OperationOperationItemResponseCopyWith<$Res>(_value.operation!,
        (value) {
      return _then(_value.copyWith(operation: value));
    });
  }
}

/// @nodoc
abstract class $OperationRespCopyWith<$Res>
    implements $OperationResponseCopyWith<$Res> {
  factory $OperationRespCopyWith(
          OperationResp value, $Res Function(OperationResp) then) =
      _$OperationRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "operation") OperationOperationItemResponse? operation});

  @override
  $OperationOperationItemResponseCopyWith<$Res>? get operation;
}

/// @nodoc
class _$OperationRespCopyWithImpl<$Res>
    extends _$OperationResponseCopyWithImpl<$Res>
    implements $OperationRespCopyWith<$Res> {
  _$OperationRespCopyWithImpl(
      OperationResp _value, $Res Function(OperationResp) _then)
      : super(_value, (v) => _then(v as OperationResp));

  @override
  OperationResp get _value => super._value as OperationResp;

  @override
  $Res call({
    Object? operation = freezed,
  }) {
    return _then(OperationResp(
      operation == freezed
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as OperationOperationItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperationResp implements OperationResp {
  const _$OperationResp(@JsonKey(name: "operation") this.operation);

  factory _$OperationResp.fromJson(Map<String, dynamic> json) =>
      _$$OperationRespFromJson(json);

  @override

  /// Операция
  @JsonKey(name: "operation")
  final OperationOperationItemResponse? operation;

  @override
  String toString() {
    return 'OperationResponse(operation: $operation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OperationResp &&
            (identical(other.operation, operation) ||
                const DeepCollectionEquality()
                    .equals(other.operation, operation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(operation);

  @JsonKey(ignore: true)
  @override
  $OperationRespCopyWith<OperationResp> get copyWith =>
      _$OperationRespCopyWithImpl<OperationResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperationRespToJson(this);
  }
}

abstract class OperationResp implements OperationResponse {
  const factory OperationResp(
      @JsonKey(name: "operation")
          OperationOperationItemResponse? operation) = _$OperationResp;

  factory OperationResp.fromJson(Map<String, dynamic> json) =
      _$OperationResp.fromJson;

  @override

  /// Операция
  @JsonKey(name: "operation")
  OperationOperationItemResponse? get operation =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $OperationRespCopyWith<OperationResp> get copyWith =>
      throw _privateConstructorUsedError;
}
