// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_brand_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchBrandItemResponse _$SearchBrandItemResponseFromJson(
    Map<String, dynamic> json) {
  return BrandItem.fromJson(json);
}

/// @nodoc
class _$SearchBrandItemResponseTearOff {
  const _$SearchBrandItemResponseTearOff();

  BrandItem call(
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "logo") String? logo,
      @JsonKey(name: "ranges") String? ranges,
      @JsonKey(name: "ranges_minimal") int? rangesMinimal,
      @JsonKey(name: "ranges_maximal") int? rangesMaximal,
      @JsonKey(name: "is_promotional") bool? isPromotional,
      @JsonKey(name: "conditions_count") int? conditionsCount,
      @JsonKey(name: "conditions") List<BrandConditionItemResponse>? conditions,
      @JsonKey(name: "distance") int? distance) {
    return BrandItem(
      id,
      name,
      shortDescription,
      color,
      logo,
      ranges,
      rangesMinimal,
      rangesMaximal,
      isPromotional,
      conditionsCount,
      conditions,
      distance,
    );
  }

  SearchBrandItemResponse fromJson(Map<String, Object> json) {
    return SearchBrandItemResponse.fromJson(json);
  }
}

/// @nodoc
const $SearchBrandItemResponse = _$SearchBrandItemResponseTearOff();

/// @nodoc
mixin _$SearchBrandItemResponse {
  /// ?????????????????????????? ????????????
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// ???????????????? ????????????
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  /// ?????????????? ???????????????? ????????????
  @JsonKey(name: "short_description")
  String? get shortDescription => throw _privateConstructorUsedError;

  /// ???????? ????????????
  @JsonKey(name: "color")
  String? get color => throw _privateConstructorUsedError;

  /// ???????????? ???? ?????????????? ????????????
  @JsonKey(name: "logo")
  String? get logo => throw _privateConstructorUsedError;

  /// ?????????????????? ??????????????????
  @JsonKey(name: "ranges")
  String? get ranges => throw _privateConstructorUsedError;

  /// ?????????????????????? ???????? ??????????????????
  @JsonKey(name: "ranges_minimal")
  int? get rangesMinimal => throw _privateConstructorUsedError;

  /// ???????????????????????? ???????? ??????????????????
  @JsonKey(name: "ranges_maximal")
  int? get rangesMaximal => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: "is_promotional")
  bool? get isPromotional => throw _privateConstructorUsedError;

  /// ???????????????????? ?????????????????? ???????????? ??????????????????
  @JsonKey(name: "conditions_count")
  int? get conditionsCount => throw _privateConstructorUsedError;

  /// ?????????? ??????????????????
  @JsonKey(name: "conditions")
  List<BrandConditionItemResponse>? get conditions =>
      throw _privateConstructorUsedError;

  /// ???????????????????? ???? ????????????????
  @JsonKey(name: "distance")
  int? get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchBrandItemResponseCopyWith<SearchBrandItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBrandItemResponseCopyWith<$Res> {
  factory $SearchBrandItemResponseCopyWith(SearchBrandItemResponse value,
          $Res Function(SearchBrandItemResponse) then) =
      _$SearchBrandItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "logo") String? logo,
      @JsonKey(name: "ranges") String? ranges,
      @JsonKey(name: "ranges_minimal") int? rangesMinimal,
      @JsonKey(name: "ranges_maximal") int? rangesMaximal,
      @JsonKey(name: "is_promotional") bool? isPromotional,
      @JsonKey(name: "conditions_count") int? conditionsCount,
      @JsonKey(name: "conditions") List<BrandConditionItemResponse>? conditions,
      @JsonKey(name: "distance") int? distance});
}

/// @nodoc
class _$SearchBrandItemResponseCopyWithImpl<$Res>
    implements $SearchBrandItemResponseCopyWith<$Res> {
  _$SearchBrandItemResponseCopyWithImpl(this._value, this._then);

  final SearchBrandItemResponse _value;
  // ignore: unused_field
  final $Res Function(SearchBrandItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? shortDescription = freezed,
    Object? color = freezed,
    Object? logo = freezed,
    Object? ranges = freezed,
    Object? rangesMinimal = freezed,
    Object? rangesMaximal = freezed,
    Object? isPromotional = freezed,
    Object? conditionsCount = freezed,
    Object? conditions = freezed,
    Object? distance = freezed,
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
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
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
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class $BrandItemCopyWith<$Res>
    implements $SearchBrandItemResponseCopyWith<$Res> {
  factory $BrandItemCopyWith(BrandItem value, $Res Function(BrandItem) then) =
      _$BrandItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "logo") String? logo,
      @JsonKey(name: "ranges") String? ranges,
      @JsonKey(name: "ranges_minimal") int? rangesMinimal,
      @JsonKey(name: "ranges_maximal") int? rangesMaximal,
      @JsonKey(name: "is_promotional") bool? isPromotional,
      @JsonKey(name: "conditions_count") int? conditionsCount,
      @JsonKey(name: "conditions") List<BrandConditionItemResponse>? conditions,
      @JsonKey(name: "distance") int? distance});
}

