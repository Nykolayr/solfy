// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'points_point_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PointsPointItemResponse _$PointsPointItemResponseFromJson(
    Map<String, dynamic> json) {
  return PointItem.fromJson(json);
}

/// @nodoc
class _$PointsPointItemResponseTearOff {
  const _$PointsPointItemResponseTearOff();

  PointItem call(@JsonKey(name: "shop_id") int? shopId,
      @JsonKey(name: "geo") PointsGeoItemResponse? geo) {
    return PointItem(
      shopId,
      geo,
    );
  }

  PointsPointItemResponse fromJson(Map<String, Object> json) {
    return PointsPointItemResponse.fromJson(json);
  }
}

/// @nodoc
const $PointsPointItemResponse = _$PointsPointItemResponseTearOff();

/// @nodoc
mixin _$PointsPointItemResponse {
  /// Идентификатор магазина
  @JsonKey(name: "shop_id")
  int? get shopId => throw _privateConstructorUsedError;

  /// Координаты магазина
  @JsonKey(name: "geo")
  PointsGeoItemResponse? get geo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointsPointItemResponseCopyWith<PointsPointItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointsPointItemResponseCopyWith<$Res> {
  factory $PointsPointItemResponseCopyWith(PointsPointItemResponse value,
          $Res Function(PointsPointItemResponse) then) =
      _$PointsPointItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "shop_id") int? shopId,
      @JsonKey(name: "geo") PointsGeoItemResponse? geo});

  $PointsGeoItemResponseCopyWith<$Res>? get geo;
}

/// @nodoc
class _$PointsPointItemResponseCopyWithImpl<$Res>
    implements $PointsPointItemResponseCopyWith<$Res> {
  _$PointsPointItemResponseCopyWithImpl(this._value, this._then);

  final PointsPointItemResponse _value;
  // ignore: unused_field
  final $Res Function(PointsPointItemResponse) _then;

  @override
  $Res call({
    Object? shopId = freezed,
    Object? geo = freezed,
  }) {
    return _then(_value.copyWith(
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int?,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as PointsGeoItemResponse?,
    ));
  }

  @override
  $PointsGeoItemResponseCopyWith<$Res>? get geo {
    if (_value.geo == null) {
      return null;
    }

    return $PointsGeoItemResponseCopyWith<$Res>(_value.geo!, (value) {
      return _then(_value.copyWith(geo: value));
    });
  }
}

/// @nodoc
abstract class $PointItemCopyWith<$Res>
    implements $PointsPointItemResponseCopyWith<$Res> {
  factory $PointItemCopyWith(PointItem value, $Res Function(PointItem) then) =
      _$PointItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "shop_id") int? shopId,
      @JsonKey(name: "geo") PointsGeoItemResponse? geo});

  @override
  $PointsGeoItemResponseCopyWith<$Res>? get geo;
}

/// @nodoc
class _$PointItemCopyWithImpl<$Res>
    extends _$PointsPointItemResponseCopyWithImpl<$Res>
    implements $PointItemCopyWith<$Res> {
  _$PointItemCopyWithImpl(PointItem _value, $Res Function(PointItem) _then)
      : super(_value, (v) => _then(v as PointItem));

  @override
  PointItem get _value => super._value as PointItem;

  @override
  $Res call({
    Object? shopId = freezed,
    Object? geo = freezed,
  }) {
    return _then(PointItem(
      shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int?,
      geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as PointsGeoItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PointItem implements PointItem {
  const _$PointItem(
      @JsonKey(name: "shop_id") this.shopId, @JsonKey(name: "geo") this.geo);

  factory _$PointItem.fromJson(Map<String, dynamic> json) =>
      _$$PointItemFromJson(json);

  @override

  /// Идентификатор магазина
  @JsonKey(name: "shop_id")
  final int? shopId;
  @override

  /// Координаты магазина
  @JsonKey(name: "geo")
  final PointsGeoItemResponse? geo;

  @override
  String toString() {
    return 'PointsPointItemResponse(shopId: $shopId, geo: $geo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PointItem &&
            (identical(other.shopId, shopId) ||
                const DeepCollectionEquality().equals(other.shopId, shopId)) &&
            (identical(other.geo, geo) ||
                const DeepCollectionEquality().equals(other.geo, geo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(shopId) ^
      const DeepCollectionEquality().hash(geo);

  @JsonKey(ignore: true)
  @override
  $PointItemCopyWith<PointItem> get copyWith =>
      _$PointItemCopyWithImpl<PointItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointItemToJson(this);
  }
}

abstract class PointItem implements PointsPointItemResponse {
  const factory PointItem(@JsonKey(name: "shop_id") int? shopId,
      @JsonKey(name: "geo") PointsGeoItemResponse? geo) = _$PointItem;

  factory PointItem.fromJson(Map<String, dynamic> json) = _$PointItem.fromJson;

  @override

  /// Идентификатор магазина
  @JsonKey(name: "shop_id")
  int? get shopId => throw _privateConstructorUsedError;
  @override

  /// Координаты магазина
  @JsonKey(name: "geo")
  PointsGeoItemResponse? get geo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PointItemCopyWith<PointItem> get copyWith =>
      throw _privateConstructorUsedError;
}
