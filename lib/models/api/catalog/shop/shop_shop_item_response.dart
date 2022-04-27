import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/shop/shop_brand_item_response.dart';
import 'package:solfy_flutter/models/api/catalog/shop/shop_condition_item_response.dart';
import 'package:solfy_flutter/models/api/catalog/shop/shop_geo_item_response.dart';
import 'package:solfy_flutter/models/api/catalog/shop/shop_worktime_item_response.dart';

part 'shop_shop_item_response.freezed.dart';
part 'shop_shop_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ShopShopItemResponse with _$ShopShopItemResponse {
  const factory ShopShopItemResponse(
    /// Идентификатор магазина
    @JsonKey(name: "id") int? id,

    /// Гео-данные магазина
    @JsonKey(name: "geo") ShopGeoItemResponse? geo,

    /// Бренд, к которому относится магазин
    @JsonKey(name: "brand") ShopBrandItemResponse? brand,

    /// Краткое описание магазина
    @JsonKey(name: "short_description") String? shortDescription,

    /// Ссылка на логотип магазина
    @JsonKey(name: "logo") String? logo,

    /// Адрес магазина
    @JsonKey(name: "address") String? address,

    /// Рабочее время магазина
    @JsonKey(name: "work_time") List<ShopWorktimeItemResponse>? workTime,

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

    /// Состояние рассрочек
    @JsonKey(name: "conditions") List<ShopConditionItemResponse>? conditions,
  ) = ShopItem;

  factory ShopShopItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopShopItemResponseFromJson(json);
}
