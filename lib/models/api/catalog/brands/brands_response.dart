import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/helpers/distance_helper.dart';
import 'package:solfy_flutter/models/api/catalog/brands/brands_brand_item_response.dart';
import 'package:solfy_flutter/models/api/catalog/brands/brands_feed_item_response.dart';
import 'package:solfy_flutter/models/api/catalog/brands/brands_info_item_response.dart';
import 'package:solfy_flutter/models/entities/catalog/brands/brand_item_view_model.dart';
import 'package:solfy_flutter/models/entities/catalog/brands/brands_view_model.dart';
import 'package:solfy_flutter/models/entities/catalog/catalog_info_view_model.dart';
import 'package:solfy_flutter/models/entities/feeds/feed_item_view_model.dart';

part 'brands_response.freezed.dart';
part 'brands_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class BrandsResponse with _$BrandsResponse {
  const factory BrandsResponse(
    /// Бренды
    @JsonKey(name: "brands") List<BrandsBrandItemResponse>? brands,

    /// Новости
    @JsonKey(name: "feeds") List<BrandsFeedItemResponse>? feeds,

    /// Информация о количестве магазинов и гео
    @JsonKey(name: "info") BrandsInfoItemResponse? info,
  ) = BrandsResp;

  factory BrandsResponse.fromJson(Map<String, dynamic> json) => _$BrandsResponseFromJson(json);
}

extension BrandsMapper on BrandsResp {
  String _getFormattedDistance(int distance) {
    if (distance > 999) {
      return (distance ~/ 1000).toString() + ' км';
    } else {
      return distance.toString() + ' м';
    }
  }

  Future<BrandsViewModel> getModel() async {
    final tempBrands = this.brands?.map((e) async => BrandItemViewModel(
              e.id,
              e.name,
              e.shortDescription,
              e.color,
              e.logo,
              e.ranges,
              e.rangesMinimal,
              e.rangesMaximal,
              e.isPromotional,
              e.conditionsCount,
              e.conditions,
              e.nearestShopGeo?.latitude != null && e.nearestShopGeo?.longitude != null
                  ? await DistanceHelper.getDistanceFromLatLong(
                      e.nearestShopGeo!.latitude!, e.nearestShopGeo!.longitude!)
                  : null,
              e.nearestShopGeo,
            )) ??
        [];
    final brands = await Future.wait(tempBrands);
    final feeds = this
        .feeds
        ?.map((e) => FeedItemViewModel(
              id: e.id,
              brandLogo: e.brandLogo,
              image: e.image,
              title: e.title,
              shortDescription: e.shortDescription,
            ))
        .toList();
    final info =
        CatalogInfoViewModel(this.info?.total, this.info?.geo?.title, this.info?.geo?.subtitle);
    return BrandsViewModel(brands.toList(), feeds ?? [], info);
  }
}
