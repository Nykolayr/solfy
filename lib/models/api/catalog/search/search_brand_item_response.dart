import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/brand/brand_condition_item_response.dart';

part 'search_brand_item_response.freezed.dart';
part 'search_brand_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class SearchBrandItemResponse with _$SearchBrandItemResponse {
  const factory SearchBrandItemResponse(
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
    @JsonKey(name: "distance") int? distance,
  ) = BrandItem;

  factory SearchBrandItemResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchBrandItemResponseFromJson(json);
}
