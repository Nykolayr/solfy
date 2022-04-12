// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'refillment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefillmentResponse _$RefillmentResponseFromJson(Map<String, dynamic> json) {
  return RefillmentResp.fromJson(json);
}

/// @nodoc
class _$RefillmentResponseTearOff {
  const _$RefillmentResponseTearOff();

  RefillmentResp call(@JsonKey(name: "valid") bool? valid) {
    return RefillmentResp(
      valid,
    );
  }

  RefillmentResponse fromJson(Map<String, Object> json) {
    return RefillmentResponse.fromJson(json);
  }
}

/// @nodoc
const $RefillmentResponse = _$RefillmentResponseTearOff();

/// @nodoc
mixin _$RefillmentResponse {
  /// Успешно ли совершили платеж
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefillmentResponseCopyWith<RefillmentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefillmentResponseCopyWith<$Res> {
  factory $RefillmentResponseCopyWith(
          RefillmentResponse value, $Res Function(RefillmentResponse) then) =
      _$RefillmentResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$RefillmentResponseCopyWithImpl<$Res>
    implements $RefillmentResponseCopyWith<$Res> {
  _$RefillmentResponseCopyWithImpl(this._value, this._then);

  final RefillmentResponse _value;
  // ignore: unused_field
  final $Res Function(RefillmentResponse) _then;

  @override
  $Res call({
    Object? valid = freezed,
  }) {
    return _then(_value.copyWith(
      valid: valid == freezed
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class $RefillmentRespCopyWith<$Res>
    implements $RefillmentResponseCopyWith<$Res> {
  factory $RefillmentRespCopyWith(
          RefillmentResp value, $Res Function(RefillmentResp) then) =
      _$RefillmentRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$RefillmentRespCopyWithImpl<$Res>
    extends _$RefillmentResponseCopyWithImpl<$Res>
    implements $RefillmentRespCopyWith<$Res> {
  _$RefillmentRespCopyWithImpl(
      RefillmentResp _value, $Res Function(RefillmentResp) _then)
      : super(_value, (v) => _then(v as RefillmentResp));

  @override
  RefillmentResp get _value => super._value as RefillmentResp;

  @override
  $Res call({
    Object? valid = freezed,
  }) {
    return _then(RefillmentResp(
      valid == freezed
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefillmentResp implements RefillmentResp {
  const _$RefillmentResp(@JsonKey(name: "valid") this.valid);

  factory _$RefillmentResp.fromJson(Map<String, dynamic> json) =>
      _$$RefillmentRespFromJson(json);

  @override

  /// Успешно ли совершили платеж
  @JsonKey(name: "valid")
  final bool? valid;

  @override
  String toString() {
    return 'RefillmentResponse(valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefillmentResp &&
            (identical(other.valid, valid) ||
                const DeepCollectionEquality().equals(other.valid, valid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(valid);

  @JsonKey(ignore: true)
  @override
  $RefillmentRespCopyWith<RefillmentResp> get copyWith =>
      _$RefillmentRespCopyWithImpl<RefillmentResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefillmentRespToJson(this);
  }
}

abstract class RefillmentResp implements RefillmentResponse {
  const factory RefillmentResp(@JsonKey(name: "valid") bool? valid) =
      _$RefillmentResp;

  factory RefillmentResp.fromJson(Map<String, dynamic> json) =
      _$RefillmentResp.fromJson;

  @override

  /// Успешно ли совершили платеж
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RefillmentRespCopyWith<RefillmentResp> get copyWith =>
      throw _privateConstructorUsedError;
}
