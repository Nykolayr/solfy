// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comfortable_payment_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComfortablePaymentUpdateResponse _$ComfortablePaymentUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return ComfortablePaymentUpdateResp.fromJson(json);
}

/// @nodoc
class _$ComfortablePaymentUpdateResponseTearOff {
  const _$ComfortablePaymentUpdateResponseTearOff();

  ComfortablePaymentUpdateResp call(@JsonKey(name: "valid") bool? valid) {
    return ComfortablePaymentUpdateResp(
      valid,
    );
  }

  ComfortablePaymentUpdateResponse fromJson(Map<String, Object> json) {
    return ComfortablePaymentUpdateResponse.fromJson(json);
  }
}

/// @nodoc
const $ComfortablePaymentUpdateResponse =
    _$ComfortablePaymentUpdateResponseTearOff();

/// @nodoc
mixin _$ComfortablePaymentUpdateResponse {
  /// Успешно ли совершили обновили комфортный платеж
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComfortablePaymentUpdateResponseCopyWith<ComfortablePaymentUpdateResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComfortablePaymentUpdateResponseCopyWith<$Res> {
  factory $ComfortablePaymentUpdateResponseCopyWith(
          ComfortablePaymentUpdateResponse value,
          $Res Function(ComfortablePaymentUpdateResponse) then) =
      _$ComfortablePaymentUpdateResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$ComfortablePaymentUpdateResponseCopyWithImpl<$Res>
    implements $ComfortablePaymentUpdateResponseCopyWith<$Res> {
  _$ComfortablePaymentUpdateResponseCopyWithImpl(this._value, this._then);

  final ComfortablePaymentUpdateResponse _value;
  // ignore: unused_field
  final $Res Function(ComfortablePaymentUpdateResponse) _then;

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
abstract class $ComfortablePaymentUpdateRespCopyWith<$Res>
    implements $ComfortablePaymentUpdateResponseCopyWith<$Res> {
  factory $ComfortablePaymentUpdateRespCopyWith(
          ComfortablePaymentUpdateResp value,
          $Res Function(ComfortablePaymentUpdateResp) then) =
      _$ComfortablePaymentUpdateRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$ComfortablePaymentUpdateRespCopyWithImpl<$Res>
    extends _$ComfortablePaymentUpdateResponseCopyWithImpl<$Res>
    implements $ComfortablePaymentUpdateRespCopyWith<$Res> {
  _$ComfortablePaymentUpdateRespCopyWithImpl(
      ComfortablePaymentUpdateResp _value,
      $Res Function(ComfortablePaymentUpdateResp) _then)
      : super(_value, (v) => _then(v as ComfortablePaymentUpdateResp));

  @override
  ComfortablePaymentUpdateResp get _value =>
      super._value as ComfortablePaymentUpdateResp;

  @override
  $Res call({
    Object? valid = freezed,
  }) {
    return _then(ComfortablePaymentUpdateResp(
      valid == freezed
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComfortablePaymentUpdateResp implements ComfortablePaymentUpdateResp {
  const _$ComfortablePaymentUpdateResp(@JsonKey(name: "valid") this.valid);

  factory _$ComfortablePaymentUpdateResp.fromJson(Map<String, dynamic> json) =>
      _$$ComfortablePaymentUpdateRespFromJson(json);

  @override

  /// Успешно ли совершили обновили комфортный платеж
  @JsonKey(name: "valid")
  final bool? valid;

  @override
  String toString() {
    return 'ComfortablePaymentUpdateResponse(valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ComfortablePaymentUpdateResp &&
            (identical(other.valid, valid) ||
                const DeepCollectionEquality().equals(other.valid, valid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(valid);

  @JsonKey(ignore: true)
  @override
  $ComfortablePaymentUpdateRespCopyWith<ComfortablePaymentUpdateResp>
      get copyWith => _$ComfortablePaymentUpdateRespCopyWithImpl<
          ComfortablePaymentUpdateResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComfortablePaymentUpdateRespToJson(this);
  }
}

abstract class ComfortablePaymentUpdateResp
    implements ComfortablePaymentUpdateResponse {
  const factory ComfortablePaymentUpdateResp(
      @JsonKey(name: "valid") bool? valid) = _$ComfortablePaymentUpdateResp;

  factory ComfortablePaymentUpdateResp.fromJson(Map<String, dynamic> json) =
      _$ComfortablePaymentUpdateResp.fromJson;

  @override

  /// Успешно ли совершили обновили комфортный платеж
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ComfortablePaymentUpdateRespCopyWith<ComfortablePaymentUpdateResp>
      get copyWith => throw _privateConstructorUsedError;
}
