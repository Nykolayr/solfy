import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/wallet/operation/operation_geo_item_response.dart';

part 'operation_shop_item_response.freezed.dart';
part 'operation_shop_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class OperationShopItemResponse with _$OperationShopItemResponse {
  const factory OperationShopItemResponse(
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "site") String? site,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "geo") OperationGeoItemResponse? geo,
  ) = ShopItem;

  factory OperationShopItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OperationShopItemResponseFromJson(json);
}
