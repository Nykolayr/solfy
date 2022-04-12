// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geo_country_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoCountryResponse _$GeoCountryResponseFromJson(Map<String, dynamic> json) {
  return Country.fromJson(json);
}

/// @nodoc
class _$GeoCountryResponseTearOff {
  const _$GeoCountryResponseTearOff();

  Country call(
      @JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name) {
    return Country(
      id,
      name,
    );
  }

  GeoCountryResponse fromJson(Map<String, Object> json) {
    return GeoCountryResponse.fromJson(json);
  }
}

/// @nodoc
const $GeoCountryResponse = _$GeoCountryResponseTearOff();

/// @nodoc
mixin _$GeoCountryResponse {
  /// Идентификатор страны
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Название страны
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoCountryResponseCopyWith<GeoCountryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoCountryResponseCopyWith<$Res> {
  factory $GeoCountryResponseCopyWith(
          GeoCountryResponse value, $Res Function(GeoCountryResponse) then) =
      _$GeoCountryResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name});
}

/// @nodoc
class _$GeoCountryResponseCopyWithImpl<$Res>
    implements $GeoCountryResponseCopyWith<$Res> {
  _$GeoCountryResponseCopyWithImpl(this._value, this._then);

  final GeoCountryResponse _value;
  // ignore: unused_field
  final $Res Function(GeoCountryResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class $CountryCopyWith<$Res>
    implements $GeoCountryResponseCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> extends _$GeoCountryResponseCopyWithImpl<$Res>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(Country _value, $Res Function(Country) _then)
      : super(_value, (v) => _then(v as Country));

  @override
  Country get _value => super._value as Country;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(Country(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Country implements Country {
  const _$Country(
      @JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name);

  factory _$Country.fromJson(Map<String, dynamic> json) =>
      _$$CountryFromJson(json);

  @override

  /// Идентификатор страны
  @JsonKey(name: "id")
  final int? id;
  @override

  /// Название страны
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'GeoCountryResponse(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Country &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $CountryCopyWith<Country> get copyWith =>
      _$CountryCopyWithImpl<Country>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryToJson(this);
  }
}

abstract class Country implements GeoCountryResponse {
  const factory Country(
          @JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name) =
      _$Country;

  factory Country.fromJson(Map<String, dynamic> json) = _$Country.fromJson;

  @override

  /// Идентификатор страны
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override

  /// Название страны
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}
