import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/brand/brand_condition_item_response.dart';
import 'package:solfy_flutter/models/api/catalog/brands/brands_brand_nearest_shop_item_response.dart';

part 'brand_item_view_model.freezed.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class BrandItemViewModel with _$BrandItemViewModel {
  const factory BrandItemViewModel(
    /// Идентификатор бренда
    @JsonKey(name: "id") int? id,

    /// Название бренда
    @JsonKey(name: "name") String? name,

    /// Краткое описание бренда
    @JsonKey(name: "short_description") String? shortDescription,

    /// Цвет бренда
    @JsonKey(name: "color") String? color,

    /// Ссылка на логотип бренда
    @JsonKey(name: "logo") String? logo,

    /// Диапазоны рассрочки
    @JsonKey(name: "ranges") String? ranges,

    /// Минимальный срок рассрочки
    @JsonKey(name: "ranges_minimal") int? rangesMinimal,

    /// Максимальный срок рассрочки
    @JsonKey(name: "ranges_maximal") int? rangesMaximal,

    ///
    @JsonKey(name: "is_promotional") bool? isPromotional,

    /// Количество состояний сроков рассрочки
    @JsonKey(name: "conditions_count") int? conditionsCount,

    /// Сроки рассрочки
    @JsonKey(name: "conditions") List<BrandConditionItemResponse>? conditions,

    /// Расстояние до магазина
    @JsonKey(name: "distance") String? distance,

    /// Гео ближайшего магазина
    @JsonKey(name: "nearest_shop") BrandsBrandNearestShopItemResponse? nearestShopGeo,
  ) = BrandItem;
}
