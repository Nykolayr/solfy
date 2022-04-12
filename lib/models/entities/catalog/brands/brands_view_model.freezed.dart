// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brands_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BrandsViewModelTearOff {
  const _$BrandsViewModelTearOff();

  Brands call(
      @JsonKey(name: "brands") List<BrandItemViewModel> brands,
      @JsonKey(name: "feeds") List<FeedItemViewModel> feeds,
      @JsonKey(name: "info") CatalogInfoViewModel info) {
    return Brands(
      brands,
      feeds,
      info,
    );
  }
}

/// @nodoc
const $BrandsViewModel = _$BrandsViewModelTearOff();

/// @nodoc
mixin _$BrandsViewModel {
  /// Бренды
  @JsonKey(name: "brands")
  List<BrandItemViewModel> get brands => throw _privateConstructorUsedError;

  /// Новости
  @JsonKey(name: "feeds")
  List<FeedItemViewModel> get feeds => throw _privateConstructorUsedError;

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  CatalogInfoViewModel get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrandsViewModelCopyWith<BrandsViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsViewModelCopyWith<$Res> {
  factory $BrandsViewModelCopyWith(
          BrandsViewModel value, $Res Function(BrandsViewModel) then) =
      _$BrandsViewModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "brands") List<BrandItemViewModel> brands,
      @JsonKey(name: "feeds") List<FeedItemViewModel> feeds,
      @JsonKey(name: "info") CatalogInfoViewModel info});

  $CatalogInfoViewModelCopyWith<$Res> get info;
}

/// @nodoc
class _$BrandsViewModelCopyWithImpl<$Res>
    implements $BrandsViewModelCopyWith<$Res> {
  _$BrandsViewModelCopyWithImpl(this._value, this._then);

  final BrandsViewModel _value;
  // ignore: unused_field
  final $Res Function(BrandsViewModel) _then;

  @override
  $Res call({
    Object? brands = freezed,
    Object? feeds = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      brands: brands == freezed
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandItemViewModel>,
      feeds: feeds == freezed
          ? _value.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<FeedItemViewModel>,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CatalogInfoViewModel,
    ));
  }

  @override
  $CatalogInfoViewModelCopyWith<$Res> get info {
    return $CatalogInfoViewModelCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class $BrandsCopyWith<$Res> implements $BrandsViewModelCopyWith<$Res> {
  factory $BrandsCopyWith(Brands value, $Res Function(Brands) then) =
      _$BrandsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "brands") List<BrandItemViewModel> brands,
      @JsonKey(name: "feeds") List<FeedItemViewModel> feeds,
      @JsonKey(name: "info") CatalogInfoViewModel info});

  @override
  $CatalogInfoViewModelCopyWith<$Res> get info;
}

/// @nodoc
class _$BrandsCopyWithImpl<$Res> extends _$BrandsViewModelCopyWithImpl<$Res>
    implements $BrandsCopyWith<$Res> {
  _$BrandsCopyWithImpl(Brands _value, $Res Function(Brands) _then)
      : super(_value, (v) => _then(v as Brands));

  @override
  Brands get _value => super._value as Brands;

  @override
  $Res call({
    Object? brands = freezed,
    Object? feeds = freezed,
    Object? info = freezed,
  }) {
    return _then(Brands(
      brands == freezed
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandItemViewModel>,
      feeds == freezed
          ? _value.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<FeedItemViewModel>,
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CatalogInfoViewModel,
    ));
  }
}

/// @nodoc

class _$Brands implements Brands {
  const _$Brands(@JsonKey(name: "brands") this.brands,
      @JsonKey(name: "feeds") this.feeds, @JsonKey(name: "info") this.info);

  @override

  /// Бренды
  @JsonKey(name: "brands")
  final List<BrandItemViewModel> brands;
  @override

  /// Новости
  @JsonKey(name: "feeds")
  final List<FeedItemViewModel> feeds;
  @override

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  final CatalogInfoViewModel info;

  @override
  String toString() {
    return 'BrandsViewModel(brands: $brands, feeds: $feeds, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Brands &&
            (identical(other.brands, brands) ||
                const DeepCollectionEquality().equals(other.brands, brands)) &&
            (identical(other.feeds, feeds) ||
                const DeepCollectionEquality().equals(other.feeds, feeds)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(brands) ^
      const DeepCollectionEquality().hash(feeds) ^
      const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $BrandsCopyWith<Brands> get copyWith =>
      _$BrandsCopyWithImpl<Brands>(this, _$identity);
}

abstract class Brands implements BrandsViewModel {
  const factory Brands(
      @JsonKey(name: "brands") List<BrandItemViewModel> brands,
      @JsonKey(name: "feeds") List<FeedItemViewModel> feeds,
      @JsonKey(name: "info") CatalogInfoViewModel info) = _$Brands;

  @override

  /// Бренды
  @JsonKey(name: "brands")
  List<BrandItemViewModel> get brands => throw _privateConstructorUsedError;
  @override

  /// Новости
  @JsonKey(name: "feeds")
  List<FeedItemViewModel> get feeds => throw _privateConstructorUsedError;
  @override

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  CatalogInfoViewModel get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BrandsCopyWith<Brands> get copyWith => throw _privateConstructorUsedError;
}
