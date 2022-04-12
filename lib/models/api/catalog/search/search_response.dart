import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/search/search_brand_item_response.dart';
import 'package:solfy_flutter/models/api/catalog/search/search_category_item_response.dart';

part 'search_response.freezed.dart';
part 'search_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class SearchResponse with _$SearchResponse {
  const factory SearchResponse(
    /// Категории
    @JsonKey(name: "categories") List<SearchCategoryItemResponse>? categories,

    /// Коллекции
    @JsonKey(name: "brands") List<SearchBrandItemResponse>? brands,
  ) = SearchResp;

  factory SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);
}
