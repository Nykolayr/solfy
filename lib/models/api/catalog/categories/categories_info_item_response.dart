import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/categories/categories_geo_item_response.dart';

part 'categories_info_item_response.freezed.dart';
part 'categories_info_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class CategoriesInfoItemResponse with _$CategoriesInfoItemResponse {
  const factory CategoriesInfoItemResponse(
    /// Общее количество магазинов
    @JsonKey(name: "total") String? total,

    /// Гео-информация
    @JsonKey(name: "geo") CategoriesGeoItemResponse? geo,
  ) = InfoItem;

  factory CategoriesInfoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesInfoItemResponseFromJson(json);
}
