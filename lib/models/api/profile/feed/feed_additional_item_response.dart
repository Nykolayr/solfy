import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/profile/feed/feed_additional_feed_item_response.dart';

part 'feed_additional_item_response.freezed.dart';
part 'feed_additional_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class FeedAdditionalItemResponse with _$FeedAdditionalItemResponse {
  const factory FeedAdditionalItemResponse(
    /// Подпись
    @JsonKey(name: "caption") String? caption,

    /// Новости
    @JsonKey(name: "feeds") List<FeedAdditionalFeedItemResponse>? feeds,
  ) = AdditionalItem;

  factory FeedAdditionalItemResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedAdditionalItemResponseFromJson(json);
}
