import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shop_geo_item_response.freezed.dart';
part 'shop_geo_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ShopGeoItemResponse with _$ShopGeoItemResponse {
  const factory ShopGeoItemResponse(
    /// Идентификатор региона
    @JsonKey(name: "place_id") int? placeId,
    @JsonKey(name: "latitude") double? latitude,
    @JsonKey(name: "longitude") double? longitude,
  ) = GeoItem;

  factory ShopGeoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopGeoItemResponseFromJson(json);
}
