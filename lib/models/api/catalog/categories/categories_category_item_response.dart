import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_category_item_response.freezed.dart';
part 'categories_category_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class CategoriesCategoryItemResponse with _$CategoriesCategoryItemResponse {
  const factory CategoriesCategoryItemResponse(
    /// Идентификатор категории
    @JsonKey(name: "id") int? id,

    /// Название категории
    @JsonKey(name: "name") String? name,

    /// Ссылка на иконку категории
    @JsonKey(name: "icon") String? icon,
  ) = CategoryItem;

  factory CategoriesCategoryItemResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesCategoryItemResponseFromJson(json);
}
