// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'points_geo_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PointsGeoItemResponse _$PointsGeoItemResponseFromJson(
    Map<String, dynamic> json) {
  return GeoItem.fromJson(json);
}

/// @nodoc
class _$PointsGeoItemResponseTearOff {
  const _$PointsGeoItemResponseTearOff();

  GeoItem call(@JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "latitude") double? latitude) {
    return GeoItem(
      longitude,
      latitude,
    );
  }

  PointsGeoItemResponse fromJson(Map<String, Object> json) {
    return PointsGeoItemResponse.fromJson(json);
  }
}

/// @nodoc
const $PointsGeoItemResponse = _$PointsGeoItemResponseTearOff();

/// @nodoc
mixin _$PointsGeoItemResponse {
  @JsonKey(name: "longitude")
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  double? get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointsGeoItemResponseCopyWith<PointsGeoItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointsGeoItemResponseCopyWith<$Res> {
  factory $PointsGeoItemResponseCopyWith(PointsGeoItemResponse value,
          $Res Function(PointsGeoItemResponse) then) =
      _$PointsGeoItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "latitude") double? latitude});
}

/// @nodoc
class _$PointsGeoItemResponseCopyWithImpl<$Res>
    implements $PointsGeoItemResponseCopyWith<$Res> {
  _$PointsGeoItemResponseCopyWithImpl(this._value, this._then);

  final PointsGeoItemResponse _value;
  // ignore: unused_field
  final $Res Function(PointsGeoItemResponse) _then;

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
abstract class $GeoItemCopyWith<$Res>
    implements $PointsGeoItemResponseCopyWith<$Res> {
  factory $GeoItemCopyWith(GeoItem value, $Res Function(GeoItem) then) =
      _$GeoItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "latitude") double? latitude});
}

/// @nodoc
class _$GeoItemCopyWithImpl<$Res>
    extends _$PointsGeoItemResponseCopyWithImpl<$Res>
    implements $GeoItemCopyWith<$Res> {
  _$GeoItemCopyWithImpl(GeoItem _value, $Res Function(GeoItem) _then)
      : super(_value, (v) => _then(v as GeoItem));

  @override
  GeoItem get _value => super._value as GeoItem;

  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(GeoItem(
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
class _$GeoItem implements GeoItem {
  const _$GeoItem(@JsonKey(name: "longitude") this.longitude,
      @JsonKey(name: "latitude") this.latitude);

  factory _$GeoItem.fromJson(Map<String, dynamic> json) =>
      _$$GeoItemFromJson(json);

  @override
  @JsonKey(name: "longitude")
  final double? longitude;
  @override
  @JsonKey(name: "latitude")
  final double? latitude;

  @override
  String toString() {
    return 'PointsGeoItemResponse(longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeoItem &&
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
  $GeoItemCopyWith<GeoItem> get copyWith =>
      _$GeoItemCopyWithImpl<GeoItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoItemToJson(this);
  }
}

abstract class GeoItem implements PointsGeoItemResponse {
  const factory GeoItem(@JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "latitude") double? latitude) = _$GeoItem;

  factory GeoItem.fromJson(Map<String, dynamic> json) = _$GeoItem.fromJson;

  @override
  @JsonKey(name: "longitude")
  double? get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "latitude")
  double? get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GeoItemCopyWith<GeoItem> get copyWith => throw _privateConstructorUsedError;
}
