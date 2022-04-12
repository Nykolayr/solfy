// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geo_district_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoDistrictResponse _$GeoDistrictResponseFromJson(Map<String, dynamic> json) {
  return District.fromJson(json);
}

/// @nodoc
class _$GeoDistrictResponseTearOff {
  const _$GeoDistrictResponseTearOff();

  District call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country_id") int? countryId,
      @JsonKey(name: "region_id") int? regionId}) {
    return District(
      id: id,
      name: name,
      countryId: countryId,
      regionId: regionId,
    );
  }

  GeoDistrictResponse fromJson(Map<String, Object> json) {
    return GeoDistrictResponse.fromJson(json);
  }
}

/// @nodoc
const $GeoDistrictResponse = _$GeoDistrictResponseTearOff();

/// @nodoc
mixin _$GeoDistrictResponse {
  /// Идентификатор района
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Название района
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  /// Идентификатор страны
  @JsonKey(name: "country_id")
  int? get countryId => throw _privateConstructorUsedError;

  /// Идентификатор региона
  @JsonKey(name: "region_id")
  int? get regionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoDistrictResponseCopyWith<GeoDistrictResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoDistrictResponseCopyWith<$Res> {
  factory $GeoDistrictResponseCopyWith(
          GeoDistrictResponse value, $Res Function(GeoDistrictResponse) then) =
      _$GeoDistrictResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country_id") int? countryId,
      @JsonKey(name: "region_id") int? regionId});
}

/// @nodoc
class _$GeoDistrictResponseCopyWithImpl<$Res>
    implements $GeoDistrictResponseCopyWith<$Res> {
  _$GeoDistrictResponseCopyWithImpl(this._value, this._then);

  final GeoDistrictResponse _value;
  // ignore: unused_field
  final $Res Function(GeoDistrictResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryId = freezed,
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
      regionId: regionId == freezed
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class $DistrictCopyWith<$Res>
    implements $GeoDistrictResponseCopyWith<$Res> {
  factory $DistrictCopyWith(District value, $Res Function(District) then) =
      _$DistrictCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country_id") int? countryId,
      @JsonKey(name: "region_id") int? regionId});
}

/// @nodoc
class _$DistrictCopyWithImpl<$Res>
    extends _$GeoDistrictResponseCopyWithImpl<$Res>
    implements $DistrictCopyWith<$Res> {
  _$DistrictCopyWithImpl(District _value, $Res Function(District) _then)
      : super(_value, (v) => _then(v as District));

  @override
  District get _value => super._value as District;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryId = freezed,
    Object? regionId = freezed,
  }) {
    return _then(District(
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
      regionId: regionId == freezed
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$District implements District {
  const _$District(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "country_id") this.countryId,
      @JsonKey(name: "region_id") this.regionId});

  factory _$District.fromJson(Map<String, dynamic> json) =>
      _$$DistrictFromJson(json);

  @override

  /// Идентификатор района
  @JsonKey(name: "id")
  final int? id;
  @override

  /// Название района
  @JsonKey(name: "name")
  final String? name;
  @override

  /// Идентификатор страны
  @JsonKey(name: "country_id")
  final int? countryId;
  @override

  /// Идентификатор региона
  @JsonKey(name: "region_id")
  final int? regionId;

  @override
  String toString() {
    return 'GeoDistrictResponse(id: $id, name: $name, countryId: $countryId, regionId: $regionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is District &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.countryId, countryId) ||
                const DeepCollectionEquality()
                    .equals(other.countryId, countryId)) &&
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
      const DeepCollectionEquality().hash(regionId);

  @JsonKey(ignore: true)
  @override
  $DistrictCopyWith<District> get copyWith =>
      _$DistrictCopyWithImpl<District>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictToJson(this);
  }
}

abstract class District implements GeoDistrictResponse {
  const factory District(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country_id") int? countryId,
      @JsonKey(name: "region_id") int? regionId}) = _$District;

  factory District.fromJson(Map<String, dynamic> json) = _$District.fromJson;

  @override

  /// Идентификатор района
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override

  /// Название района
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @override

  /// Идентификатор страны
  @JsonKey(name: "country_id")
  int? get countryId => throw _privateConstructorUsedError;
  @override

  /// Идентификатор региона
  @JsonKey(name: "region_id")
  int? get regionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DistrictCopyWith<District> get copyWith =>
      throw _privateConstructorUsedError;
}
