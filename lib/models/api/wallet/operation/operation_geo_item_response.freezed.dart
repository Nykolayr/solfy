// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'operation_geo_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OperationGeoItemResponse _$OperationGeoItemResponseFromJson(
    Map<String, dynamic> json) {
  return GeoItem.fromJson(json);
}

/// @nodoc
class _$OperationGeoItemResponseTearOff {
  const _$OperationGeoItemResponseTearOff();

  GeoItem call(@JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude) {
    return GeoItem(
      latitude,
      longitude,
    );
  }

  OperationGeoItemResponse fromJson(Map<String, Object> json) {
    return OperationGeoItemResponse.fromJson(json);
  }
}

/// @nodoc
const $OperationGeoItemResponse = _$OperationGeoItemResponseTearOff();

/// @nodoc
mixin _$OperationGeoItemResponse {
  @JsonKey(name: "latitude")
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationGeoItemResponseCopyWith<OperationGeoItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationGeoItemResponseCopyWith<$Res> {
  factory $OperationGeoItemResponseCopyWith(OperationGeoItemResponse value,
          $Res Function(OperationGeoItemResponse) then) =
      _$OperationGeoItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude});
}

/// @nodoc
class _$OperationGeoItemResponseCopyWithImpl<$Res>
    implements $OperationGeoItemResponseCopyWith<$Res> {
  _$OperationGeoItemResponseCopyWithImpl(this._value, this._then);

  final OperationGeoItemResponse _value;
  // ignore: unused_field
  final $Res Function(OperationGeoItemResponse) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
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
    implements $OperationGeoItemResponseCopyWith<$Res> {
  factory $GeoItemCopyWith(GeoItem value, $Res Function(GeoItem) then) =
      _$GeoItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude});
}

/// @nodoc
class _$GeoItemCopyWithImpl<$Res>
    extends _$OperationGeoItemResponseCopyWithImpl<$Res>
    implements $GeoItemCopyWith<$Res> {
  _$GeoItemCopyWithImpl(GeoItem _value, $Res Function(GeoItem) _then)
      : super(_value, (v) => _then(v as GeoItem));

  @override
  GeoItem get _value => super._value as GeoItem;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(GeoItem(
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
  const _$GeoItem(@JsonKey(name: "latitude") this.latitude,
      @JsonKey(name: "longitude") this.longitude);

  factory _$GeoItem.fromJson(Map<String, dynamic> json) =>
      _$$GeoItemFromJson(json);

  @override
  @JsonKey(name: "latitude")
  final double? latitude;
  @override
  @JsonKey(name: "longitude")
  final double? longitude;

  @override
  String toString() {
    return 'OperationGeoItemResponse(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeoItem &&
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

abstract class GeoItem implements OperationGeoItemResponse {
  const factory GeoItem(@JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude) = _$GeoItem;

  factory GeoItem.fromJson(Map<String, dynamic> json) = _$GeoItem.fromJson;

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
