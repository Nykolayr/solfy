// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brand_brand_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandBrandItemResponse _$BrandBrandItemResponseFromJson(
    Map<String, dynamic> json) {
  return BrandItem.fromJson(json);
}

/// @nodoc
class _$BrandBrandItemResponseTearOff {
  const _$BrandBrandItemResponseTearOff();

  BrandItem call(
      @JsonKey(name: "id")
          int? id,
      @JsonKey(name: "name")
          String? name,
      @JsonKey(name: "short_description")
          String? shortDescription,
      @JsonKey(name: "description")
          String? description,
      @JsonKey(name: "color")
          String? color,
      @JsonKey(name: "site")
          String? site,
      @JsonKey(name: "logo")
          String? logo,
      @JsonKey(name: "phone")
          List<String>? phones,
      @JsonKey(name: "ranges")
          String? ranges,
      @JsonKey(name: "ranges_minimal")
          int? rangesMinimal,
      @JsonKey(name: "ranges_maximal")
          int? rangesMaximal,
      @JsonKey(name: "is_promotional")
          bool? isPromotional,
      @JsonKey(name: "conditions_count")
          int? conditionsCount,
      @JsonKey(name: "conditions")
          List<BrandConditionItemResponse>? conditions) {
    return BrandItem(
      id,
      name,
      shortDescription,
      description,
      color,
      site,
      logo,
      phones,
      ranges,
      rangesMinimal,
      rangesMaximal,
      isPromotional,
      conditionsCount,
      conditions,
    );
  }

  BrandBrandItemResponse fromJson(Map<String, Object> json) {
    return BrandBrandItemResponse.fromJson(json);
  }
}

/// @nodoc
const $BrandBrandItemResponse = _$BrandBrandItemResponseTearOff();

/// @nodoc
mixin _$BrandBrandItemResponse {
  /// Идентификатор бренда
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Название бренда
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  /// Краткое описание бренда
  @JsonKey(name: "short_description")
  String? get shortDescription => throw _privateConstructorUsedError;

  /// Описание бренда
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;

  /// Цвет бренда
  @JsonKey(name: "color")
  String? get color => throw _privateConstructorUsedError;

  /// Ссылка на сайт бренда
  @JsonKey(name: "site")
  String? get site => throw _privateConstructorUsedError;

  /// Ссылка на логотип бренда
  @JsonKey(name: "logo")
  String? get logo => throw _privateConstructorUsedError;

  /// Массив с телефонами бренда
  @JsonKey(name: "phone")
  List<String>? get phones => throw _privateConstructorUsedError;

  /// Диапазоны рассрочки
  @JsonKey(name: "ranges")
  String? get ranges => throw _privateConstructorUsedError;

  /// Минимальный срок рассрочки
  @JsonKey(name: "ranges_minimal")
  int? get rangesMinimal => throw _privateConstructorUsedError;

  /// Максимальный срок рассрочки
  @JsonKey(name: "ranges_maximal")
  int? get rangesMaximal => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: "is_promotional")
  bool? get isPromotional => throw _privateConstructorUsedError;

  /// Количество состояний сроков рассрочки
  @JsonKey(name: "conditions_count")
  int? get conditionsCount => throw _privateConstructorUsedError;

  /// Сроки рассрочки
  @JsonKey(name: "conditions")
  List<BrandConditionItemResponse>? get conditions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandBrandItemResponseCopyWith<BrandBrandItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandBrandItemResponseCopyWith<$Res> {
  factory $BrandBrandItemResponseCopyWith(BrandBrandItemResponse value,
          $Res Function(BrandBrandItemResponse) then) =
      _$BrandBrandItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id")
          int? id,
      @JsonKey(name: "name")
          String? name,
      @JsonKey(name: "short_description")
          String? shortDescription,
      @JsonKey(name: "description")
          String? description,
      @JsonKey(name: "color")
          String? color,
      @JsonKey(name: "site")
          String? site,
      @JsonKey(name: "logo")
          String? logo,
      @JsonKey(name: "phone")
          List<String>? phones,
      @JsonKey(name: "ranges")
          String? ranges,
      @JsonKey(name: "ranges_minimal")
          int? rangesMinimal,
      @JsonKey(name: "ranges_maximal")
          int? rangesMaximal,
      @JsonKey(name: "is_promotional")
          bool? isPromotional,
      @JsonKey(name: "conditions_count")
          int? conditionsCount,
      @JsonKey(name: "conditions")
          List<BrandConditionItemResponse>? conditions});
}

