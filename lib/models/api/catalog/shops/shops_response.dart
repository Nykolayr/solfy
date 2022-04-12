import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/helpers/distance_helper.dart';
import 'package:solfy_flutter/models/api/catalog/shops/shops_info_item_response.dart';
import 'package:solfy_flutter/models/api/catalog/shops/shops_shop_item_response.dart';
import 'package:solfy_flutter/models/entities/catalog/catalog_info_view_model.dart';
import 'package:solfy_flutter/models/entities/wallet/geo_view_model.dart';
import 'package:solfy_flutter/models/entities/wallet/shop_brand_view_model.dart';
import 'package:solfy_flutter/models/entities/wallet/shop_view_model.dart';
import 'package:solfy_flutter/models/entities/wallet/shops_view_model.dart';

part 'shops_response.freezed.dart';
part 'shops_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ShopsResponse with _$ShopsResponse {
  const factory ShopsResponse(
    /// Магазины
    @JsonKey(name: "shops") List<ShopsShopItemResponse>? shops,

    /// Информация о количестве магазинов и гео
    @JsonKey(name: "info") ShopsInfoItemResponse? info,
  ) = ShopsResp;

  factory ShopsResponse.fromJson(Map<String, dynamic> json) => _$ShopsResponseFromJson(json);
}

extension ShopsMapper on ShopsResponse {
  Future<ShopsViewModel> getModel() async {
    final info = CatalogInfoViewModel(
      this.info?.total,
      this.info?.geo?.title,
      this.info?.geo?.subtitle,
    );
    final tempShops = this.shops?.map((e) async => ShopViewModel(
              id: e.id,
              geo: GeoViewModel(e.geo?.placeId, e.geo?.longitude, e.geo?.latitude),
              brand: ShopBrandViewModel(e.brand?.id, e.brand?.name),
              shortDescription: e.shortDescription,
              logo: e.logo,
              address: e.address,
              site: e.site,
              type: e.type,
              phones: e.phones,
              ranges: e.ranges,
              rangesMaximal: e.rangesMaximal,
              rangesMinimal: e.rangesMinimal,
              isPromotional: e.isPromotional,
              conditionsCount: e.conditionsCount,
              currentWorkTime: e.workTime,
              distance: e.geo?.latitude != null && e.geo?.longitude != null
                  ? await DistanceHelper.getDistanceFromLatLong(e.geo!.latitude!, e.geo!.longitude!)
                  : null,
            )) ??
        [];
    final shops = await Future.wait(tempShops);
    return ShopsViewModel(shops.toList(), info);
  }
}
