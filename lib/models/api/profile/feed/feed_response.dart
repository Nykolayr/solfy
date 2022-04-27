import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/profile/feed/feed_additional_item_response.dart';
import 'package:solfy_flutter/models/api/profile/feed/feed_feed_item_response.dart';
import 'package:solfy_flutter/models/api/profile/feed/feed_promotions_item_response.dart';

part 'feed_response.freezed.dart';
part 'feed_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class FeedResponse with _$FeedResponse {
  const factory FeedResponse(
    /// Новость
    @JsonKey(name: "feed") FeedFeedItemResponse? feed,

    /// Связанные с новостью категории и бренды
    @JsonKey(name: "promotions") FeedPromotionsItemResponse? promotions,

    /// Связанные новости
    @JsonKey(name: "additional") FeedAdditionalItemResponse? additional,
  ) = FeedResp;

  factory FeedResponse.fromJson(Map<String, dynamic> json) => _$FeedResponseFromJson(json);
}
