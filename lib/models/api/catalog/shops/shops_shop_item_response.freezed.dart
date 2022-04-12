// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shops_shop_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopsShopItemResponse _$ShopsShopItemResponseFromJson(
    Map<String, dynamic> json) {
  return ShopItem.fromJson(json);
}

/// @nodoc
class _$ShopsShopItemResponseTearOff {
  const _$ShopsShopItemResponseTearOff();

  ShopItem call(
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "geo") ShopsShopGeoItemResponse? geo,
      @JsonKey(name: "brand") ShopsShopBrandItemResponse? brand,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "logo") String? logo,
      @JsonKey(name: "work_time") String? workTime,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "site") String? site,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "phones") List<String>? phones,
      @JsonKey(name: "ranges") String? ranges,
      @JsonKey(name: "ranges_minimal") int? rangesMinimal,
      @JsonKey(name: "ranges_maximal") int? rangesMaximal,
      @JsonKey(name: "is_promotional") bool? isPromotional,
      @JsonKey(name: "conditions_count") int? conditionsCount,
      @JsonKey(name: "distance") int? distance) {
    return ShopItem(
      id,
      geo,
      brand,
      shortDescription,
      logo,
      workTime,
      address,
      site,
      type,
      phones,
      ranges,
      rangesMinimal,
      rangesMaximal,
      isPromotional,
      conditionsCount,
      distance,
    );
  }

  ShopsShopItemResponse fromJson(Map<String, Object> json) {
    return ShopsShopItemResponse.fromJson(json);
  }
}

/// @nodoc
const $ShopsShopItemResponse = _$ShopsShopItemResponseTearOff();

/// @nodoc
mixin _$ShopsShopItemResponse {
  /// Идентификатор магазина
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Гео-данные магазина
  @JsonKey(name: "geo")
  ShopsShopGeoItemResponse? get geo => throw _privateConstructorUsedError;

  /// Бренд, к которому относится магазин
  @JsonKey(name: "brand")
  ShopsShopBrandItemResponse? get brand => throw _privateConstructorUsedError;

  /// Краткое описание магазина
  @JsonKey(name: "short_description")
  String? get shortDescription => throw _privateConstructorUsedError;

  /// Ссылка на логотип магазина
  @JsonKey(name: "logo")
  String? get logo => throw _privateConstructorUsedError;

  /// Время работы магазина
  @JsonKey(name: "work_time")
  String? get workTime => throw _privateConstructorUsedError;

  /// Адрес магазина
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;

  /// Ссылка на магазин
  @JsonKey(name: "site")
  String? get site => throw _privateConstructorUsedError;

  /// Тип магазина (online/offline)
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  /// Массив с телефонами магазина
  @JsonKey(name: "phones")
  List<String>? get phones => throw _privateConstructorUsedError;

  /// Сроки рассрочки магазина
  @JsonKey(name: "ranges")
  String? get ranges => throw _privateConstructorUsedError;

  /// Минимальный срок рассрочки магазина
  @JsonKey(name: "ranges_minimal")
  int? get rangesMinimal => throw _privateConstructorUsedError;

  /// Максимальный срок рассрочки магазина
  @JsonKey(name: "ranges_maximal")
  int? get rangesMaximal => throw _privateConstructorUsedError;
  @JsonKey(name: "is_promotional")
  bool? get isPromotional => throw _privateConstructorUsedError;

  /// Число различных состояний рассрочек
  @JsonKey(name: "conditions_count")
  int? get conditionsCount => throw _privateConstructorUsedError;

  /// Расстояние до магазина
  @JsonKey(name: "distance")
  int? get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopsShopItemResponseCopyWith<ShopsShopItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopsShopItemResponseCopyWith<$Res> {
  factory $ShopsShopItemResponseCopyWith(ShopsShopItemResponse value,
          $Res Function(ShopsShopItemResponse) then) =
      _$ShopsShopItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "geo") ShopsShopGeoItemResponse? geo,
      @JsonKey(name: "brand") ShopsShopBrandItemResponse? brand,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "logo") String? logo,
      @JsonKey(name: "work_time") String? workTime,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "site") String? site,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "phones") List<String>? phones,
      @JsonKey(name: "ranges") String? ranges,
      @JsonKey(name: "ranges_minimal") int? rangesMinimal,
      @JsonKey(name: "ranges_maximal") int? rangesMaximal,
      @JsonKey(name: "is_promotional") bool? isPromotional,
      @JsonKey(name: "conditions_count") int? conditionsCount,
      @JsonKey(name: "distance") int? distance});

  $ShopsShopGeoItemResponseCopyWith<$Res>? get geo;
  $ShopsShopBrandItemResponseCopyWith<$Res>? get brand;
}

