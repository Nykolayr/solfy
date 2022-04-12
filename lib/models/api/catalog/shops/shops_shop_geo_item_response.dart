import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shops_shop_geo_item_response.freezed.dart';
part 'shops_shop_geo_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ShopsShopGeoItemResponse with _$ShopsShopGeoItemResponse {
  const factory ShopsShopGeoItemResponse(
    /// Идентификатор региона
    @JsonKey(name: "place_id") int? placeId,
    @JsonKey(name: "latitude") double? latitude,
    @JsonKey(name: "longitude") double? longitude,
  ) = GeoItem;

  factory ShopsShopGeoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopsShopGeoItemResponseFromJson(json);
}
