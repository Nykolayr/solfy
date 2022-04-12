import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/brand/brand_condition_item_response.dart';

part 'brand_brand_item_response.freezed.dart';
part 'brand_brand_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class BrandBrandItemResponse with _$BrandBrandItemResponse {
  const factory BrandBrandItemResponse(
    /// Идентификатор бренда
    @JsonKey(name: "id") int? id,

    /// Название бренда
    @JsonKey(name: "name") String? name,

    /// Краткое описание бренда
    @JsonKey(name: "short_description") String? shortDescription,

    /// Описание бренда
    @JsonKey(name: "description") String? description,

    /// Цвет бренда
    @JsonKey(name: "color") String? color,

    /// Ссылка на сайт бренда
    @JsonKey(name: "site") String? site,

    /// Ссылка на логотип бренда
    @JsonKey(name: "logo") String? logo,

    /// Массив с телефонами бренда
    @JsonKey(name: "phone") List<String>? phones,

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
  ) = BrandItem;

  factory BrandBrandItemResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandBrandItemResponseFromJson(json);
}
