import 'package:freezed_annotation/freezed_annotation.dart';

part 'shops_geo_item_response.freezed.dart';
part 'shops_geo_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ShopsGeoItemResponse with _$ShopsGeoItemResponse {
  const factory ShopsGeoItemResponse(
    /// Название региона
    @JsonKey(name: "title") String? title,

    /// Название города (подрегиона)
    @JsonKey(name: "subtitle") String? subtitle,
  ) = GeoItem;

  factory ShopsGeoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopsGeoItemResponseFromJson(json);
}
