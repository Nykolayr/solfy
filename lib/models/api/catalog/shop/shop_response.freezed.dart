// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopResponse _$ShopResponseFromJson(Map<String, dynamic> json) {
  return ShopResp.fromJson(json);
}

/// @nodoc
class _$ShopResponseTearOff {
  const _$ShopResponseTearOff();

  ShopResp call(@JsonKey(name: "shop") ShopShopItemResponse? shop) {
    return ShopResp(
      shop,
    );
  }

  ShopResponse fromJson(Map<String, Object> json) {
    return ShopResponse.fromJson(json);
  }
}

/// @nodoc
const $ShopResponse = _$ShopResponseTearOff();

/// @nodoc
mixin _$ShopResponse {
  /// Магазин
  @JsonKey(name: "shop")
  ShopShopItemResponse? get shop => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopResponseCopyWith<ShopResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopResponseCopyWith<$Res> {
  factory $ShopResponseCopyWith(
          ShopResponse value, $Res Function(ShopResponse) then) =
      _$ShopResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "shop") ShopShopItemResponse? shop});

  $ShopShopItemResponseCopyWith<$Res>? get shop;
}

/// @nodoc
class _$ShopResponseCopyWithImpl<$Res> implements $ShopResponseCopyWith<$Res> {
  _$ShopResponseCopyWithImpl(this._value, this._then);

  final ShopResponse _value;
  // ignore: unused_field
  final $Res Function(ShopResponse) _then;

  @override
  $Res call({
    Object? shop = freezed,
  }) {
    return _then(_value.copyWith(
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopShopItemResponse?,
    ));
  }

  @override
  $ShopShopItemResponseCopyWith<$Res>? get shop {
    if (_value.shop == null) {
      return null;
    }

    return $ShopShopItemResponseCopyWith<$Res>(_value.shop!, (value) {
      return _then(_value.copyWith(shop: value));
    });
  }
}

/// @nodoc
abstract class $ShopRespCopyWith<$Res> implements $ShopResponseCopyWith<$Res> {
  factory $ShopRespCopyWith(ShopResp value, $Res Function(ShopResp) then) =
      _$ShopRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "shop") ShopShopItemResponse? shop});

  @override
  $ShopShopItemResponseCopyWith<$Res>? get shop;
}

/// @nodoc
class _$ShopRespCopyWithImpl<$Res> extends _$ShopResponseCopyWithImpl<$Res>
    implements $ShopRespCopyWith<$Res> {
  _$ShopRespCopyWithImpl(ShopResp _value, $Res Function(ShopResp) _then)
      : super(_value, (v) => _then(v as ShopResp));

  @override
  ShopResp get _value => super._value as ShopResp;

  @override
  $Res call({
    Object? shop = freezed,
  }) {
    return _then(ShopResp(
      shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopShopItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopResp implements ShopResp {
  const _$ShopResp(@JsonKey(name: "shop") this.shop);

  factory _$ShopResp.fromJson(Map<String, dynamic> json) =>
      _$$ShopRespFromJson(json);

  @override

  /// Магазин
  @JsonKey(name: "shop")
  final ShopShopItemResponse? shop;

  @override
  String toString() {
    return 'ShopResponse(shop: $shop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShopResp &&
            (identical(other.shop, shop) ||
                const DeepCollectionEquality().equals(other.shop, shop)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shop);

  @JsonKey(ignore: true)
  @override
  $ShopRespCopyWith<ShopResp> get copyWith =>
      _$ShopRespCopyWithImpl<ShopResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopRespToJson(this);
  }
}

abstract class ShopResp implements ShopResponse {
  const factory ShopResp(@JsonKey(name: "shop") ShopShopItemResponse? shop) =
      _$ShopResp;

  factory ShopResp.fromJson(Map<String, dynamic> json) = _$ShopResp.fromJson;

  @override

  /// Магазин
  @JsonKey(name: "shop")
  ShopShopItemResponse? get shop => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShopRespCopyWith<ShopResp> get copyWith =>
      throw _privateConstructorUsedError;
}
