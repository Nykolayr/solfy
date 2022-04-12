import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_category_item_response.freezed.dart';
part 'search_category_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class SearchCategoryItemResponse with _$SearchCategoryItemResponse {
  const factory SearchCategoryItemResponse(
    /// Идентификатор категории
    @JsonKey(name: "id") int? id,

    /// Название категории
    @JsonKey(name: "name") String? name,

    /// Ссылка на иконку категории
    @JsonKey(name: "icon") String? icon,
  ) = CategoryItem;

  factory SearchCategoryItemResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchCategoryItemResponseFromJson(json);
}
