import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_group_item_response.freezed.dart';
part 'faq_group_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class FaqGroupItemResponse with _$FaqGroupItemResponse {
  const factory FaqGroupItemResponse(
    /// Идентификатор группы
    @JsonKey(name: "id") int? id,

    /// Заголовок группы
    @JsonKey(name: "title") String? title,
  ) = GroupItem;

  factory FaqGroupItemResponse.fromJson(Map<String, dynamic> json) =>
      _$FaqGroupItemResponseFromJson(json);
}
