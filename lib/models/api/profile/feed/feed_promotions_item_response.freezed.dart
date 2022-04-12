// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_promotions_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedPromotionsItemResponse _$FeedPromotionsItemResponseFromJson(
    Map<String, dynamic> json) {
  return PromotionsItem.fromJson(json);
}

/// @nodoc
class _$FeedPromotionsItemResponseTearOff {
  const _$FeedPromotionsItemResponseTearOff();

  PromotionsItem call(
      @JsonKey(name: "caption")
          String? caption,
      @JsonKey(name: "brands")
          List<FeedPromotionsBrandItemResponse>? brands,
      @JsonKey(name: "categories")
          List<FeedPromotionsCategoryItemResponse>? categories) {
    return PromotionsItem(
      caption,
      brands,
      categories,
    );
  }

  FeedPromotionsItemResponse fromJson(Map<String, Object> json) {
    return FeedPromotionsItemResponse.fromJson(json);
  }
}

/// @nodoc
const $FeedPromotionsItemResponse = _$FeedPromotionsItemResponseTearOff();

/// @nodoc
mixin _$FeedPromotionsItemResponse {
  /// Подпись
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;

  /// Бренды
  @JsonKey(name: "brands")
  List<FeedPromotionsBrandItemResponse>? get brands =>
      throw _privateConstructorUsedError;

  /// Категории
  @JsonKey(name: "categories")
  List<FeedPromotionsCategoryItemResponse>? get categories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedPromotionsItemResponseCopyWith<FeedPromotionsItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedPromotionsItemResponseCopyWith<$Res> {
  factory $FeedPromotionsItemResponseCopyWith(FeedPromotionsItemResponse value,
          $Res Function(FeedPromotionsItemResponse) then) =
      _$FeedPromotionsItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "caption")
          String? caption,
      @JsonKey(name: "brands")
          List<FeedPromotionsBrandItemResponse>? brands,
      @JsonKey(name: "categories")
          List<FeedPromotionsCategoryItemResponse>? categories});
}

/// @nodoc
class _$FeedPromotionsItemResponseCopyWithImpl<$Res>
    implements $FeedPromotionsItemResponseCopyWith<$Res> {
  _$FeedPromotionsItemResponseCopyWithImpl(this._value, this._then);

  final FeedPromotionsItemResponse _value;
  // ignore: unused_field
  final $Res Function(FeedPromotionsItemResponse) _then;

  @override
  $Res call({
    Object? caption = freezed,
    Object? brands = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      caption: caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      brands: brands == freezed
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<FeedPromotionsBrandItemResponse>?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<FeedPromotionsCategoryItemResponse>?,
    ));
  }
}

/// @nodoc
abstract class $PromotionsItemCopyWith<$Res>
    implements $FeedPromotionsItemResponseCopyWith<$Res> {
  factory $PromotionsItemCopyWith(
          PromotionsItem value, $Res Function(PromotionsItem) then) =
      _$PromotionsItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "caption")
          String? caption,
      @JsonKey(name: "brands")
          List<FeedPromotionsBrandItemResponse>? brands,
      @JsonKey(name: "categories")
          List<FeedPromotionsCategoryItemResponse>? categories});
}

/// @nodoc
class _$PromotionsItemCopyWithImpl<$Res>
    extends _$FeedPromotionsItemResponseCopyWithImpl<$Res>
    implements $PromotionsItemCopyWith<$Res> {
  _$PromotionsItemCopyWithImpl(
      PromotionsItem _value, $Res Function(PromotionsItem) _then)
      : super(_value, (v) => _then(v as PromotionsItem));

  @override
  PromotionsItem get _value => super._value as PromotionsItem;

  @override
  $Res call({
    Object? caption = freezed,
    Object? brands = freezed,
    Object? categories = freezed,
  }) {
    return _then(PromotionsItem(
      caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      brands == freezed
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<FeedPromotionsBrandItemResponse>?,
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<FeedPromotionsCategoryItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionsItem implements PromotionsItem {
  const _$PromotionsItem(
      @JsonKey(name: "caption") this.caption,
      @JsonKey(name: "brands") this.brands,
      @JsonKey(name: "categories") this.categories);

  factory _$PromotionsItem.fromJson(Map<String, dynamic> json) =>
      _$$PromotionsItemFromJson(json);

  @override

  /// Подпись
  @JsonKey(name: "caption")
  final String? caption;
  @override

  /// Бренды
  @JsonKey(name: "brands")
  final List<FeedPromotionsBrandItemResponse>? brands;
  @override

  /// Категории
  @JsonKey(name: "categories")
  final List<FeedPromotionsCategoryItemResponse>? categories;

  @override
  String toString() {
    return 'FeedPromotionsItemResponse(caption: $caption, brands: $brands, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PromotionsItem &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.brands, brands) ||
                const DeepCollectionEquality().equals(other.brands, brands)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(brands) ^
      const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  $PromotionsItemCopyWith<PromotionsItem> get copyWith =>
      _$PromotionsItemCopyWithImpl<PromotionsItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionsItemToJson(this);
  }
}

abstract class PromotionsItem implements FeedPromotionsItemResponse {
  const factory PromotionsItem(
          @JsonKey(name: "caption")
              String? caption,
          @JsonKey(name: "brands")
              List<FeedPromotionsBrandItemResponse>? brands,
          @JsonKey(name: "categories")
              List<FeedPromotionsCategoryItemResponse>? categories) =
      _$PromotionsItem;

  factory PromotionsItem.fromJson(Map<String, dynamic> json) =
      _$PromotionsItem.fromJson;

  @override

  /// Подпись
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;
  @override

  /// Бренды
  @JsonKey(name: "brands")
  List<FeedPromotionsBrandItemResponse>? get brands =>
      throw _privateConstructorUsedError;
  @override

  /// Категории
  @JsonKey(name: "categories")
  List<FeedPromotionsCategoryItemResponse>? get categories =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PromotionsItemCopyWith<PromotionsItem> get copyWith =>
      throw _privateConstructorUsedError;
}
