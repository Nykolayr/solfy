import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'brands_brand_nearest_shop_item_response.freezed.dart';
part 'brands_brand_nearest_shop_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class BrandsBrandNearestShopItemResponse with _$BrandsBrandNearestShopItemResponse {
  const factory BrandsBrandNearestShopItemResponse(
    /// Latitude
    @JsonKey(name: "longitude") double? longitude,

    /// Longitude
    @JsonKey(name: "latitude") double? latitude,
  ) = NearestShop;

  factory BrandsBrandNearestShopItemResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandsBrandNearestShopItemResponseFromJson(json);
}
