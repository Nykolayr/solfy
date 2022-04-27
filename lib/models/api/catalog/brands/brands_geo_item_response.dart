import 'package:freezed_annotation/freezed_annotation.dart';

part 'brands_geo_item_response.freezed.dart';
part 'brands_geo_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class BrandsGeoItemResponse with _$BrandsGeoItemResponse {
  const factory BrandsGeoItemResponse(
    /// Название региона
    @JsonKey(name: "title") String? title,

    /// Название города (подрегиона)
    @JsonKey(name: "subtitle") String? subtitle,
  ) = GeoItem;

  factory BrandsGeoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandsGeoItemResponseFromJson(json);
}
