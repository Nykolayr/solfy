import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_promotions_category_item_response.freezed.dart';
part 'feed_promotions_category_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class FeedPromotionsCategoryItemResponse with _$FeedPromotionsCategoryItemResponse {
  const factory FeedPromotionsCategoryItemResponse(
    /// Идентификатор категории
    @JsonKey(name: "id") int? id,

    /// Название категории
    @JsonKey(name: "name") String? name,

    /// Ссылка на иконку категории
    @JsonKey(name: "icon") String? icon,
  ) = CategoryItem;

  factory FeedPromotionsCategoryItemResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedPromotionsCategoryItemResponseFromJson(json);
}
