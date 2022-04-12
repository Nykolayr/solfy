import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/categories/categories_category_item_response.dart';
import 'package:solfy_flutter/models/api/catalog/categories/categories_info_item_response.dart';
import 'package:solfy_flutter/models/entities/catalog/catalog_info_view_model.dart';
import 'package:solfy_flutter/models/entities/catalog/categories/categories_view_model.dart';
import 'package:solfy_flutter/models/entities/catalog/categories/category_view_model.dart';

part 'categories_response.freezed.dart';
part 'categories_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class CategoriesResponse with _$CategoriesResponse {
  const factory CategoriesResponse(
    /// Категории
    @JsonKey(name: "categories") List<CategoriesCategoryItemResponse>? categories,

    /// Коллекции
    @JsonKey(name: "collections") List<CategoriesCategoryItemResponse>? collections,

    /// Информация о количестве магазинов и гео
    @JsonKey(name: "info") CategoriesInfoItemResponse? info,
  ) = CategoriesResp;

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);
}

extension CategoriesMapper on CategoriesResp {
  CategoriesViewModel getModel() {
    final List<CategoryViewModel> categories = [];
    if (this.categories != null) {
      for (var categoryResponse in this.categories!) {
        categories.add(
            CategoryViewModel(categoryResponse.id, categoryResponse.name, categoryResponse.icon));
      }
    }
    if (this.collections != null) {
      for (var categoryResponse in this.collections!) {
        categories.add(
            CategoryViewModel(categoryResponse.id, categoryResponse.name, categoryResponse.icon));
      }
    }
    final info =
        CatalogInfoViewModel(this.info?.total, this.info?.geo?.title, this.info?.geo?.subtitle);
    return CategoriesViewModel(categories, info);
  }
}