/// @nodoc
class _$ShopsShopItemResponseCopyWithImpl<$Res>
    implements $ShopsShopItemResponseCopyWith<$Res> {
  _$ShopsShopItemResponseCopyWithImpl(this._value, this._then);

  final ShopsShopItemResponse _value;
  // ignore: unused_field
  final $Res Function(ShopsShopItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? geo = freezed,
    Object? brand = freezed,
    Object? shortDescription = freezed,
    Object? logo = freezed,
    Object? workTime = freezed,
    Object? address = freezed,
    Object? site = freezed,
    Object? type = freezed,
    Object? phones = freezed,
    Object? ranges = freezed,
    Object? rangesMinimal = freezed,
    Object? rangesMaximal = freezed,
    Object? isPromotional = freezed,
    Object? conditionsCount = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as ShopsShopGeoItemResponse?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as ShopsShopBrandItemResponse?,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      workTime: workTime == freezed
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      site: site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      phones: phones == freezed
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ranges: ranges == freezed
          ? _value.ranges
          : ranges // ignore: cast_nullable_to_non_nullable
              as String?,
      rangesMinimal: rangesMinimal == freezed
          ? _value.rangesMinimal
          : rangesMinimal // ignore: cast_nullable_to_non_nullable
              as int?,
      rangesMaximal: rangesMaximal == freezed
          ? _value.rangesMaximal
          : rangesMaximal // ignore: cast_nullable_to_non_nullable
              as int?,
      isPromotional: isPromotional == freezed
          ? _value.isPromotional
          : isPromotional // ignore: cast_nullable_to_non_nullable
              as bool?,
      conditionsCount: conditionsCount == freezed
          ? _value.conditionsCount
          : conditionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $ShopsShopGeoItemResponseCopyWith<$Res>? get geo {
    if (_value.geo == null) {
      return null;
    }

    return $ShopsShopGeoItemResponseCopyWith<$Res>(_value.geo!, (value) {
      return _then(_value.copyWith(geo: value));
    });
  }

  @override
  $ShopsShopBrandItemResponseCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $ShopsShopBrandItemResponseCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value));
    });
  }
}

/// @nodoc
abstract class $ShopItemCopyWith<$Res>
    implements $ShopsShopItemResponseCopyWith<$Res> {
  factory $ShopItemCopyWith(ShopItem value, $Res Function(ShopItem) then) =
      _$ShopItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "geo") ShopsShopGeoItemResponse? geo,
      @JsonKey(name: "brand") ShopsShopBrandItemResponse? brand,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "logo") String? logo,
      @JsonKey(name: "work_time") String? workTime,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "site") String? site,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "phones") List<String>? phones,
      @JsonKey(name: "ranges") String? ranges,
      @JsonKey(name: "ranges_minimal") int? rangesMinimal,
      @JsonKey(name: "ranges_maximal") int? rangesMaximal,
      @JsonKey(name: "is_promotional") bool? isPromotional,
      @JsonKey(name: "conditions_count") int? conditionsCount,
      @JsonKey(name: "distance") int? distance});

  @override
  $ShopsShopGeoItemResponseCopyWith<$Res>? get geo;
  @override
  $ShopsShopBrandItemResponseCopyWith<$Res>? get brand;
}

