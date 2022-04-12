// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoriesViewModelTearOff {
  const _$CategoriesViewModelTearOff();

  Categories call(
      @JsonKey(name: "categories") List<CategoryViewModel> categories,
      @JsonKey(name: "info") CatalogInfoViewModel info) {
    return Categories(
      categories,
      info,
    );
  }
}

/// @nodoc
const $CategoriesViewModel = _$CategoriesViewModelTearOff();

/// @nodoc
mixin _$CategoriesViewModel {
  /// Категории
  @JsonKey(name: "categories")
  List<CategoryViewModel> get categories => throw _privateConstructorUsedError;

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  CatalogInfoViewModel get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesViewModelCopyWith<CategoriesViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesViewModelCopyWith<$Res> {
  factory $CategoriesViewModelCopyWith(
          CategoriesViewModel value, $Res Function(CategoriesViewModel) then) =
      _$CategoriesViewModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "categories") List<CategoryViewModel> categories,
      @JsonKey(name: "info") CatalogInfoViewModel info});

  $CatalogInfoViewModelCopyWith<$Res> get info;
}

/// @nodoc
class _$CategoriesViewModelCopyWithImpl<$Res>
    implements $CategoriesViewModelCopyWith<$Res> {
  _$CategoriesViewModelCopyWithImpl(this._value, this._then);

  final CategoriesViewModel _value;
  // ignore: unused_field
  final $Res Function(CategoriesViewModel) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryViewModel>,
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
abstract class $CategoriesCopyWith<$Res>
    implements $CategoriesViewModelCopyWith<$Res> {
  factory $CategoriesCopyWith(
          Categories value, $Res Function(Categories) then) =
      _$CategoriesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "categories") List<CategoryViewModel> categories,
      @JsonKey(name: "info") CatalogInfoViewModel info});

  @override
  $CatalogInfoViewModelCopyWith<$Res> get info;
}

/// @nodoc
class _$CategoriesCopyWithImpl<$Res>
    extends _$CategoriesViewModelCopyWithImpl<$Res>
    implements $CategoriesCopyWith<$Res> {
  _$CategoriesCopyWithImpl(Categories _value, $Res Function(Categories) _then)
      : super(_value, (v) => _then(v as Categories));

  @override
  Categories get _value => super._value as Categories;

  @override
  $Res call({
    Object? categories = freezed,
    Object? info = freezed,
  }) {
    return _then(Categories(
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryViewModel>,
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CatalogInfoViewModel,
    ));
  }
}

/// @nodoc

class _$Categories implements Categories {
  const _$Categories(@JsonKey(name: "categories") this.categories,
      @JsonKey(name: "info") this.info);

  @override

  /// Категории
  @JsonKey(name: "categories")
  final List<CategoryViewModel> categories;
  @override

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  final CatalogInfoViewModel info;

  @override
  String toString() {
    return 'CategoriesViewModel(categories: $categories, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Categories &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $CategoriesCopyWith<Categories> get copyWith =>
      _$CategoriesCopyWithImpl<Categories>(this, _$identity);
}

abstract class Categories implements CategoriesViewModel {
  const factory Categories(
      @JsonKey(name: "categories") List<CategoryViewModel> categories,
      @JsonKey(name: "info") CatalogInfoViewModel info) = _$Categories;

  @override

  /// Категории
  @JsonKey(name: "categories")
  List<CategoryViewModel> get categories => throw _privateConstructorUsedError;
  @override

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  CatalogInfoViewModel get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CategoriesCopyWith<Categories> get copyWith =>
      throw _privateConstructorUsedError;
}
