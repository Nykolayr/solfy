import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/entities/feeds/feed_item_view_model.dart';

part 'brands_feed_item_response.freezed.dart';
part 'brands_feed_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class BrandsFeedItemResponse with _$BrandsFeedItemResponse {
  const factory BrandsFeedItemResponse(
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
  ) = FeedItem;

  factory BrandsFeedItemResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandsFeedItemResponseFromJson(json);
}

extension FeedMapper on BrandsFeedItemResponse {
  FeedItemViewModel getModel() {
    return FeedItemViewModel(
      id: this.id,
      brandLogo: this.brandLogo,
      image: this.image,
      title: this.title,
      shortDescription: this.shortDescription,
    );
  }
}
