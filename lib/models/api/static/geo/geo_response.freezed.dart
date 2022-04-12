// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoResponse _$GeoResponseFromJson(Map<String, dynamic> json) {
  return GeoSuccessResponse.fromJson(json);
}

/// @nodoc
class _$GeoResponseTearOff {
  const _$GeoResponseTearOff();

  GeoSuccessResponse call(
      @JsonKey(name: "countries") List<GeoCountryItemResponse>? countryItems,
      @JsonKey(name: "cities") List<GeoCityResponse>? cities,
      @JsonKey(name: "districts") List<GeoDistrictResponse>? districts,
      @JsonKey(name: "regions") List<GeoRegionResponse>? regions) {
    return GeoSuccessResponse(
      countryItems,
      cities,
      districts,
      regions,
    );
  }

  GeoResponse fromJson(Map<String, Object> json) {
    return GeoResponse.fromJson(json);
  }
}

/// @nodoc
const $GeoResponse = _$GeoResponseTearOff();

/// @nodoc
mixin _$GeoResponse {
  /// Страны из гео-словаря
  @JsonKey(name: "countries")
  List<GeoCountryItemResponse>? get countryItems =>
      throw _privateConstructorUsedError;

  /// Города из гео-словаря
  @JsonKey(name: "cities")
  List<GeoCityResponse>? get cities => throw _privateConstructorUsedError;

  /// Районы из гео-словаря
  @JsonKey(name: "districts")
  List<GeoDistrictResponse>? get districts =>
      throw _privateConstructorUsedError;

  /// Регионы из гео-словаря
  @JsonKey(name: "regions")
  List<GeoRegionResponse>? get regions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoResponseCopyWith<GeoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoResponseCopyWith<$Res> {
  factory $GeoResponseCopyWith(
          GeoResponse value, $Res Function(GeoResponse) then) =
      _$GeoResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "countries") List<GeoCountryItemResponse>? countryItems,
      @JsonKey(name: "cities") List<GeoCityResponse>? cities,
      @JsonKey(name: "districts") List<GeoDistrictResponse>? districts,
      @JsonKey(name: "regions") List<GeoRegionResponse>? regions});
}

/// @nodoc
class _$GeoResponseCopyWithImpl<$Res> implements $GeoResponseCopyWith<$Res> {
  _$GeoResponseCopyWithImpl(this._value, this._then);

  final GeoResponse _value;
  // ignore: unused_field
  final $Res Function(GeoResponse) _then;

  @override
  $Res call({
    Object? countryItems = freezed,
    Object? cities = freezed,
    Object? districts = freezed,
    Object? regions = freezed,
  }) {
    return _then(_value.copyWith(
      countryItems: countryItems == freezed
          ? _value.countryItems
          : countryItems // ignore: cast_nullable_to_non_nullable
              as List<GeoCountryItemResponse>?,
      cities: cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<GeoCityResponse>?,
      districts: districts == freezed
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<GeoDistrictResponse>?,
      regions: regions == freezed
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<GeoRegionResponse>?,
    ));
  }
}

/// @nodoc
abstract class $GeoSuccessResponseCopyWith<$Res>
    implements $GeoResponseCopyWith<$Res> {
  factory $GeoSuccessResponseCopyWith(
          GeoSuccessResponse value, $Res Function(GeoSuccessResponse) then) =
      _$GeoSuccessResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "countries") List<GeoCountryItemResponse>? countryItems,
      @JsonKey(name: "cities") List<GeoCityResponse>? cities,
      @JsonKey(name: "districts") List<GeoDistrictResponse>? districts,
      @JsonKey(name: "regions") List<GeoRegionResponse>? regions});
}

