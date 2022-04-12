// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geo_region_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoRegionResponse _$GeoRegionResponseFromJson(Map<String, dynamic> json) {
  return Region.fromJson(json);
}

/// @nodoc
class _$GeoRegionResponseTearOff {
  const _$GeoRegionResponseTearOff();

  Region call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country_id") int? countryId}) {
    return Region(
      id: id,
      name: name,
      countryId: countryId,
    );
  }

  GeoRegionResponse fromJson(Map<String, Object> json) {
    return GeoRegionResponse.fromJson(json);
  }
}

/// @nodoc
const $GeoRegionResponse = _$GeoRegionResponseTearOff();

/// @nodoc
mixin _$GeoRegionResponse {
  /// Идентификатор региона
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Название региона
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  /// Идентификатор страны
  @JsonKey(name: "country_id")
  int? get countryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoRegionResponseCopyWith<GeoRegionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoRegionResponseCopyWith<$Res> {
  factory $GeoRegionResponseCopyWith(
          GeoRegionResponse value, $Res Function(GeoRegionResponse) then) =
      _$GeoRegionResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country_id") int? countryId});
}

/// @nodoc
class _$GeoRegionResponseCopyWithImpl<$Res>
    implements $GeoRegionResponseCopyWith<$Res> {
  _$GeoRegionResponseCopyWithImpl(this._value, this._then);

  final GeoRegionResponse _value;
  // ignore: unused_field
  final $Res Function(GeoRegionResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryId = freezed,
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
    ));
  }
}

/// @nodoc
abstract class $RegionCopyWith<$Res>
    implements $GeoRegionResponseCopyWith<$Res> {
  factory $RegionCopyWith(Region value, $Res Function(Region) then) =
      _$RegionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country_id") int? countryId});
}

/// @nodoc
class _$RegionCopyWithImpl<$Res> extends _$GeoRegionResponseCopyWithImpl<$Res>
    implements $RegionCopyWith<$Res> {
  _$RegionCopyWithImpl(Region _value, $Res Function(Region) _then)
      : super(_value, (v) => _then(v as Region));

  @override
  Region get _value => super._value as Region;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryId = freezed,
  }) {
    return _then(Region(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Region implements Region {
  const _$Region(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "country_id") this.countryId});

  factory _$Region.fromJson(Map<String, dynamic> json) =>
      _$$RegionFromJson(json);

  @override

  /// Идентификатор региона
  @JsonKey(name: "id")
  final int? id;
  @override

  /// Название региона
  @JsonKey(name: "name")
  final String? name;
  @override

  /// Идентификатор страны
  @JsonKey(name: "country_id")
  final int? countryId;

  @override
  String toString() {
    return 'GeoRegionResponse(id: $id, name: $name, countryId: $countryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Region &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.countryId, countryId) ||
                const DeepCollectionEquality()
                    .equals(other.countryId, countryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(countryId);

  @JsonKey(ignore: true)
  @override
  $RegionCopyWith<Region> get copyWith =>
      _$RegionCopyWithImpl<Region>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionToJson(this);
  }
}

abstract class Region implements GeoRegionResponse {
  const factory Region(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country_id") int? countryId}) = _$Region;

  factory Region.fromJson(Map<String, dynamic> json) = _$Region.fromJson;

  @override

  /// Идентификатор региона
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override

  /// Название региона
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @override

  /// Идентификатор страны
  @JsonKey(name: "country_id")
  int? get countryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RegionCopyWith<Region> get copyWith => throw _privateConstructorUsedError;
}
