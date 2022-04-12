import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/profile/feeds/feeds_feed_item_response.dart';

part 'feeds_response.freezed.dart';
part 'feeds_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class FeedsResponse with _$FeedsResponse {
  const factory FeedsResponse(
    /// Идентификатор новости
    @JsonKey(name: "feeds") List<FeedsFeedItemResponse>? feeds,
  ) = FeedsResp;

  factory FeedsResponse.fromJson(Map<String, dynamic> json) => _$FeedsResponseFromJson(json);
}
