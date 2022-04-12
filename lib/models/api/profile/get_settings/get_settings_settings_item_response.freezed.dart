// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_settings_settings_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetSettingsSettingsItemResponse _$GetSettingsSettingsItemResponseFromJson(
    Map<String, dynamic> json) {
  return SettingsItem.fromJson(json);
}

/// @nodoc
class _$GetSettingsSettingsItemResponseTearOff {
  const _$GetSettingsSettingsItemResponseTearOff();

  SettingsItem call(@JsonKey(name: "language") String? language,
      @JsonKey(name: "city") int? city) {
    return SettingsItem(
      language,
      city,
    );
  }

  GetSettingsSettingsItemResponse fromJson(Map<String, Object> json) {
    return GetSettingsSettingsItemResponse.fromJson(json);
  }
}

/// @nodoc
const $GetSettingsSettingsItemResponse =
    _$GetSettingsSettingsItemResponseTearOff();

/// @nodoc
mixin _$GetSettingsSettingsItemResponse {
  /// Язык
  @JsonKey(name: "language")
  String? get language => throw _privateConstructorUsedError;

  /// Идентификатор города
  @JsonKey(name: "city")
  int? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSettingsSettingsItemResponseCopyWith<GetSettingsSettingsItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSettingsSettingsItemResponseCopyWith<$Res> {
  factory $GetSettingsSettingsItemResponseCopyWith(
          GetSettingsSettingsItemResponse value,
          $Res Function(GetSettingsSettingsItemResponse) then) =
      _$GetSettingsSettingsItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "language") String? language,
      @JsonKey(name: "city") int? city});
}

/// @nodoc
class _$GetSettingsSettingsItemResponseCopyWithImpl<$Res>
    implements $GetSettingsSettingsItemResponseCopyWith<$Res> {
  _$GetSettingsSettingsItemResponseCopyWithImpl(this._value, this._then);

  final GetSettingsSettingsItemResponse _value;
  // ignore: unused_field
  final $Res Function(GetSettingsSettingsItemResponse) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class $SettingsItemCopyWith<$Res>
    implements $GetSettingsSettingsItemResponseCopyWith<$Res> {
  factory $SettingsItemCopyWith(
          SettingsItem value, $Res Function(SettingsItem) then) =
      _$SettingsItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "language") String? language,
      @JsonKey(name: "city") int? city});
}

/// @nodoc
class _$SettingsItemCopyWithImpl<$Res>
    extends _$GetSettingsSettingsItemResponseCopyWithImpl<$Res>
    implements $SettingsItemCopyWith<$Res> {
  _$SettingsItemCopyWithImpl(
      SettingsItem _value, $Res Function(SettingsItem) _then)
      : super(_value, (v) => _then(v as SettingsItem));

  @override
  SettingsItem get _value => super._value as SettingsItem;

  @override
  $Res call({
    Object? language = freezed,
    Object? city = freezed,
  }) {
    return _then(SettingsItem(
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsItem implements SettingsItem {
  const _$SettingsItem(@JsonKey(name: "language") this.language,
      @JsonKey(name: "city") this.city);

  factory _$SettingsItem.fromJson(Map<String, dynamic> json) =>
      _$$SettingsItemFromJson(json);

  @override

  /// Язык
  @JsonKey(name: "language")
  final String? language;
  @override

  /// Идентификатор города
  @JsonKey(name: "city")
  final int? city;

  @override
  String toString() {
    return 'GetSettingsSettingsItemResponse(language: $language, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SettingsItem &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  $SettingsItemCopyWith<SettingsItem> get copyWith =>
      _$SettingsItemCopyWithImpl<SettingsItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsItemToJson(this);
  }
}

abstract class SettingsItem implements GetSettingsSettingsItemResponse {
  const factory SettingsItem(@JsonKey(name: "language") String? language,
      @JsonKey(name: "city") int? city) = _$SettingsItem;

  factory SettingsItem.fromJson(Map<String, dynamic> json) =
      _$SettingsItem.fromJson;

  @override

  /// Язык
  @JsonKey(name: "language")
  String? get language => throw _privateConstructorUsedError;
  @override

  /// Идентификатор города
  @JsonKey(name: "city")
  int? get city => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SettingsItemCopyWith<SettingsItem> get copyWith =>
      throw _privateConstructorUsedError;
}
