// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dictionaries_filial_geo_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DictionariesFilialGeoItemResponse _$DictionariesFilialGeoItemResponseFromJson(
    Map<String, dynamic> json) {
  return FilialGeo.fromJson(json);
}

/// @nodoc
class _$DictionariesFilialGeoItemResponseTearOff {
  const _$DictionariesFilialGeoItemResponseTearOff();

  FilialGeo call(
      @JsonKey(name: "region_id") int? regionId,
      @JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "latitude") double? latitude) {
    return FilialGeo(
      regionId,
      longitude,
      latitude,
    );
  }

  DictionariesFilialGeoItemResponse fromJson(Map<String, Object> json) {
    return DictionariesFilialGeoItemResponse.fromJson(json);
  }
}

/// @nodoc
const $DictionariesFilialGeoItemResponse =
    _$DictionariesFilialGeoItemResponseTearOff();

/// @nodoc
mixin _$DictionariesFilialGeoItemResponse {
  /// Идентификатор региона
  @JsonKey(name: "region_id")
  int? get regionId => throw _privateConstructorUsedError;

  /// Долгота
  @JsonKey(name: "longitude")
  double? get longitude => throw _privateConstructorUsedError;

  /// Широта
  @JsonKey(name: "latitude")
  double? get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionariesFilialGeoItemResponseCopyWith<DictionariesFilialGeoItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionariesFilialGeoItemResponseCopyWith<$Res> {
  factory $DictionariesFilialGeoItemResponseCopyWith(
          DictionariesFilialGeoItemResponse value,
          $Res Function(DictionariesFilialGeoItemResponse) then) =
      _$DictionariesFilialGeoItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "region_id") int? regionId,
      @JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "latitude") double? latitude});
}

/// @nodoc
class _$DictionariesFilialGeoItemResponseCopyWithImpl<$Res>
    implements $DictionariesFilialGeoItemResponseCopyWith<$Res> {
  _$DictionariesFilialGeoItemResponseCopyWithImpl(this._value, this._then);

  final DictionariesFilialGeoItemResponse _value;
  // ignore: unused_field
  final $Res Function(DictionariesFilialGeoItemResponse) _then;

  @override
  $Res call({
    Object? regionId = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      regionId: regionId == freezed
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class $FilialGeoCopyWith<$Res>
    implements $DictionariesFilialGeoItemResponseCopyWith<$Res> {
  factory $FilialGeoCopyWith(FilialGeo value, $Res Function(FilialGeo) then) =
      _$FilialGeoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "region_id") int? regionId,
      @JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "latitude") double? latitude});
}

/// @nodoc
class _$FilialGeoCopyWithImpl<$Res>
    extends _$DictionariesFilialGeoItemResponseCopyWithImpl<$Res>
    implements $FilialGeoCopyWith<$Res> {
  _$FilialGeoCopyWithImpl(FilialGeo _value, $Res Function(FilialGeo) _then)
      : super(_value, (v) => _then(v as FilialGeo));

  @override
  FilialGeo get _value => super._value as FilialGeo;

  @override
  $Res call({
    Object? regionId = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(FilialGeo(
      regionId == freezed
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$FilialGeo implements FilialGeo {
  const _$FilialGeo(
      @JsonKey(name: "region_id") this.regionId,
      @JsonKey(name: "longitude") this.longitude,
      @JsonKey(name: "latitude") this.latitude);

  factory _$FilialGeo.fromJson(Map<String, dynamic> json) =>
      _$$FilialGeoFromJson(json);

  @override

  /// Идентификатор региона
  @JsonKey(name: "region_id")
  final int? regionId;
  @override

  /// Долгота
  @JsonKey(name: "longitude")
  final double? longitude;
  @override

  /// Широта
  @JsonKey(name: "latitude")
  final double? latitude;

  @override
  String toString() {
    return 'DictionariesFilialGeoItemResponse(regionId: $regionId, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FilialGeo &&
            (identical(other.regionId, regionId) ||
                const DeepCollectionEquality()
                    .equals(other.regionId, regionId)) &&
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
      const DeepCollectionEquality().hash(regionId) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(latitude);

  @JsonKey(ignore: true)
  @override
  $FilialGeoCopyWith<FilialGeo> get copyWith =>
      _$FilialGeoCopyWithImpl<FilialGeo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilialGeoToJson(this);
  }
}

abstract class FilialGeo implements DictionariesFilialGeoItemResponse {
  const factory FilialGeo(
      @JsonKey(name: "region_id") int? regionId,
      @JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "latitude") double? latitude) = _$FilialGeo;

  factory FilialGeo.fromJson(Map<String, dynamic> json) = _$FilialGeo.fromJson;

  @override

  /// Идентификатор региона
  @JsonKey(name: "region_id")
  int? get regionId => throw _privateConstructorUsedError;
  @override

  /// Долгота
  @JsonKey(name: "longitude")
  double? get longitude => throw _privateConstructorUsedError;
  @override

  /// Широта
  @JsonKey(name: "latitude")
  double? get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FilialGeoCopyWith<FilialGeo> get copyWith =>
      throw _privateConstructorUsedError;
}
