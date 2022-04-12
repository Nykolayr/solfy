import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'feed_item_view_model.freezed.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class FeedItemViewModel with _$FeedItemViewModel {
  const factory FeedItemViewModel({
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

    /// Описание
    @JsonKey(name: "description") String? description,

    /// Создан
    @JsonKey(name: "created_at") String? createdAt,
  }) = FeedItem;
}
