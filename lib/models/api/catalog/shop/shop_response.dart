import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/helpers/distance_helper.dart';
import 'package:solfy_flutter/models/api/catalog/shop/shop_shop_item_response.dart';
import 'package:solfy_flutter/models/entities/wallet/condition_item_view_model.dart';
import 'package:solfy_flutter/models/entities/wallet/geo_view_model.dart';
import 'package:solfy_flutter/models/entities/wallet/shop_brand_view_model.dart';
import 'package:solfy_flutter/models/entities/wallet/shop_view_model.dart';
import 'package:solfy_flutter/models/entities/wallet/worktime_item_view_model.dart';

part 'shop_response.freezed.dart';
part 'shop_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ShopResponse with _$ShopResponse {
  const factory ShopResponse(
    /// Магазин
    @JsonKey(name: "shop") ShopShopItemResponse? shop,
  ) = ShopResp;

  factory ShopResponse.fromJson(Map<String, dynamic> json) => _$ShopResponseFromJson(json);
}

extension ShopsMapper on ShopResponse {
  Future<ShopViewModel> getModel() async {
    final shop = ShopViewModel(
      id: this.shop?.id,
      geo: GeoViewModel(
          this.shop?.geo?.placeId, this.shop?.geo?.longitude, this.shop?.geo?.latitude),
      brand: ShopBrandViewModel(this.shop?.brand?.id, this.shop?.brand?.name),
      shortDescription: this.shop?.shortDescription,
      logo: this.shop?.logo,
      address: this.shop?.address,
      site: this.shop?.site,
      type: this.shop?.type,
      phones: this.shop?.phones,
      ranges: this.shop?.ranges,
      rangesMaximal: this.shop?.rangesMaximal,
      rangesMinimal: this.shop?.rangesMinimal,
      workTime:
          this.shop?.workTime?.map((e) => WorktimeItemViewModel(e.time, e.day, e.status)).toList(),
      isPromotional: this.shop?.isPromotional,
      conditions:
          this.shop?.conditions?.map((e) => ConditionItemViewModel(e.title, e.term)).toList(),
      conditionsCount: this.shop?.conditionsCount,
      distance: this.shop?.geo?.latitude != null && this.shop?.geo?.longitude != null
          ? await DistanceHelper.getDistanceFromLatLong(
              this.shop!.geo!.latitude!, this.shop!.geo!.longitude!)
          : null,
    );
    return shop;
  }
}
