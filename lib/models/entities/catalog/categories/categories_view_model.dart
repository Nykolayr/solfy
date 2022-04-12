import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/entities/catalog/catalog_info_view_model.dart';
import 'package:solfy_flutter/models/entities/catalog/categories/category_view_model.dart';

part 'categories_view_model.freezed.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class CategoriesViewModel with _$CategoriesViewModel {
  const factory CategoriesViewModel(
    /// Категории
    @JsonKey(name: "categories") List<CategoryViewModel> categories,

    /// Информация о количестве магазинов и гео
    @JsonKey(name: "info") CatalogInfoViewModel info,
  ) = Categories;
}
