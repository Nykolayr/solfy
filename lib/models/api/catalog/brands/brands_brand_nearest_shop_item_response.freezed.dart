// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brands_brand_nearest_shop_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandsBrandNearestShopItemResponse _$BrandsBrandNearestShopItemResponseFromJson(
    Map<String, dynamic> json) {
  return NearestShop.fromJson(json);
}

/// @nodoc
class _$BrandsBrandNearestShopItemResponseTearOff {
  const _$BrandsBrandNearestShopItemResponseTearOff();

  NearestShop call(@JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "latitude") double? latitude) {
    return NearestShop(
      longitude,
      latitude,
    );
  }

  BrandsBrandNearestShopItemResponse fromJson(Map<String, Object> json) {
    return BrandsBrandNearestShopItemResponse.fromJson(json);
  }
}

/// @nodoc
const $BrandsBrandNearestShopItemResponse =
    _$BrandsBrandNearestShopItemResponseTearOff();

/// @nodoc
mixin _$BrandsBrandNearestShopItemResponse {
  /// Latitude
  @JsonKey(name: "longitude")
  double? get longitude => throw _privateConstructorUsedError;

  /// Longitude
  @JsonKey(name: "latitude")
  double? get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandsBrandNearestShopItemResponseCopyWith<
          BrandsBrandNearestShopItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsBrandNearestShopItemResponseCopyWith<$Res> {
  factory $BrandsBrandNearestShopItemResponseCopyWith(
          BrandsBrandNearestShopItemResponse value,
          $Res Function(BrandsBrandNearestShopItemResponse) then) =
      _$BrandsBrandNearestShopItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "latitude") double? latitude});
}

/// @nodoc
class _$BrandsBrandNearestShopItemResponseCopyWithImpl<$Res>
    implements $BrandsBrandNearestShopItemResponseCopyWith<$Res> {
  _$BrandsBrandNearestShopItemResponseCopyWithImpl(this._value, this._then);

  final BrandsBrandNearestShopItemResponse _value;
  // ignore: unused_field
  final $Res Function(BrandsBrandNearestShopItemResponse) _then;

  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class $NearestShopCopyWith<$Res>
    implements $BrandsBrandNearestShopItemResponseCopyWith<$Res> {
  factory $NearestShopCopyWith(
          NearestShop value, $Res Function(NearestShop) then) =
      _$NearestShopCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "latitude") double? latitude});
}

/// @nodoc
class _$NearestShopCopyWithImpl<$Res>
    extends _$BrandsBrandNearestShopItemResponseCopyWithImpl<$Res>
    implements $NearestShopCopyWith<$Res> {
  _$NearestShopCopyWithImpl(
      NearestShop _value, $Res Function(NearestShop) _then)
      : super(_value, (v) => _then(v as NearestShop));

  @override
  NearestShop get _value => super._value as NearestShop;

  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(NearestShop(
      longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NearestShop implements NearestShop {
  const _$NearestShop(@JsonKey(name: "longitude") this.longitude,
      @JsonKey(name: "latitude") this.latitude);

  factory _$NearestShop.fromJson(Map<String, dynamic> json) =>
      _$$NearestShopFromJson(json);

  @override

  /// Latitude
  @JsonKey(name: "longitude")
  final double? longitude;
  @override

  /// Longitude
  @JsonKey(name: "latitude")
  final double? latitude;

  @override
  String toString() {
    return 'BrandsBrandNearestShopItemResponse(longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NearestShop &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(latitude);

  @JsonKey(ignore: true)
  @override
  $NearestShopCopyWith<NearestShop> get copyWith =>
      _$NearestShopCopyWithImpl<NearestShop>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NearestShopToJson(this);
  }
}

abstract class NearestShop implements BrandsBrandNearestShopItemResponse {
  const factory NearestShop(@JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "latitude") double? latitude) = _$NearestShop;

  factory NearestShop.fromJson(Map<String, dynamic> json) =
      _$NearestShop.fromJson;

  @override

  /// Latitude
  @JsonKey(name: "longitude")
  double? get longitude => throw _privateConstructorUsedError;
  @override

  /// Longitude
  @JsonKey(name: "latitude")
  double? get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $NearestShopCopyWith<NearestShop> get copyWith =>
      throw _privateConstructorUsedError;
}
