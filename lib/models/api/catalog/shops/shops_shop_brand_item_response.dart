import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shops_shop_brand_item_response.freezed.dart';
part 'shops_shop_brand_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ShopsShopBrandItemResponse with _$ShopsShopBrandItemResponse {
  const factory ShopsShopBrandItemResponse(
    /// Идентификатор бренда
    @JsonKey(name: "id") int? id,

    /// Название бренда
    @JsonKey(name: "name") String? name,
  ) = BrandItem;

  factory ShopsShopBrandItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopsShopBrandItemResponseFromJson(json);
}
