// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_get_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletGetResponse _$WalletGetResponseFromJson(Map<String, dynamic> json) {
  return WalletGetResp.fromJson(json);
}

/// @nodoc
class _$WalletGetResponseTearOff {
  const _$WalletGetResponseTearOff();

  WalletGetResp call(
      @JsonKey(name: "wallet") WalletGetWalletItemResponse? wallet) {
    return WalletGetResp(
      wallet,
    );
  }

  WalletGetResponse fromJson(Map<String, Object> json) {
    return WalletGetResponse.fromJson(json);
  }
}

/// @nodoc
const $WalletGetResponse = _$WalletGetResponseTearOff();

/// @nodoc
mixin _$WalletGetResponse {
  /// Кошелек
  @JsonKey(name: "wallet")
  WalletGetWalletItemResponse? get wallet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletGetResponseCopyWith<WalletGetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletGetResponseCopyWith<$Res> {
  factory $WalletGetResponseCopyWith(
          WalletGetResponse value, $Res Function(WalletGetResponse) then) =
      _$WalletGetResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "wallet") WalletGetWalletItemResponse? wallet});

  $WalletGetWalletItemResponseCopyWith<$Res>? get wallet;
}

/// @nodoc
class _$WalletGetResponseCopyWithImpl<$Res>
    implements $WalletGetResponseCopyWith<$Res> {
  _$WalletGetResponseCopyWithImpl(this._value, this._then);

  final WalletGetResponse _value;
  // ignore: unused_field
  final $Res Function(WalletGetResponse) _then;

  @override
  $Res call({
    Object? wallet = freezed,
  }) {
    return _then(_value.copyWith(
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletGetWalletItemResponse?,
    ));
  }

  @override
  $WalletGetWalletItemResponseCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return $WalletGetWalletItemResponseCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc
abstract class $WalletGetRespCopyWith<$Res>
    implements $WalletGetResponseCopyWith<$Res> {
  factory $WalletGetRespCopyWith(
          WalletGetResp value, $Res Function(WalletGetResp) then) =
      _$WalletGetRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "wallet") WalletGetWalletItemResponse? wallet});

  @override
  $WalletGetWalletItemResponseCopyWith<$Res>? get wallet;
}

/// @nodoc
class _$WalletGetRespCopyWithImpl<$Res>
    extends _$WalletGetResponseCopyWithImpl<$Res>
    implements $WalletGetRespCopyWith<$Res> {
  _$WalletGetRespCopyWithImpl(
      WalletGetResp _value, $Res Function(WalletGetResp) _then)
      : super(_value, (v) => _then(v as WalletGetResp));

  @override
  WalletGetResp get _value => super._value as WalletGetResp;

  @override
  $Res call({
    Object? wallet = freezed,
  }) {
    return _then(WalletGetResp(
      wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletGetWalletItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletGetResp implements WalletGetResp {
  const _$WalletGetResp(@JsonKey(name: "wallet") this.wallet);

  factory _$WalletGetResp.fromJson(Map<String, dynamic> json) =>
      _$$WalletGetRespFromJson(json);

  @override

  /// Кошелек
  @JsonKey(name: "wallet")
  final WalletGetWalletItemResponse? wallet;

  @override
  String toString() {
    return 'WalletGetResponse(wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WalletGetResp &&
            (identical(other.wallet, wallet) ||
                const DeepCollectionEquality().equals(other.wallet, wallet)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(wallet);

  @JsonKey(ignore: true)
  @override
  $WalletGetRespCopyWith<WalletGetResp> get copyWith =>
      _$WalletGetRespCopyWithImpl<WalletGetResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletGetRespToJson(this);
  }
}

abstract class WalletGetResp implements WalletGetResponse {
  const factory WalletGetResp(
          @JsonKey(name: "wallet") WalletGetWalletItemResponse? wallet) =
      _$WalletGetResp;

  factory WalletGetResp.fromJson(Map<String, dynamic> json) =
      _$WalletGetResp.fromJson;

  @override

  /// Кошелек
  @JsonKey(name: "wallet")
  WalletGetWalletItemResponse? get wallet => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $WalletGetRespCopyWith<WalletGetResp> get copyWith =>
      throw _privateConstructorUsedError;
}
