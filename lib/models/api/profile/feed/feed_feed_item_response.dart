import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/entities/feeds/feed_item_view_model.dart';

part 'feed_feed_item_response.freezed.dart';
part 'feed_feed_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class FeedFeedItemResponse with _$FeedFeedItemResponse {
  const factory FeedFeedItemResponse(
    /// Идентификатор новости
    @JsonKey(name: "id") int? id,

    /// Ссылка на логотип бренда
    @JsonKey(name: "brand_logo") String? brandLogo,

    /// Ссылка на изображение новости
    @JsonKey(name: "image") String? image,

    /// Заголовок новости
    @JsonKey(name: "title") String? title,

    /// Краткое описание новости (подзаголовок)
    @JsonKey(name: "short_description") String? shortDescription,

    /// Описание новости
    @JsonKey(name: "description") String? description,

    /// Дата создания новости
    @JsonKey(name: "created_at") String? createdAt,
  ) = FeedItem;

  factory FeedFeedItemResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedFeedItemResponseFromJson(json);
}

extension FeedMapper on FeedFeedItemResponse {
  FeedItemViewModel getModel() {
    return FeedItemViewModel(
      id: this.id,
      brandLogo: this.brandLogo,
      image: this.image,
      title: this.title,
      shortDescription: this.shortDescription,
      description: this.description,
      createdAt: this.createdAt,
    );
  }
}