/// @nodoc
class _$ShopItemCopyWithImpl<$Res>
    extends _$ShopsShopItemResponseCopyWithImpl<$Res>
    implements $ShopItemCopyWith<$Res> {
  _$ShopItemCopyWithImpl(ShopItem _value, $Res Function(ShopItem) _then)
      : super(_value, (v) => _then(v as ShopItem));

  @override
  ShopItem get _value => super._value as ShopItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? geo = freezed,
    Object? brand = freezed,
    Object? shortDescription = freezed,
    Object? logo = freezed,
    Object? workTime = freezed,
    Object? address = freezed,
    Object? site = freezed,
    Object? type = freezed,
    Object? phones = freezed,
    Object? ranges = freezed,
    Object? rangesMinimal = freezed,
    Object? rangesMaximal = freezed,
    Object? isPromotional = freezed,
    Object? conditionsCount = freezed,
    Object? distance = freezed,
  }) {
    return _then(ShopItem(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as ShopsShopGeoItemResponse?,
      brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as ShopsShopBrandItemResponse?,
      shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      workTime == freezed
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String?,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      phones == freezed
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ranges == freezed
          ? _value.ranges
          : ranges // ignore: cast_nullable_to_non_nullable
              as String?,
      rangesMinimal == freezed
          ? _value.rangesMinimal
          : rangesMinimal // ignore: cast_nullable_to_non_nullable
              as int?,
      rangesMaximal == freezed
          ? _value.rangesMaximal
          : rangesMaximal // ignore: cast_nullable_to_non_nullable
              as int?,
      isPromotional == freezed
          ? _value.isPromotional
          : isPromotional // ignore: cast_nullable_to_non_nullable
              as bool?,
      conditionsCount == freezed
          ? _value.conditionsCount
          : conditionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopItem implements ShopItem {
  const _$ShopItem(
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "geo") this.geo,
      @JsonKey(name: "brand") this.brand,
      @JsonKey(name: "short_description") this.shortDescription,
      @JsonKey(name: "logo") this.logo,
      @JsonKey(name: "work_time") this.workTime,
      @JsonKey(name: "address") this.address,
      @JsonKey(name: "site") this.site,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "phones") this.phones,
      @JsonKey(name: "ranges") this.ranges,
      @JsonKey(name: "ranges_minimal") this.rangesMinimal,
      @JsonKey(name: "ranges_maximal") this.rangesMaximal,
      @JsonKey(name: "is_promotional") this.isPromotional,
      @JsonKey(name: "conditions_count") this.conditionsCount,
      @JsonKey(name: "distance") this.distance);

  factory _$ShopItem.fromJson(Map<String, dynamic> json) =>
      _$$ShopItemFromJson(json);

  @override

  /// Идентификатор магазина
  @JsonKey(name: "id")
  final int? id;
  @override

  /// Гео-данные магазина
  @JsonKey(name: "geo")
  final ShopsShopGeoItemResponse? geo;
  @override

  /// Бренд, к которому относится магазин
  @JsonKey(name: "brand")
  final ShopsShopBrandItemResponse? brand;
  @override

  /// Краткое описание магазина
  @JsonKey(name: "short_description")
  final String? shortDescription;
  @override

  /// Ссылка на логотип магазина
  @JsonKey(name: "logo")
  final String? logo;
  @override

  /// Время работы магазина
  @JsonKey(name: "work_time")
  final String? workTime;
  @override

  /// Адрес магазина
  @JsonKey(name: "address")
  final String? address;
  @override

  /// Ссылка на магазин
  @JsonKey(name: "site")
  final String? site;
  @override

  /// Тип магазина (online/offline)
  @JsonKey(name: "type")
  final String? type;
  @override

  /// Массив с телефонами магазина
  @JsonKey(name: "phones")
  final List<String>? phones;
  @override

  /// Сроки рассрочки магазина
  @JsonKey(name: "ranges")
  final String? ranges;
  @override

  /// Минимальный срок рассрочки магазина
  @JsonKey(name: "ranges_minimal")
  final int? rangesMinimal;
  @override

  /// Максимальный срок рассрочки магазина
  @JsonKey(name: "ranges_maximal")
  final int? rangesMaximal;
  @override
  @JsonKey(name: "is_promotional")
  final bool? isPromotional;
  @override

  /// Число различных состояний рассрочек
  @JsonKey(name: "conditions_count")
  final int? conditionsCount;
  @override

  /// Расстояние до магазина
  @JsonKey(name: "distance")
  final int? distance;

  @override
  String toString() {
    return 'ShopsShopItemResponse(id: $id, geo: $geo, brand: $brand, shortDescription: $shortDescription, logo: $logo, workTime: $workTime, address: $address, site: $site, type: $type, phones: $phones, ranges: $ranges, rangesMinimal: $rangesMinimal, rangesMaximal: $rangesMaximal, isPromotional: $isPromotional, conditionsCount: $conditionsCount, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShopItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.geo, geo) ||
                const DeepCollectionEquality().equals(other.geo, geo)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.shortDescription, shortDescription) ||
                const DeepCollectionEquality()
                    .equals(other.shortDescription, shortDescription)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.workTime, workTime) ||
                const DeepCollectionEquality()
                    .equals(other.workTime, workTime)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.site, site) ||
                const DeepCollectionEquality().equals(other.site, site)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.phones, phones) ||
                const DeepCollectionEquality().equals(other.phones, phones)) &&
            (identical(other.ranges, ranges) ||
                const DeepCollectionEquality().equals(other.ranges, ranges)) &&
            (identical(other.rangesMinimal, rangesMinimal) ||
                const DeepCollectionEquality()
                    .equals(other.rangesMinimal, rangesMinimal)) &&
            (identical(other.rangesMaximal, rangesMaximal) ||
                const DeepCollectionEquality()
                    .equals(other.rangesMaximal, rangesMaximal)) &&
            (identical(other.isPromotional, isPromotional) ||
                const DeepCollectionEquality()
                    .equals(other.isPromotional, isPromotional)) &&
            (identical(other.conditionsCount, conditionsCount) ||
                const DeepCollectionEquality()
                    .equals(other.conditionsCount, conditionsCount)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(geo) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(shortDescription) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(workTime) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(site) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(phones) ^
      const DeepCollectionEquality().hash(ranges) ^
      const DeepCollectionEquality().hash(rangesMinimal) ^
      const DeepCollectionEquality().hash(rangesMaximal) ^
      const DeepCollectionEquality().hash(isPromotional) ^
      const DeepCollectionEquality().hash(conditionsCount) ^
      const DeepCollectionEquality().hash(distance);

  @JsonKey(ignore: true)
  @override
  $ShopItemCopyWith<ShopItem> get copyWith =>
      _$ShopItemCopyWithImpl<ShopItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopItemToJson(this);
  }
}

