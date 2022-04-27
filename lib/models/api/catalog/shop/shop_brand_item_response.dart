import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_brand_item_response.freezed.dart';
part 'shop_brand_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ShopBrandItemResponse with _$ShopBrandItemResponse {
  const factory ShopBrandItemResponse(
    /// Идентификатор бренда
    @JsonKey(name: "id") int? id,

    /// Название бренда
    @JsonKey(name: "name") String? name,
  ) = BrandItem;

  factory ShopBrandItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopBrandItemResponseFromJson(json);
}
