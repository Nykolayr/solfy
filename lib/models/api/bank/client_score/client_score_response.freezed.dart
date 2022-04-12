// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_score_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientScoreResponse _$ClientScoreResponseFromJson(Map<String, dynamic> json) {
  return ClientScoreResp.fromJson(json);
}

/// @nodoc
class _$ClientScoreResponseTearOff {
  const _$ClientScoreResponseTearOff();

  ClientScoreResp call(@JsonKey(name: "valid") bool? valid) {
    return ClientScoreResp(
      valid,
    );
  }

  ClientScoreResponse fromJson(Map<String, Object> json) {
    return ClientScoreResponse.fromJson(json);
  }
}

/// @nodoc
const $ClientScoreResponse = _$ClientScoreResponseTearOff();

/// @nodoc
mixin _$ClientScoreResponse {
  /// Смогли ли отправить анкету
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientScoreResponseCopyWith<ClientScoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientScoreResponseCopyWith<$Res> {
  factory $ClientScoreResponseCopyWith(
          ClientScoreResponse value, $Res Function(ClientScoreResponse) then) =
      _$ClientScoreResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$ClientScoreResponseCopyWithImpl<$Res>
    implements $ClientScoreResponseCopyWith<$Res> {
  _$ClientScoreResponseCopyWithImpl(this._value, this._then);

  final ClientScoreResponse _value;
  // ignore: unused_field
  final $Res Function(ClientScoreResponse) _then;

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
abstract class $ClientScoreRespCopyWith<$Res>
    implements $ClientScoreResponseCopyWith<$Res> {
  factory $ClientScoreRespCopyWith(
          ClientScoreResp value, $Res Function(ClientScoreResp) then) =
      _$ClientScoreRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$ClientScoreRespCopyWithImpl<$Res>
    extends _$ClientScoreResponseCopyWithImpl<$Res>
    implements $ClientScoreRespCopyWith<$Res> {
  _$ClientScoreRespCopyWithImpl(
      ClientScoreResp _value, $Res Function(ClientScoreResp) _then)
      : super(_value, (v) => _then(v as ClientScoreResp));

  @override
  ClientScoreResp get _value => super._value as ClientScoreResp;

  @override
  $Res call({
    Object? valid = freezed,
  }) {
    return _then(ClientScoreResp(
      valid == freezed
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientScoreResp implements ClientScoreResp {
  const _$ClientScoreResp(@JsonKey(name: "valid") this.valid);

  factory _$ClientScoreResp.fromJson(Map<String, dynamic> json) =>
      _$$ClientScoreRespFromJson(json);

  @override

  /// Смогли ли отправить анкету
  @JsonKey(name: "valid")
  final bool? valid;

  @override
  String toString() {
    return 'ClientScoreResponse(valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClientScoreResp &&
            (identical(other.valid, valid) ||
                const DeepCollectionEquality().equals(other.valid, valid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(valid);

  @JsonKey(ignore: true)
  @override
  $ClientScoreRespCopyWith<ClientScoreResp> get copyWith =>
      _$ClientScoreRespCopyWithImpl<ClientScoreResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientScoreRespToJson(this);
  }
}

abstract class ClientScoreResp implements ClientScoreResponse {
  const factory ClientScoreResp(@JsonKey(name: "valid") bool? valid) =
      _$ClientScoreResp;

  factory ClientScoreResp.fromJson(Map<String, dynamic> json) =
      _$ClientScoreResp.fromJson;

  @override

  /// Смогли ли отправить анкету
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ClientScoreRespCopyWith<ClientScoreResp> get copyWith =>
      throw _privateConstructorUsedError;
}
