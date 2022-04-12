// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shops_shop_geo_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopsShopGeoItemResponse _$ShopsShopGeoItemResponseFromJson(
    Map<String, dynamic> json) {
  return GeoItem.fromJson(json);
}

/// @nodoc
class _$ShopsShopGeoItemResponseTearOff {
  const _$ShopsShopGeoItemResponseTearOff();

  GeoItem call(
      @JsonKey(name: "place_id") int? placeId,
      @JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude) {
    return GeoItem(
      placeId,
      latitude,
      longitude,
    );
  }

  ShopsShopGeoItemResponse fromJson(Map<String, Object> json) {
    return ShopsShopGeoItemResponse.fromJson(json);
  }
}

/// @nodoc
const $ShopsShopGeoItemResponse = _$ShopsShopGeoItemResponseTearOff();

/// @nodoc
mixin _$ShopsShopGeoItemResponse {
  /// Идентификатор региона
  @JsonKey(name: "place_id")
  int? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopsShopGeoItemResponseCopyWith<ShopsShopGeoItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopsShopGeoItemResponseCopyWith<$Res> {
  factory $ShopsShopGeoItemResponseCopyWith(ShopsShopGeoItemResponse value,
          $Res Function(ShopsShopGeoItemResponse) then) =
      _$ShopsShopGeoItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "place_id") int? placeId,
      @JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude});
}

/// @nodoc
class _$ShopsShopGeoItemResponseCopyWithImpl<$Res>
    implements $ShopsShopGeoItemResponseCopyWith<$Res> {
  _$ShopsShopGeoItemResponseCopyWithImpl(this._value, this._then);

  final ShopsShopGeoItemResponse _value;
  // ignore: unused_field
  final $Res Function(ShopsShopGeoItemResponse) _then;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class $GeoItemCopyWith<$Res>
    implements $ShopsShopGeoItemResponseCopyWith<$Res> {
  factory $GeoItemCopyWith(GeoItem value, $Res Function(GeoItem) then) =
      _$GeoItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "place_id") int? placeId,
      @JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude});
}

/// @nodoc
class _$GeoItemCopyWithImpl<$Res>
    extends _$ShopsShopGeoItemResponseCopyWithImpl<$Res>
    implements $GeoItemCopyWith<$Res> {
  _$GeoItemCopyWithImpl(GeoItem _value, $Res Function(GeoItem) _then)
      : super(_value, (v) => _then(v as GeoItem));

  @override
  GeoItem get _value => super._value as GeoItem;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(GeoItem(
      placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoItem implements GeoItem {
  const _$GeoItem(
      @JsonKey(name: "place_id") this.placeId,
      @JsonKey(name: "latitude") this.latitude,
      @JsonKey(name: "longitude") this.longitude);

  factory _$GeoItem.fromJson(Map<String, dynamic> json) =>
      _$$GeoItemFromJson(json);

  @override

  /// Идентификатор региона
  @JsonKey(name: "place_id")
  final int? placeId;
  @override
  @JsonKey(name: "latitude")
  final double? latitude;
  @override
  @JsonKey(name: "longitude")
  final double? longitude;

  @override
  String toString() {
    return 'ShopsShopGeoItemResponse(placeId: $placeId, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeoItem &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  $GeoItemCopyWith<GeoItem> get copyWith =>
      _$GeoItemCopyWithImpl<GeoItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoItemToJson(this);
  }
}

abstract class GeoItem implements ShopsShopGeoItemResponse {
  const factory GeoItem(
      @JsonKey(name: "place_id") int? placeId,
      @JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude) = _$GeoItem;

  factory GeoItem.fromJson(Map<String, dynamic> json) = _$GeoItem.fromJson;

  @override

  /// Идентификатор региона
  @JsonKey(name: "place_id")
  int? get placeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "latitude")
  double? get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "longitude")
  double? get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GeoItemCopyWith<GeoItem> get copyWith => throw _privateConstructorUsedError;
}
