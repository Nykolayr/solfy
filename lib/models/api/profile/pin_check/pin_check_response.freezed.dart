// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pin_check_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PinCheckResponse _$PinCheckResponseFromJson(Map<String, dynamic> json) {
  return PinCheckResp.fromJson(json);
}

/// @nodoc
class _$PinCheckResponseTearOff {
  const _$PinCheckResponseTearOff();

  PinCheckResp call(@JsonKey(name: "valid") bool? valid) {
    return PinCheckResp(
      valid,
    );
  }

  PinCheckResponse fromJson(Map<String, Object> json) {
    return PinCheckResponse.fromJson(json);
  }
}

/// @nodoc
const $PinCheckResponse = _$PinCheckResponseTearOff();

/// @nodoc
mixin _$PinCheckResponse {
  /// Валидный ли пин-код
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PinCheckResponseCopyWith<PinCheckResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinCheckResponseCopyWith<$Res> {
  factory $PinCheckResponseCopyWith(
          PinCheckResponse value, $Res Function(PinCheckResponse) then) =
      _$PinCheckResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$PinCheckResponseCopyWithImpl<$Res>
    implements $PinCheckResponseCopyWith<$Res> {
  _$PinCheckResponseCopyWithImpl(this._value, this._then);

  final PinCheckResponse _value;
  // ignore: unused_field
  final $Res Function(PinCheckResponse) _then;

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
abstract class $PinCheckRespCopyWith<$Res>
    implements $PinCheckResponseCopyWith<$Res> {
  factory $PinCheckRespCopyWith(
          PinCheckResp value, $Res Function(PinCheckResp) then) =
      _$PinCheckRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$PinCheckRespCopyWithImpl<$Res>
    extends _$PinCheckResponseCopyWithImpl<$Res>
    implements $PinCheckRespCopyWith<$Res> {
  _$PinCheckRespCopyWithImpl(
      PinCheckResp _value, $Res Function(PinCheckResp) _then)
      : super(_value, (v) => _then(v as PinCheckResp));

  @override
  PinCheckResp get _value => super._value as PinCheckResp;

  @override
  $Res call({
    Object? valid = freezed,
  }) {
    return _then(PinCheckResp(
      valid == freezed
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PinCheckResp implements PinCheckResp {
  const _$PinCheckResp(@JsonKey(name: "valid") this.valid);

  factory _$PinCheckResp.fromJson(Map<String, dynamic> json) =>
      _$$PinCheckRespFromJson(json);

  @override

  /// Валидный ли пин-код
  @JsonKey(name: "valid")
  final bool? valid;

  @override
  String toString() {
    return 'PinCheckResponse(valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PinCheckResp &&
            (identical(other.valid, valid) ||
                const DeepCollectionEquality().equals(other.valid, valid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(valid);

  @JsonKey(ignore: true)
  @override
  $PinCheckRespCopyWith<PinCheckResp> get copyWith =>
      _$PinCheckRespCopyWithImpl<PinCheckResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PinCheckRespToJson(this);
  }
}

abstract class PinCheckResp implements PinCheckResponse {
  const factory PinCheckResp(@JsonKey(name: "valid") bool? valid) =
      _$PinCheckResp;

  factory PinCheckResp.fromJson(Map<String, dynamic> json) =
      _$PinCheckResp.fromJson;

  @override

  /// Валидный ли пин-код
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PinCheckRespCopyWith<PinCheckResp> get copyWith =>
      throw _privateConstructorUsedError;
}
