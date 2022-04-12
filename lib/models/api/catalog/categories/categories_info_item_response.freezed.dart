// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_info_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesInfoItemResponse _$CategoriesInfoItemResponseFromJson(
    Map<String, dynamic> json) {
  return InfoItem.fromJson(json);
}

/// @nodoc
class _$CategoriesInfoItemResponseTearOff {
  const _$CategoriesInfoItemResponseTearOff();

  InfoItem call(@JsonKey(name: "total") String? total,
      @JsonKey(name: "geo") CategoriesGeoItemResponse? geo) {
    return InfoItem(
      total,
      geo,
    );
  }

  CategoriesInfoItemResponse fromJson(Map<String, Object> json) {
    return CategoriesInfoItemResponse.fromJson(json);
  }
}

/// @nodoc
const $CategoriesInfoItemResponse = _$CategoriesInfoItemResponseTearOff();

/// @nodoc
mixin _$CategoriesInfoItemResponse {
  /// Общее количество магазинов
  @JsonKey(name: "total")
  String? get total => throw _privateConstructorUsedError;

  /// Гео-информация
  @JsonKey(name: "geo")
  CategoriesGeoItemResponse? get geo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesInfoItemResponseCopyWith<CategoriesInfoItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesInfoItemResponseCopyWith<$Res> {
  factory $CategoriesInfoItemResponseCopyWith(CategoriesInfoItemResponse value,
          $Res Function(CategoriesInfoItemResponse) then) =
      _$CategoriesInfoItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "total") String? total,
      @JsonKey(name: "geo") CategoriesGeoItemResponse? geo});

  $CategoriesGeoItemResponseCopyWith<$Res>? get geo;
}

/// @nodoc
class _$CategoriesInfoItemResponseCopyWithImpl<$Res>
    implements $CategoriesInfoItemResponseCopyWith<$Res> {
  _$CategoriesInfoItemResponseCopyWithImpl(this._value, this._then);

  final CategoriesInfoItemResponse _value;
  // ignore: unused_field
  final $Res Function(CategoriesInfoItemResponse) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? geo = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as CategoriesGeoItemResponse?,
    ));
  }

  @override
  $CategoriesGeoItemResponseCopyWith<$Res>? get geo {
    if (_value.geo == null) {
      return null;
    }

    return $CategoriesGeoItemResponseCopyWith<$Res>(_value.geo!, (value) {
      return _then(_value.copyWith(geo: value));
    });
  }
}

/// @nodoc
abstract class $InfoItemCopyWith<$Res>
    implements $CategoriesInfoItemResponseCopyWith<$Res> {
  factory $InfoItemCopyWith(InfoItem value, $Res Function(InfoItem) then) =
      _$InfoItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "total") String? total,
      @JsonKey(name: "geo") CategoriesGeoItemResponse? geo});

  @override
  $CategoriesGeoItemResponseCopyWith<$Res>? get geo;
}

/// @nodoc
class _$InfoItemCopyWithImpl<$Res>
    extends _$CategoriesInfoItemResponseCopyWithImpl<$Res>
    implements $InfoItemCopyWith<$Res> {
  _$InfoItemCopyWithImpl(InfoItem _value, $Res Function(InfoItem) _then)
      : super(_value, (v) => _then(v as InfoItem));

  @override
  InfoItem get _value => super._value as InfoItem;

  @override
  $Res call({
    Object? total = freezed,
    Object? geo = freezed,
  }) {
    return _then(InfoItem(
      total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as CategoriesGeoItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoItem implements InfoItem {
  const _$InfoItem(
      @JsonKey(name: "total") this.total, @JsonKey(name: "geo") this.geo);

  factory _$InfoItem.fromJson(Map<String, dynamic> json) =>
      _$$InfoItemFromJson(json);

  @override

  /// Общее количество магазинов
  @JsonKey(name: "total")
  final String? total;
  @override

  /// Гео-информация
  @JsonKey(name: "geo")
  final CategoriesGeoItemResponse? geo;

  @override
  String toString() {
    return 'CategoriesInfoItemResponse(total: $total, geo: $geo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InfoItem &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.geo, geo) ||
                const DeepCollectionEquality().equals(other.geo, geo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(geo);

  @JsonKey(ignore: true)
  @override
  $InfoItemCopyWith<InfoItem> get copyWith =>
      _$InfoItemCopyWithImpl<InfoItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoItemToJson(this);
  }
}

abstract class InfoItem implements CategoriesInfoItemResponse {
  const factory InfoItem(@JsonKey(name: "total") String? total,
      @JsonKey(name: "geo") CategoriesGeoItemResponse? geo) = _$InfoItem;

  factory InfoItem.fromJson(Map<String, dynamic> json) = _$InfoItem.fromJson;

  @override

  /// Общее количество магазинов
  @JsonKey(name: "total")
  String? get total => throw _privateConstructorUsedError;
  @override

  /// Гео-информация
  @JsonKey(name: "geo")
  CategoriesGeoItemResponse? get geo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InfoItemCopyWith<InfoItem> get copyWith =>
      throw _privateConstructorUsedError;
}
