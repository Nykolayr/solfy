// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geo_country_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoCountryItemResponse _$GeoCountryItemResponseFromJson(
    Map<String, dynamic> json) {
  return CountryItem.fromJson(json);
}

/// @nodoc
class _$GeoCountryItemResponseTearOff {
  const _$GeoCountryItemResponseTearOff();

  CountryItem call(@JsonKey(name: "caption") String? caption,
      @JsonKey(name: "items") List<GeoCountryResponse>? countries) {
    return CountryItem(
      caption,
      countries,
    );
  }

  GeoCountryItemResponse fromJson(Map<String, Object> json) {
    return GeoCountryItemResponse.fromJson(json);
  }
}

/// @nodoc
const $GeoCountryItemResponse = _$GeoCountryItemResponseTearOff();

/// @nodoc
mixin _$GeoCountryItemResponse {
  /// Буква, с которой начинаются страны
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;

  /// Страны с первой буквой [caption]
  @JsonKey(name: "items")
  List<GeoCountryResponse>? get countries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoCountryItemResponseCopyWith<GeoCountryItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoCountryItemResponseCopyWith<$Res> {
  factory $GeoCountryItemResponseCopyWith(GeoCountryItemResponse value,
          $Res Function(GeoCountryItemResponse) then) =
      _$GeoCountryItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "caption") String? caption,
      @JsonKey(name: "items") List<GeoCountryResponse>? countries});
}

/// @nodoc
class _$GeoCountryItemResponseCopyWithImpl<$Res>
    implements $GeoCountryItemResponseCopyWith<$Res> {
  _$GeoCountryItemResponseCopyWithImpl(this._value, this._then);

  final GeoCountryItemResponse _value;
  // ignore: unused_field
  final $Res Function(GeoCountryItemResponse) _then;

  @override
  $Res call({
    Object? caption = freezed,
    Object? countries = freezed,
  }) {
    return _then(_value.copyWith(
      caption: caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<GeoCountryResponse>?,
    ));
  }
}

/// @nodoc
abstract class $CountryItemCopyWith<$Res>
    implements $GeoCountryItemResponseCopyWith<$Res> {
  factory $CountryItemCopyWith(
          CountryItem value, $Res Function(CountryItem) then) =
      _$CountryItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "caption") String? caption,
      @JsonKey(name: "items") List<GeoCountryResponse>? countries});
}

/// @nodoc
class _$CountryItemCopyWithImpl<$Res>
    extends _$GeoCountryItemResponseCopyWithImpl<$Res>
    implements $CountryItemCopyWith<$Res> {
  _$CountryItemCopyWithImpl(
      CountryItem _value, $Res Function(CountryItem) _then)
      : super(_value, (v) => _then(v as CountryItem));

  @override
  CountryItem get _value => super._value as CountryItem;

  @override
  $Res call({
    Object? caption = freezed,
    Object? countries = freezed,
  }) {
    return _then(CountryItem(
      caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<GeoCountryResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryItem implements CountryItem {
  const _$CountryItem(@JsonKey(name: "caption") this.caption,
      @JsonKey(name: "items") this.countries);

  factory _$CountryItem.fromJson(Map<String, dynamic> json) =>
      _$$CountryItemFromJson(json);

  @override

  /// Буква, с которой начинаются страны
  @JsonKey(name: "caption")
  final String? caption;
  @override

  /// Страны с первой буквой [caption]
  @JsonKey(name: "items")
  final List<GeoCountryResponse>? countries;

  @override
  String toString() {
    return 'GeoCountryItemResponse(caption: $caption, countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CountryItem &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.countries, countries) ||
                const DeepCollectionEquality()
                    .equals(other.countries, countries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(countries);

  @JsonKey(ignore: true)
  @override
  $CountryItemCopyWith<CountryItem> get copyWith =>
      _$CountryItemCopyWithImpl<CountryItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryItemToJson(this);
  }
}

abstract class CountryItem implements GeoCountryItemResponse {
  const factory CountryItem(@JsonKey(name: "caption") String? caption,
          @JsonKey(name: "items") List<GeoCountryResponse>? countries) =
      _$CountryItem;

  factory CountryItem.fromJson(Map<String, dynamic> json) =
      _$CountryItem.fromJson;

  @override

  /// Буква, с которой начинаются страны
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;
  @override

  /// Страны с первой буквой [caption]
  @JsonKey(name: "items")
  List<GeoCountryResponse>? get countries => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CountryItemCopyWith<CountryItem> get copyWith =>
      throw _privateConstructorUsedError;
}
