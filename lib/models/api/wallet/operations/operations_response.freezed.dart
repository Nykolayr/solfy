// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'operations_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OperationsResponse _$OperationsResponseFromJson(Map<String, dynamic> json) {
  return OperationsResp.fromJson(json);
}

/// @nodoc
class _$OperationsResponseTearOff {
  const _$OperationsResponseTearOff();

  OperationsResp call(
      @JsonKey(name: "groups")
          List<OperationsGroupItemResponse>? groups,
      @JsonKey(name: "operations")
          List<OperationsOperationItemResponse>? operations) {
    return OperationsResp(
      groups,
      operations,
    );
  }

  OperationsResponse fromJson(Map<String, Object> json) {
    return OperationsResponse.fromJson(json);
  }
}

/// @nodoc
const $OperationsResponse = _$OperationsResponseTearOff();

/// @nodoc
mixin _$OperationsResponse {
  /// Группы операций
  @JsonKey(name: "groups")
  List<OperationsGroupItemResponse>? get groups =>
      throw _privateConstructorUsedError;

  /// Операции
  @JsonKey(name: "operations")
  List<OperationsOperationItemResponse>? get operations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationsResponseCopyWith<OperationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationsResponseCopyWith<$Res> {
  factory $OperationsResponseCopyWith(
          OperationsResponse value, $Res Function(OperationsResponse) then) =
      _$OperationsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "groups")
          List<OperationsGroupItemResponse>? groups,
      @JsonKey(name: "operations")
          List<OperationsOperationItemResponse>? operations});
}

/// @nodoc
class _$OperationsResponseCopyWithImpl<$Res>
    implements $OperationsResponseCopyWith<$Res> {
  _$OperationsResponseCopyWithImpl(this._value, this._then);

  final OperationsResponse _value;
  // ignore: unused_field
  final $Res Function(OperationsResponse) _then;

  @override
  $Res call({
    Object? groups = freezed,
    Object? operations = freezed,
  }) {
    return _then(_value.copyWith(
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<OperationsGroupItemResponse>?,
      operations: operations == freezed
          ? _value.operations
          : operations // ignore: cast_nullable_to_non_nullable
              as List<OperationsOperationItemResponse>?,
    ));
  }
}

/// @nodoc
abstract class $OperationsRespCopyWith<$Res>
    implements $OperationsResponseCopyWith<$Res> {
  factory $OperationsRespCopyWith(
          OperationsResp value, $Res Function(OperationsResp) then) =
      _$OperationsRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "groups")
          List<OperationsGroupItemResponse>? groups,
      @JsonKey(name: "operations")
          List<OperationsOperationItemResponse>? operations});
}

/// @nodoc
class _$OperationsRespCopyWithImpl<$Res>
    extends _$OperationsResponseCopyWithImpl<$Res>
    implements $OperationsRespCopyWith<$Res> {
  _$OperationsRespCopyWithImpl(
      OperationsResp _value, $Res Function(OperationsResp) _then)
      : super(_value, (v) => _then(v as OperationsResp));

  @override
  OperationsResp get _value => super._value as OperationsResp;

  @override
  $Res call({
    Object? groups = freezed,
    Object? operations = freezed,
  }) {
    return _then(OperationsResp(
      groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<OperationsGroupItemResponse>?,
      operations == freezed
          ? _value.operations
          : operations // ignore: cast_nullable_to_non_nullable
              as List<OperationsOperationItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperationsResp implements OperationsResp {
  const _$OperationsResp(@JsonKey(name: "groups") this.groups,
      @JsonKey(name: "operations") this.operations);

  factory _$OperationsResp.fromJson(Map<String, dynamic> json) =>
      _$$OperationsRespFromJson(json);

  @override

  /// Группы операций
  @JsonKey(name: "groups")
  final List<OperationsGroupItemResponse>? groups;
  @override

  /// Операции
  @JsonKey(name: "operations")
  final List<OperationsOperationItemResponse>? operations;

  @override
  String toString() {
    return 'OperationsResponse(groups: $groups, operations: $operations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OperationsResp &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.operations, operations) ||
                const DeepCollectionEquality()
                    .equals(other.operations, operations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(operations);

  @JsonKey(ignore: true)
  @override
  $OperationsRespCopyWith<OperationsResp> get copyWith =>
      _$OperationsRespCopyWithImpl<OperationsResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperationsRespToJson(this);
  }
}

abstract class OperationsResp implements OperationsResponse {
  const factory OperationsResp(
      @JsonKey(name: "groups")
          List<OperationsGroupItemResponse>? groups,
      @JsonKey(name: "operations")
          List<OperationsOperationItemResponse>? operations) = _$OperationsResp;

  factory OperationsResp.fromJson(Map<String, dynamic> json) =
      _$OperationsResp.fromJson;

  @override

  /// Группы операций
  @JsonKey(name: "groups")
  List<OperationsGroupItemResponse>? get groups =>
      throw _privateConstructorUsedError;
  @override

  /// Операции
  @JsonKey(name: "operations")
  List<OperationsOperationItemResponse>? get operations =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $OperationsRespCopyWith<OperationsResp> get copyWith =>
      throw _privateConstructorUsedError;
}