/// @nodoc
class _$BrandItemCopyWithImpl<$Res>
    extends _$SearchBrandItemResponseCopyWithImpl<$Res>
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
    Object? color = freezed,
    Object? logo = freezed,
    Object? ranges = freezed,
    Object? rangesMinimal = freezed,
    Object? rangesMaximal = freezed,
    Object? isPromotional = freezed,
    Object? conditionsCount = freezed,
    Object? conditions = freezed,
    Object? distance = freezed,
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
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
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
      distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
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
      @JsonKey(name: "color") this.color,
      @JsonKey(name: "logo") this.logo,
      @JsonKey(name: "ranges") this.ranges,
      @JsonKey(name: "ranges_minimal") this.rangesMinimal,
      @JsonKey(name: "ranges_maximal") this.rangesMaximal,
      @JsonKey(name: "is_promotional") this.isPromotional,
      @JsonKey(name: "conditions_count") this.conditionsCount,
      @JsonKey(name: "conditions") this.conditions,
      @JsonKey(name: "distance") this.distance);

  factory _$BrandItem.fromJson(Map<String, dynamic> json) =>
      _$$BrandItemFromJson(json);

  @override

  /// ?????????????????????????? ????????????
  @JsonKey(name: "id")
  final int? id;
  @override

  /// ???????????????? ????????????
  @JsonKey(name: "name")
  final String? name;
  @override

  /// ?????????????? ???????????????? ????????????
  @JsonKey(name: "short_description")
  final String? shortDescription;
  @override

  /// ???????? ????????????
  @JsonKey(name: "color")
  final String? color;
  @override

  /// ???????????? ???? ?????????????? ????????????
  @JsonKey(name: "logo")
  final String? logo;
  @override

  /// ?????????????????? ??????????????????
  @JsonKey(name: "ranges")
  final String? ranges;
  @override

  /// ?????????????????????? ???????? ??????????????????
  @JsonKey(name: "ranges_minimal")
  final int? rangesMinimal;
  @override

  /// ???????????????????????? ???????? ??????????????????
  @JsonKey(name: "ranges_maximal")
  final int? rangesMaximal;
  @override

  ///
  @JsonKey(name: "is_promotional")
  final bool? isPromotional;
  @override

  /// ???????????????????? ?????????????????? ???????????? ??????????????????
  @JsonKey(name: "conditions_count")
  final int? conditionsCount;
  @override

  /// ?????????? ??????????????????
  @JsonKey(name: "conditions")
  final List<BrandConditionItemResponse>? conditions;
  @override

  /// ???????????????????? ???? ????????????????
  @JsonKey(name: "distance")
  final int? distance;

  @override
  String toString() {
    return 'SearchBrandItemResponse(id: $id, name: $name, shortDescription: $shortDescription, color: $color, logo: $logo, ranges: $ranges, rangesMinimal: $rangesMinimal, rangesMaximal: $rangesMaximal, isPromotional: $isPromotional, conditionsCount: $conditionsCount, conditions: $conditions, distance: $distance)';
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
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
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
                    .equals(other.conditions, conditions)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortDescription) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(ranges) ^
      const DeepCollectionEquality().hash(rangesMinimal) ^
      const DeepCollectionEquality().hash(rangesMaximal) ^
      const DeepCollectionEquality().hash(isPromotional) ^
      const DeepCollectionEquality().hash(conditionsCount) ^
      const DeepCollectionEquality().hash(conditions) ^
      const DeepCollectionEquality().hash(distance);

  @JsonKey(ignore: true)
  @override
  $BrandItemCopyWith<BrandItem> get copyWith =>
      _$BrandItemCopyWithImpl<BrandItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandItemToJson(this);
  }
}

abstract class BrandItem implements SearchBrandItemResponse {
  const factory BrandItem(
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "logo") String? logo,
      @JsonKey(name: "ranges") String? ranges,
      @JsonKey(name: "ranges_minimal") int? rangesMinimal,
      @JsonKey(name: "ranges_maximal") int? rangesMaximal,
      @JsonKey(name: "is_promotional") bool? isPromotional,
      @JsonKey(name: "conditions_count") int? conditionsCount,
      @JsonKey(name: "conditions") List<BrandConditionItemResponse>? conditions,
      @JsonKey(name: "distance") int? distance) = _$BrandItem;

  factory BrandItem.fromJson(Map<String, dynamic> json) = _$BrandItem.fromJson;

  @override

  /// ?????????????????????????? ????????????
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override

  /// ???????????????? ????????????
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @override

  /// ?????????????? ???????????????? ????????????
  @JsonKey(name: "short_description")
  String? get shortDescription => throw _privateConstructorUsedError;
  @override

  /// ???????? ????????????
  @JsonKey(name: "color")
  String? get color => throw _privateConstructorUsedError;
  @override

  /// ???????????? ???? ?????????????? ????????????
  @JsonKey(name: "logo")
  String? get logo => throw _privateConstructorUsedError;
  @override

  /// ?????????????????? ??????????????????
  @JsonKey(name: "ranges")
  String? get ranges => throw _privateConstructorUsedError;
  @override

  /// ?????????????????????? ???????? ??????????????????
  @JsonKey(name: "ranges_minimal")
  int? get rangesMinimal => throw _privateConstructorUsedError;
  @override

  /// ???????????????????????? ???????? ??????????????????
  @JsonKey(name: "ranges_maximal")
  int? get rangesMaximal => throw _privateConstructorUsedError;
  @override

  ///
  @JsonKey(name: "is_promotional")
  bool? get isPromotional => throw _privateConstructorUsedError;
  @override

  /// ???????????????????? ?????????????????? ???????????? ??????????????????
  @JsonKey(name: "conditions_count")
  int? get conditionsCount => throw _privateConstructorUsedError;
  @override

  /// ?????????? ??????????????????
  @JsonKey(name: "conditions")
  List<BrandConditionItemResponse>? get conditions =>
      throw _privateConstructorUsedError;
  @override

  /// ???????????????????? ???? ????????????????
  @JsonKey(name: "distance")
  int? get distance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BrandItemCopyWith<BrandItem> get copyWith =>
      throw _privateConstructorUsedError;
}