abstract class ShopItem implements ShopsShopItemResponse {
  const factory ShopItem(
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "geo") ShopsShopGeoItemResponse? geo,
      @JsonKey(name: "brand") ShopsShopBrandItemResponse? brand,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "logo") String? logo,
      @JsonKey(name: "work_time") String? workTime,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "site") String? site,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "phones") List<String>? phones,
      @JsonKey(name: "ranges") String? ranges,
      @JsonKey(name: "ranges_minimal") int? rangesMinimal,
      @JsonKey(name: "ranges_maximal") int? rangesMaximal,
      @JsonKey(name: "is_promotional") bool? isPromotional,
      @JsonKey(name: "conditions_count") int? conditionsCount,
      @JsonKey(name: "distance") int? distance) = _$ShopItem;

  factory ShopItem.fromJson(Map<String, dynamic> json) = _$ShopItem.fromJson;

  @override

  /// Идентификатор магазина
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override

  /// Гео-данные магазина
  @JsonKey(name: "geo")
  ShopsShopGeoItemResponse? get geo => throw _privateConstructorUsedError;
  @override

  /// Бренд, к которому относится магазин
  @JsonKey(name: "brand")
  ShopsShopBrandItemResponse? get brand => throw _privateConstructorUsedError;
  @override

  /// Краткое описание магазина
  @JsonKey(name: "short_description")
  String? get shortDescription => throw _privateConstructorUsedError;
  @override

  /// Ссылка на логотип магазина
  @JsonKey(name: "logo")
  String? get logo => throw _privateConstructorUsedError;
  @override

  /// Время работы магазина
  @JsonKey(name: "work_time")
  String? get workTime => throw _privateConstructorUsedError;
  @override

  /// Адрес магазина
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @override

  /// Ссылка на магазин
  @JsonKey(name: "site")
  String? get site => throw _privateConstructorUsedError;
  @override

  /// Тип магазина (online/offline)
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @override

  /// Массив с телефонами магазина
  @JsonKey(name: "phones")
  List<String>? get phones => throw _privateConstructorUsedError;
  @override

  /// Сроки рассрочки магазина
  @JsonKey(name: "ranges")
  String? get ranges => throw _privateConstructorUsedError;
  @override

  /// Минимальный срок рассрочки магазина
  @JsonKey(name: "ranges_minimal")
  int? get rangesMinimal => throw _privateConstructorUsedError;
  @override

  /// Максимальный срок рассрочки магазина
  @JsonKey(name: "ranges_maximal")
  int? get rangesMaximal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_promotional")
  bool? get isPromotional => throw _privateConstructorUsedError;
  @override

  /// Число различных состояний рассрочек
  @JsonKey(name: "conditions_count")
  int? get conditionsCount => throw _privateConstructorUsedError;
  @override

  /// Расстояние до магазина
  @JsonKey(name: "distance")
  int? get distance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShopItemCopyWith<ShopItem> get copyWith =>
      throw _privateConstructorUsedError;
}
