// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pin_confirm_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PinConfirmResponse _$PinConfirmResponseFromJson(Map<String, dynamic> json) {
  return PinConfirmResp.fromJson(json);
}

/// @nodoc
class _$PinConfirmResponseTearOff {
  const _$PinConfirmResponseTearOff();

  PinConfirmResp call(@JsonKey(name: "access_token") String? accessToken,
      @JsonKey(name: "refreshToken") String? refreshToken) {
    return PinConfirmResp(
      accessToken,
      refreshToken,
    );
  }

  PinConfirmResponse fromJson(Map<String, Object> json) {
    return PinConfirmResponse.fromJson(json);
  }
}

/// @nodoc
const $PinConfirmResponse = _$PinConfirmResponseTearOff();

/// @nodoc
mixin _$PinConfirmResponse {
  /// Access Token
  @JsonKey(name: "access_token")
  String? get accessToken => throw _privateConstructorUsedError;

  /// Refresh Token
  @JsonKey(name: "refreshToken")
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PinConfirmResponseCopyWith<PinConfirmResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinConfirmResponseCopyWith<$Res> {
  factory $PinConfirmResponseCopyWith(
          PinConfirmResponse value, $Res Function(PinConfirmResponse) then) =
      _$PinConfirmResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "access_token") String? accessToken,
      @JsonKey(name: "refreshToken") String? refreshToken});
}

/// @nodoc
class _$PinConfirmResponseCopyWithImpl<$Res>
    implements $PinConfirmResponseCopyWith<$Res> {
  _$PinConfirmResponseCopyWithImpl(this._value, this._then);

  final PinConfirmResponse _value;
  // ignore: unused_field
  final $Res Function(PinConfirmResponse) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $PinConfirmRespCopyWith<$Res>
    implements $PinConfirmResponseCopyWith<$Res> {
  factory $PinConfirmRespCopyWith(
          PinConfirmResp value, $Res Function(PinConfirmResp) then) =
      _$PinConfirmRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "access_token") String? accessToken,
      @JsonKey(name: "refreshToken") String? refreshToken});
}

/// @nodoc
class _$PinConfirmRespCopyWithImpl<$Res>
    extends _$PinConfirmResponseCopyWithImpl<$Res>
    implements $PinConfirmRespCopyWith<$Res> {
  _$PinConfirmRespCopyWithImpl(
      PinConfirmResp _value, $Res Function(PinConfirmResp) _then)
      : super(_value, (v) => _then(v as PinConfirmResp));

  @override
  PinConfirmResp get _value => super._value as PinConfirmResp;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(PinConfirmResp(
      accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PinConfirmResp implements PinConfirmResp {
  const _$PinConfirmResp(@JsonKey(name: "access_token") this.accessToken,
      @JsonKey(name: "refreshToken") this.refreshToken);

  factory _$PinConfirmResp.fromJson(Map<String, dynamic> json) =>
      _$$PinConfirmRespFromJson(json);

  @override

  /// Access Token
  @JsonKey(name: "access_token")
  final String? accessToken;
  @override

  /// Refresh Token
  @JsonKey(name: "refreshToken")
  final String? refreshToken;

  @override
  String toString() {
    return 'PinConfirmResponse(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PinConfirmResp &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken);

  @JsonKey(ignore: true)
  @override
  $PinConfirmRespCopyWith<PinConfirmResp> get copyWith =>
      _$PinConfirmRespCopyWithImpl<PinConfirmResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PinConfirmRespToJson(this);
  }
}

abstract class PinConfirmResp implements PinConfirmResponse {
  const factory PinConfirmResp(
      @JsonKey(name: "access_token") String? accessToken,
      @JsonKey(name: "refreshToken") String? refreshToken) = _$PinConfirmResp;

  factory PinConfirmResp.fromJson(Map<String, dynamic> json) =
      _$PinConfirmResp.fromJson;

  @override

  /// Access Token
  @JsonKey(name: "access_token")
  String? get accessToken => throw _privateConstructorUsedError;
  @override

  /// Refresh Token
  @JsonKey(name: "refreshToken")
  String? get refreshToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PinConfirmRespCopyWith<PinConfirmResp> get copyWith =>
      throw _privateConstructorUsedError;
}