/// @nodoc
class _$GeoSuccessResponseCopyWithImpl<$Res>
    extends _$GeoResponseCopyWithImpl<$Res>
    implements $GeoSuccessResponseCopyWith<$Res> {
  _$GeoSuccessResponseCopyWithImpl(
      GeoSuccessResponse _value, $Res Function(GeoSuccessResponse) _then)
      : super(_value, (v) => _then(v as GeoSuccessResponse));

  @override
  GeoSuccessResponse get _value => super._value as GeoSuccessResponse;

  @override
  $Res call({
    Object? countryItems = freezed,
    Object? cities = freezed,
    Object? districts = freezed,
    Object? regions = freezed,
  }) {
    return _then(GeoSuccessResponse(
      countryItems == freezed
          ? _value.countryItems
          : countryItems // ignore: cast_nullable_to_non_nullable
              as List<GeoCountryItemResponse>?,
      cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<GeoCityResponse>?,
      districts == freezed
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<GeoDistrictResponse>?,
      regions == freezed
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<GeoRegionResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoSuccessResponse implements GeoSuccessResponse {
  const _$GeoSuccessResponse(
      @JsonKey(name: "countries") this.countryItems,
      @JsonKey(name: "cities") this.cities,
      @JsonKey(name: "districts") this.districts,
      @JsonKey(name: "regions") this.regions);

  factory _$GeoSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$$GeoSuccessResponseFromJson(json);

  @override

  /// Страны из гео-словаря
  @JsonKey(name: "countries")
  final List<GeoCountryItemResponse>? countryItems;
  @override

  /// Города из гео-словаря
  @JsonKey(name: "cities")
  final List<GeoCityResponse>? cities;
  @override

  /// Районы из гео-словаря
  @JsonKey(name: "districts")
  final List<GeoDistrictResponse>? districts;
  @override

  /// Регионы из гео-словаря
  @JsonKey(name: "regions")
  final List<GeoRegionResponse>? regions;

  @override
  String toString() {
    return 'GeoResponse(countryItems: $countryItems, cities: $cities, districts: $districts, regions: $regions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeoSuccessResponse &&
            (identical(other.countryItems, countryItems) ||
                const DeepCollectionEquality()
                    .equals(other.countryItems, countryItems)) &&
            (identical(other.cities, cities) ||
                const DeepCollectionEquality().equals(other.cities, cities)) &&
            (identical(other.districts, districts) ||
                const DeepCollectionEquality()
                    .equals(other.districts, districts)) &&
            (identical(other.regions, regions) ||
                const DeepCollectionEquality().equals(other.regions, regions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(countryItems) ^
      const DeepCollectionEquality().hash(cities) ^
      const DeepCollectionEquality().hash(districts) ^
      const DeepCollectionEquality().hash(regions);

  @JsonKey(ignore: true)
  @override
  $GeoSuccessResponseCopyWith<GeoSuccessResponse> get copyWith =>
      _$GeoSuccessResponseCopyWithImpl<GeoSuccessResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoSuccessResponseToJson(this);
  }
}

abstract class GeoSuccessResponse implements GeoResponse {
  const factory GeoSuccessResponse(
      @JsonKey(name: "countries")
          List<GeoCountryItemResponse>? countryItems,
      @JsonKey(name: "cities")
          List<GeoCityResponse>? cities,
      @JsonKey(name: "districts")
          List<GeoDistrictResponse>? districts,
      @JsonKey(name: "regions")
          List<GeoRegionResponse>? regions) = _$GeoSuccessResponse;

  factory GeoSuccessResponse.fromJson(Map<String, dynamic> json) =
      _$GeoSuccessResponse.fromJson;

  @override

  /// Страны из гео-словаря
  @JsonKey(name: "countries")
  List<GeoCountryItemResponse>? get countryItems =>
      throw _privateConstructorUsedError;
  @override

  /// Города из гео-словаря
  @JsonKey(name: "cities")
  List<GeoCityResponse>? get cities => throw _privateConstructorUsedError;
  @override

  /// Районы из гео-словаря
  @JsonKey(name: "districts")
  List<GeoDistrictResponse>? get districts =>
      throw _privateConstructorUsedError;
  @override

  /// Регионы из гео-словаря
  @JsonKey(name: "regions")
  List<GeoRegionResponse>? get regions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GeoSuccessResponseCopyWith<GeoSuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
