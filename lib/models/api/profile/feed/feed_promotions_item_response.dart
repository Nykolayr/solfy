import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/profile/feed/feed_promotions_brand_item_response.dart';
import 'package:solfy_flutter/models/api/profile/feed/feed_promotions_category_item_response.dart';

part 'feed_promotions_item_response.freezed.dart';
part 'feed_promotions_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class FeedPromotionsItemResponse with _$FeedPromotionsItemResponse {
  const factory FeedPromotionsItemResponse(
    /// Подпись
    @JsonKey(name: "caption") String? caption,

    /// Бренды
    @JsonKey(name: "brands") List<FeedPromotionsBrandItemResponse>? brands,

    /// Категории
    @JsonKey(name: "categories") List<FeedPromotionsCategoryItemResponse>? categories,
  ) = PromotionsItem;

  factory FeedPromotionsItemResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedPromotionsItemResponseFromJson(json);
}