/// @nodoc
class _$BrandBrandItemResponseCopyWithImpl<$Res>
    implements $BrandBrandItemResponseCopyWith<$Res> {
  _$BrandBrandItemResponseCopyWithImpl(this._value, this._then);

  final BrandBrandItemResponse _value;
  // ignore: unused_field
  final $Res Function(BrandBrandItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? site = freezed,
    Object? logo = freezed,
    Object? phones = freezed,
    Object? ranges = freezed,
    Object? rangesMinimal = freezed,
    Object? rangesMaximal = freezed,
    Object? isPromotional = freezed,
    Object? conditionsCount = freezed,
    Object? conditions = freezed,
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
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      site: site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
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
      conditions: conditions == freezed
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BrandConditionItemResponse>?,
    ));
  }
}

/// @nodoc
abstract class $BrandItemCopyWith<$Res>
    implements $BrandBrandItemResponseCopyWith<$Res> {
  factory $BrandItemCopyWith(BrandItem value, $Res Function(BrandItem) then) =
      _$BrandItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id")
          int? id,
      @JsonKey(name: "name")
          String? name,
      @JsonKey(name: "short_description")
          String? shortDescription,
      @JsonKey(name: "description")
          String? description,
      @JsonKey(name: "color")
          String? color,
      @JsonKey(name: "site")
          String? site,
      @JsonKey(name: "logo")
          String? logo,
      @JsonKey(name: "phone")
          List<String>? phones,
      @JsonKey(name: "ranges")
          String? ranges,
      @JsonKey(name: "ranges_minimal")
          int? rangesMinimal,
      @JsonKey(name: "ranges_maximal")
          int? rangesMaximal,
      @JsonKey(name: "is_promotional")
          bool? isPromotional,
      @JsonKey(name: "conditions_count")
          int? conditionsCount,
      @JsonKey(name: "conditions")
          List<BrandConditionItemResponse>? conditions});
}

