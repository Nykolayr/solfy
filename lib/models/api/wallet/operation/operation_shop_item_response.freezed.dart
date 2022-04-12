// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'operation_shop_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OperationShopItemResponse _$OperationShopItemResponseFromJson(
    Map<String, dynamic> json) {
  return ShopItem.fromJson(json);
}

/// @nodoc
class _$OperationShopItemResponseTearOff {
  const _$OperationShopItemResponseTearOff();

  ShopItem call(
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "site") String? site,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "geo") OperationGeoItemResponse? geo) {
    return ShopItem(
      address,
      id,
      site,
      type,
      geo,
    );
  }

  OperationShopItemResponse fromJson(Map<String, Object> json) {
    return OperationShopItemResponse.fromJson(json);
  }
}

/// @nodoc
const $OperationShopItemResponse = _$OperationShopItemResponseTearOff();

/// @nodoc
mixin _$OperationShopItemResponse {
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "site")
  String? get site => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "geo")
  OperationGeoItemResponse? get geo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationShopItemResponseCopyWith<OperationShopItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationShopItemResponseCopyWith<$Res> {
  factory $OperationShopItemResponseCopyWith(OperationShopItemResponse value,
          $Res Function(OperationShopItemResponse) then) =
      _$OperationShopItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "address") String? address,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "site") String? site,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "geo") OperationGeoItemResponse? geo});

  $OperationGeoItemResponseCopyWith<$Res>? get geo;
}

/// @nodoc
class _$OperationShopItemResponseCopyWithImpl<$Res>
    implements $OperationShopItemResponseCopyWith<$Res> {
  _$OperationShopItemResponseCopyWithImpl(this._value, this._then);

  final OperationShopItemResponse _value;
  // ignore: unused_field
  final $Res Function(OperationShopItemResponse) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? id = freezed,
    Object? site = freezed,
    Object? type = freezed,
    Object? geo = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      site: site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as OperationGeoItemResponse?,
    ));
  }

  @override
  $OperationGeoItemResponseCopyWith<$Res>? get geo {
    if (_value.geo == null) {
      return null;
    }

    return $OperationGeoItemResponseCopyWith<$Res>(_value.geo!, (value) {
      return _then(_value.copyWith(geo: value));
    });
  }
}

/// @nodoc
abstract class $ShopItemCopyWith<$Res>
    implements $OperationShopItemResponseCopyWith<$Res> {
  factory $ShopItemCopyWith(ShopItem value, $Res Function(ShopItem) then) =
      _$ShopItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "address") String? address,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "site") String? site,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "geo") OperationGeoItemResponse? geo});

  @override
  $OperationGeoItemResponseCopyWith<$Res>? get geo;
}

/// @nodoc
class _$ShopItemCopyWithImpl<$Res>
    extends _$OperationShopItemResponseCopyWithImpl<$Res>
    implements $ShopItemCopyWith<$Res> {
  _$ShopItemCopyWithImpl(ShopItem _value, $Res Function(ShopItem) _then)
      : super(_value, (v) => _then(v as ShopItem));

  @override
  ShopItem get _value => super._value as ShopItem;

  @override
  $Res call({
    Object? address = freezed,
    Object? id = freezed,
    Object? site = freezed,
    Object? type = freezed,
    Object? geo = freezed,
  }) {
    return _then(ShopItem(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as OperationGeoItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopItem implements ShopItem {
  const _$ShopItem(
      @JsonKey(name: "address") this.address,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "site") this.site,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "geo") this.geo);

  factory _$ShopItem.fromJson(Map<String, dynamic> json) =>
      _$$ShopItemFromJson(json);

  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "site")
  final String? site;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "geo")
  final OperationGeoItemResponse? geo;

  @override
  String toString() {
    return 'OperationShopItemResponse(address: $address, id: $id, site: $site, type: $type, geo: $geo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShopItem &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.site, site) ||
                const DeepCollectionEquality().equals(other.site, site)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.geo, geo) ||
                const DeepCollectionEquality().equals(other.geo, geo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(site) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(geo);

  @JsonKey(ignore: true)
  @override
  $ShopItemCopyWith<ShopItem> get copyWith =>
      _$ShopItemCopyWithImpl<ShopItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopItemToJson(this);
  }
}

abstract class ShopItem implements OperationShopItemResponse {
  const factory ShopItem(
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "site") String? site,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "geo") OperationGeoItemResponse? geo) = _$ShopItem;

  factory ShopItem.fromJson(Map<String, dynamic> json) = _$ShopItem.fromJson;

  @override
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "site")
  String? get site => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "geo")
  OperationGeoItemResponse? get geo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShopItemCopyWith<ShopItem> get copyWith =>
      throw _privateConstructorUsedError;
}
