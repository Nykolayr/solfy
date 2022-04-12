// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brands_geo_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandsGeoItemResponse _$BrandsGeoItemResponseFromJson(
    Map<String, dynamic> json) {
  return GeoItem.fromJson(json);
}

/// @nodoc
class _$BrandsGeoItemResponseTearOff {
  const _$BrandsGeoItemResponseTearOff();

  GeoItem call(@JsonKey(name: "title") String? title,
      @JsonKey(name: "subtitle") String? subtitle) {
    return GeoItem(
      title,
      subtitle,
    );
  }

  BrandsGeoItemResponse fromJson(Map<String, Object> json) {
    return BrandsGeoItemResponse.fromJson(json);
  }
}

/// @nodoc
const $BrandsGeoItemResponse = _$BrandsGeoItemResponseTearOff();

/// @nodoc
mixin _$BrandsGeoItemResponse {
  /// Название региона
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  /// Название города (подрегиона)
  @JsonKey(name: "subtitle")
  String? get subtitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandsGeoItemResponseCopyWith<BrandsGeoItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsGeoItemResponseCopyWith<$Res> {
  factory $BrandsGeoItemResponseCopyWith(BrandsGeoItemResponse value,
          $Res Function(BrandsGeoItemResponse) then) =
      _$BrandsGeoItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "subtitle") String? subtitle});
}

/// @nodoc
class _$BrandsGeoItemResponseCopyWithImpl<$Res>
    implements $BrandsGeoItemResponseCopyWith<$Res> {
  _$BrandsGeoItemResponseCopyWithImpl(this._value, this._then);

  final BrandsGeoItemResponse _value;
  // ignore: unused_field
  final $Res Function(BrandsGeoItemResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $GeoItemCopyWith<$Res>
    implements $BrandsGeoItemResponseCopyWith<$Res> {
  factory $GeoItemCopyWith(GeoItem value, $Res Function(GeoItem) then) =
      _$GeoItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "subtitle") String? subtitle});
}

/// @nodoc
class _$GeoItemCopyWithImpl<$Res>
    extends _$BrandsGeoItemResponseCopyWithImpl<$Res>
    implements $GeoItemCopyWith<$Res> {
  _$GeoItemCopyWithImpl(GeoItem _value, $Res Function(GeoItem) _then)
      : super(_value, (v) => _then(v as GeoItem));

  @override
  GeoItem get _value => super._value as GeoItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
  }) {
    return _then(GeoItem(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoItem implements GeoItem {
  const _$GeoItem(@JsonKey(name: "title") this.title,
      @JsonKey(name: "subtitle") this.subtitle);

  factory _$GeoItem.fromJson(Map<String, dynamic> json) =>
      _$$GeoItemFromJson(json);

  @override

  /// Название региона
  @JsonKey(name: "title")
  final String? title;
  @override

  /// Название города (подрегиона)
  @JsonKey(name: "subtitle")
  final String? subtitle;

  @override
  String toString() {
    return 'BrandsGeoItemResponse(title: $title, subtitle: $subtitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeoItem &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle);

  @JsonKey(ignore: true)
  @override
  $GeoItemCopyWith<GeoItem> get copyWith =>
      _$GeoItemCopyWithImpl<GeoItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoItemToJson(this);
  }
}

abstract class GeoItem implements BrandsGeoItemResponse {
  const factory GeoItem(@JsonKey(name: "title") String? title,
      @JsonKey(name: "subtitle") String? subtitle) = _$GeoItem;

  factory GeoItem.fromJson(Map<String, dynamic> json) = _$GeoItem.fromJson;

  @override

  /// Название региона
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @override

  /// Название города (подрегиона)
  @JsonKey(name: "subtitle")
  String? get subtitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GeoItemCopyWith<GeoItem> get copyWith => throw _privateConstructorUsedError;
}
