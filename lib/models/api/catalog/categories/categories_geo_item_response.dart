import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_geo_item_response.freezed.dart';
part 'categories_geo_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class CategoriesGeoItemResponse with _$CategoriesGeoItemResponse {
  const factory CategoriesGeoItemResponse(
    /// Название региона
    @JsonKey(name: "title") String? title,

    /// Название города (подрегиона)
    @JsonKey(name: "subtitle") String? subtitle,
  ) = GeoItem;

  factory CategoriesGeoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesGeoItemResponseFromJson(json);
}
