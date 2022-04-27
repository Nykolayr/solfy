import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/shops/shops_shop_brand_item_response.dart';
import 'package:solfy_flutter/models/api/catalog/shops/shops_shop_geo_item_response.dart';

part 'shops_shop_item_response.freezed.dart';
part 'shops_shop_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ShopsShopItemResponse with _$ShopsShopItemResponse {
  const factory ShopsShopItemResponse(
    /// Идентификатор магазина
    @JsonKey(name: "id") int? id,

    /// Гео-данные магазина
    @JsonKey(name: "geo") ShopsShopGeoItemResponse? geo,

    /// Бренд, к которому относится магазин
    @JsonKey(name: "brand") ShopsShopBrandItemResponse? brand,

    /// Краткое описание магазина
    @JsonKey(name: "short_description") String? shortDescription,

    /// Ссылка на логотип магазина
    @JsonKey(name: "logo") String? logo,

    /// Время работы магазина
    @JsonKey(name: "work_time") String? workTime,

    /// Адрес магазина
    @JsonKey(name: "address") String? address,

    /// Ссылка на магазин
    @JsonKey(name: "site") String? site,

    /// Тип магазина (online/offline)
    @JsonKey(name: "type") String? type,

    /// Массив с телефонами магазина
    @JsonKey(name: "phones") List<String>? phones,

    /// Сроки рассрочки магазина
    @JsonKey(name: "ranges") String? ranges,

    /// Минимальный срок рассрочки магазина
    @JsonKey(name: "ranges_minimal") int? rangesMinimal,

    /// Максимальный срок рассрочки магазина
    @JsonKey(name: "ranges_maximal") int? rangesMaximal,
    @JsonKey(name: "is_promotional") bool? isPromotional,

    /// Число различных состояний рассрочек
    @JsonKey(name: "conditions_count") int? conditionsCount,

    /// Расстояние до магазина
    @JsonKey(name: "distance") int? distance,
  ) = ShopItem;

  factory ShopsShopItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopsShopItemResponseFromJson(json);
}
