// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geo_city_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoCityResponse _$GeoCityResponseFromJson(Map<String, dynamic> json) {
  return City.fromJson(json);
}

/// @nodoc
class _$GeoCityResponseTearOff {
  const _$GeoCityResponseTearOff();

  City call(
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country_id") int? countryId,
      @JsonKey(name: "district_id") int? districtId,
      @JsonKey(name: "region_id") int? regionId) {
    return City(
      id,
      name,
      countryId,
      districtId,
      regionId,
    );
  }

  GeoCityResponse fromJson(Map<String, Object> json) {
    return GeoCityResponse.fromJson(json);
  }
}

/// @nodoc
const $GeoCityResponse = _$GeoCityResponseTearOff();

/// @nodoc
mixin _$GeoCityResponse {
  /// Идентификатор города
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Название города
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  /// Идентификатор страны
  @JsonKey(name: "country_id")
  int? get countryId => throw _privateConstructorUsedError;

  /// Идентификатор района
  @JsonKey(name: "district_id")
  int? get districtId => throw _privateConstructorUsedError;

  /// Идентификатор региона
  @JsonKey(name: "region_id")
  int? get regionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoCityResponseCopyWith<GeoCityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoCityResponseCopyWith<$Res> {
  factory $GeoCityResponseCopyWith(
          GeoCityResponse value, $Res Function(GeoCityResponse) then) =
      _$GeoCityResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country_id") int? countryId,
      @JsonKey(name: "district_id") int? districtId,
      @JsonKey(name: "region_id") int? regionId});
}

/// @nodoc
class _$GeoCityResponseCopyWithImpl<$Res>
    implements $GeoCityResponseCopyWith<$Res> {
  _$GeoCityResponseCopyWithImpl(this._value, this._then);

  final GeoCityResponse _value;
  // ignore: unused_field
  final $Res Function(GeoCityResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryId = freezed,
    Object? districtId = freezed,
    Object? regionId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      districtId: districtId == freezed
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      regionId: regionId == freezed
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class $CityCopyWith<$Res> implements $GeoCityResponseCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country_id") int? countryId,
      @JsonKey(name: "district_id") int? districtId,
      @JsonKey(name: "region_id") int? regionId});
}

/// @nodoc
class _$CityCopyWithImpl<$Res> extends _$GeoCityResponseCopyWithImpl<$Res>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(City _value, $Res Function(City) _then)
      : super(_value, (v) => _then(v as City));

  @override
  City get _value => super._value as City;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryId = freezed,
    Object? districtId = freezed,
    Object? regionId = freezed,
  }) {
    return _then(City(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      districtId == freezed
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      regionId == freezed
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$City implements City {
  const _$City(
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "country_id") this.countryId,
      @JsonKey(name: "district_id") this.districtId,
      @JsonKey(name: "region_id") this.regionId);

  factory _$City.fromJson(Map<String, dynamic> json) => _$$CityFromJson(json);

  @override

  /// Идентификатор города
  @JsonKey(name: "id")
  final int? id;
  @override

  /// Название города
  @JsonKey(name: "name")
  final String? name;
  @override

  /// Идентификатор страны
  @JsonKey(name: "country_id")
  final int? countryId;
  @override

  /// Идентификатор района
  @JsonKey(name: "district_id")
  final int? districtId;
  @override

  /// Идентификатор региона
  @JsonKey(name: "region_id")
  final int? regionId;

  @override
  String toString() {
    return 'GeoCityResponse(id: $id, name: $name, countryId: $countryId, districtId: $districtId, regionId: $regionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.countryId, countryId) ||
                const DeepCollectionEquality()
                    .equals(other.countryId, countryId)) &&
            (identical(other.districtId, districtId) ||
                const DeepCollectionEquality()
                    .equals(other.districtId, districtId)) &&
            (identical(other.regionId, regionId) ||
                const DeepCollectionEquality()
                    .equals(other.regionId, regionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(countryId) ^
      const DeepCollectionEquality().hash(districtId) ^
      const DeepCollectionEquality().hash(regionId);

  @JsonKey(ignore: true)
  @override
  $CityCopyWith<City> get copyWith =>
      _$CityCopyWithImpl<City>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityToJson(this);
  }
}

abstract class City implements GeoCityResponse {
  const factory City(
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country_id") int? countryId,
      @JsonKey(name: "district_id") int? districtId,
      @JsonKey(name: "region_id") int? regionId) = _$City;

  factory City.fromJson(Map<String, dynamic> json) = _$City.fromJson;

  @override

  /// Идентификатор города
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override

  /// Название города
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @override

  /// Идентификатор страны
  @JsonKey(name: "country_id")
  int? get countryId => throw _privateConstructorUsedError;
  @override

  /// Идентификатор района
  @JsonKey(name: "district_id")
  int? get districtId => throw _privateConstructorUsedError;
  @override

  /// Идентификатор региона
  @JsonKey(name: "region_id")
  int? get regionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}