/// @nodoc
class _$BrandItemCopyWithImpl<$Res>
    extends _$BrandBrandItemResponseCopyWithImpl<$Res>
    implements $BrandItemCopyWith<$Res> {
  _$BrandItemCopyWithImpl(BrandItem _value, $Res Function(BrandItem) _then)
      : super(_value, (v) => _then(v as BrandItem));

  @override
  BrandItem get _value => super._value as BrandItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? site = freezed,
    Object? logo = freezed,
    Object? phones = freezed,
    Object? ranges = freezed,
    Object? rangesMinimal = freezed,
    Object? rangesMaximal = freezed,
    Object? isPromotional = freezed,
    Object? conditionsCount = freezed,
    Object? conditions = freezed,
  }) {
    return _then(BrandItem(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
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
      conditions == freezed
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BrandConditionItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandItem implements BrandItem {
  const _$BrandItem(
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "short_description") this.shortDescription,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "color") this.color,
      @JsonKey(name: "site") this.site,
      @JsonKey(name: "logo") this.logo,
      @JsonKey(name: "phone") this.phones,
      @JsonKey(name: "ranges") this.ranges,
      @JsonKey(name: "ranges_minimal") this.rangesMinimal,
      @JsonKey(name: "ranges_maximal") this.rangesMaximal,
      @JsonKey(name: "is_promotional") this.isPromotional,
      @JsonKey(name: "conditions_count") this.conditionsCount,
      @JsonKey(name: "conditions") this.conditions);

  factory _$BrandItem.fromJson(Map<String, dynamic> json) =>
      _$$BrandItemFromJson(json);

  @override

  /// Идентификатор бренда
  @JsonKey(name: "id")
  final int? id;
  @override

  /// Название бренда
  @JsonKey(name: "name")
  final String? name;
  @override

  /// Краткое описание бренда
  @JsonKey(name: "short_description")
  final String? shortDescription;
  @override

  /// Описание бренда
  @JsonKey(name: "description")
  final String? description;
  @override

  /// Цвет бренда
  @JsonKey(name: "color")
  final String? color;
  @override

  /// Ссылка на сайт бренда
  @JsonKey(name: "site")
  final String? site;
  @override

  /// Ссылка на логотип бренда
  @JsonKey(name: "logo")
  final String? logo;
  @override

  /// Массив с телефонами бренда
  @JsonKey(name: "phone")
  final List<String>? phones;
  @override

  /// Диапазоны рассрочки
  @JsonKey(name: "ranges")
  final String? ranges;
  @override

  /// Минимальный срок рассрочки
  @JsonKey(name: "ranges_minimal")
  final int? rangesMinimal;
  @override

  /// Максимальный срок рассрочки
  @JsonKey(name: "ranges_maximal")
  final int? rangesMaximal;
  @override

  ///
  @JsonKey(name: "is_promotional")
  final bool? isPromotional;
  @override

  /// Количество состояний сроков рассрочки
  @JsonKey(name: "conditions_count")
  final int? conditionsCount;
  @override

  /// Сроки рассрочки
  @JsonKey(name: "conditions")
  final List<BrandConditionItemResponse>? conditions;

  @override
  String toString() {
    return 'BrandBrandItemResponse(id: $id, name: $name, shortDescription: $shortDescription, description: $description, color: $color, site: $site, logo: $logo, phones: $phones, ranges: $ranges, rangesMinimal: $rangesMinimal, rangesMaximal: $rangesMaximal, isPromotional: $isPromotional, conditionsCount: $conditionsCount, conditions: $conditions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BrandItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortDescription, shortDescription) ||
                const DeepCollectionEquality()
                    .equals(other.shortDescription, shortDescription)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.site, site) ||
                const DeepCollectionEquality().equals(other.site, site)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
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
            (identical(other.conditions, conditions) ||
                const DeepCollectionEquality()
                    .equals(other.conditions, conditions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortDescription) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(site) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(phones) ^
      const DeepCollectionEquality().hash(ranges) ^
      const DeepCollectionEquality().hash(rangesMinimal) ^
      const DeepCollectionEquality().hash(rangesMaximal) ^
      const DeepCollectionEquality().hash(isPromotional) ^
      const DeepCollectionEquality().hash(conditionsCount) ^
      const DeepCollectionEquality().hash(conditions);

  @JsonKey(ignore: true)
  @override
  $BrandItemCopyWith<BrandItem> get copyWith =>
      _$BrandItemCopyWithImpl<BrandItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandItemToJson(this);
  }
}

abstract class BrandItem implements BrandBrandItemResponse {
  const factory BrandItem(
      @JsonKey(name: "id")
          int? id,
      @JsonKey(name: "name")
          String? name,
      @JsonKey(name: "short_description")
          String? shortDescription,
      @JsonKey(name: "description")
          String? description,
      @JsonKey(name: "color")
          String? color,
      @JsonKey(name: "site")
          String? site,
      @JsonKey(name: "logo")
          String? logo,
      @JsonKey(name: "phone")
          List<String>? phones,
      @JsonKey(name: "ranges")
          String? ranges,
      @JsonKey(name: "ranges_minimal")
          int? rangesMinimal,
      @JsonKey(name: "ranges_maximal")
          int? rangesMaximal,
      @JsonKey(name: "is_promotional")
          bool? isPromotional,
      @JsonKey(name: "conditions_count")
          int? conditionsCount,
      @JsonKey(name: "conditions")
          List<BrandConditionItemResponse>? conditions) = _$BrandItem;

  factory BrandItem.fromJson(Map<String, dynamic> json) = _$BrandItem.fromJson;

  @override

  /// Идентификатор бренда
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override

  /// Название бренда
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @override

  /// Краткое описание бренда
  @JsonKey(name: "short_description")
  String? get shortDescription => throw _privateConstructorUsedError;
  @override

  /// Описание бренда
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @override

  /// Цвет бренда
  @JsonKey(name: "color")
  String? get color => throw _privateConstructorUsedError;
  @override

  /// Ссылка на сайт бренда
  @JsonKey(name: "site")
  String? get site => throw _privateConstructorUsedError;
  @override

  /// Ссылка на логотип бренда
  @JsonKey(name: "logo")
  String? get logo => throw _privateConstructorUsedError;
  @override

  /// Массив с телефонами бренда
  @JsonKey(name: "phone")
  List<String>? get phones => throw _privateConstructorUsedError;
  @override

  /// Диапазоны рассрочки
  @JsonKey(name: "ranges")
  String? get ranges => throw _privateConstructorUsedError;
  @override

  /// Минимальный срок рассрочки
  @JsonKey(name: "ranges_minimal")
  int? get rangesMinimal => throw _privateConstructorUsedError;
  @override

  /// Максимальный срок рассрочки
  @JsonKey(name: "ranges_maximal")
  int? get rangesMaximal => throw _privateConstructorUsedError;
  @override

  ///
  @JsonKey(name: "is_promotional")
  bool? get isPromotional => throw _privateConstructorUsedError;
  @override

  /// Количество состояний сроков рассрочки
  @JsonKey(name: "conditions_count")
  int? get conditionsCount => throw _privateConstructorUsedError;
  @override

  /// Сроки рассрочки
  @JsonKey(name: "conditions")
  List<BrandConditionItemResponse>? get conditions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BrandItemCopyWith<BrandItem> get copyWith =>
      throw _privateConstructorUsedError;
}
