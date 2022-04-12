// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pin_forgot_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PinForgotResponse _$PinForgotResponseFromJson(Map<String, dynamic> json) {
  return PinForgotResp.fromJson(json);
}

/// @nodoc
class _$PinForgotResponseTearOff {
  const _$PinForgotResponseTearOff();

  PinForgotResp call(@JsonKey(name: "valid") bool? valid,
      @JsonKey(name: "message") String? message) {
    return PinForgotResp(
      valid,
      message,
    );
  }

  PinForgotResponse fromJson(Map<String, Object> json) {
    return PinForgotResponse.fromJson(json);
  }
}

/// @nodoc
const $PinForgotResponse = _$PinForgotResponseTearOff();

/// @nodoc
mixin _$PinForgotResponse {
  /// Валидный ли запрос
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;

  /// Сообщение
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PinForgotResponseCopyWith<PinForgotResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinForgotResponseCopyWith<$Res> {
  factory $PinForgotResponseCopyWith(
          PinForgotResponse value, $Res Function(PinForgotResponse) then) =
      _$PinForgotResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "valid") bool? valid,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class _$PinForgotResponseCopyWithImpl<$Res>
    implements $PinForgotResponseCopyWith<$Res> {
  _$PinForgotResponseCopyWithImpl(this._value, this._then);

  final PinForgotResponse _value;
  // ignore: unused_field
  final $Res Function(PinForgotResponse) _then;

  @override
  $Res call({
    Object? valid = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      valid: valid == freezed
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $PinForgotRespCopyWith<$Res>
    implements $PinForgotResponseCopyWith<$Res> {
  factory $PinForgotRespCopyWith(
          PinForgotResp value, $Res Function(PinForgotResp) then) =
      _$PinForgotRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "valid") bool? valid,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class _$PinForgotRespCopyWithImpl<$Res>
    extends _$PinForgotResponseCopyWithImpl<$Res>
    implements $PinForgotRespCopyWith<$Res> {
  _$PinForgotRespCopyWithImpl(
      PinForgotResp _value, $Res Function(PinForgotResp) _then)
      : super(_value, (v) => _then(v as PinForgotResp));

  @override
  PinForgotResp get _value => super._value as PinForgotResp;

  @override
  $Res call({
    Object? valid = freezed,
    Object? message = freezed,
  }) {
    return _then(PinForgotResp(
      valid == freezed
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool?,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PinForgotResp implements PinForgotResp {
  const _$PinForgotResp(@JsonKey(name: "valid") this.valid,
      @JsonKey(name: "message") this.message);

  factory _$PinForgotResp.fromJson(Map<String, dynamic> json) =>
      _$$PinForgotRespFromJson(json);

  @override

  /// Валидный ли запрос
  @JsonKey(name: "valid")
  final bool? valid;
  @override

  /// Сообщение
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'PinForgotResponse(valid: $valid, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PinForgotResp &&
            (identical(other.valid, valid) ||
                const DeepCollectionEquality().equals(other.valid, valid)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(valid) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $PinForgotRespCopyWith<PinForgotResp> get copyWith =>
      _$PinForgotRespCopyWithImpl<PinForgotResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PinForgotRespToJson(this);
  }
}

abstract class PinForgotResp implements PinForgotResponse {
  const factory PinForgotResp(@JsonKey(name: "valid") bool? valid,
      @JsonKey(name: "message") String? message) = _$PinForgotResp;

  factory PinForgotResp.fromJson(Map<String, dynamic> json) =
      _$PinForgotResp.fromJson;

  @override

  /// Валидный ли запрос
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;
  @override

  /// Сообщение
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PinForgotRespCopyWith<PinForgotResp> get copyWith =>
      throw _privateConstructorUsedError;
}
