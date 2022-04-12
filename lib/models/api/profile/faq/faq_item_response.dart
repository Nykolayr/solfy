import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/profile/faq/faq_group_item_response.dart';
import 'package:solfy_flutter/models/api/profile/faq/faq_question_item_response.dart';

part 'faq_item_response.freezed.dart';
part 'faq_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class FaqItemResponse with _$FaqItemResponse {
  const factory FaqItemResponse(
    /// Группы
    @JsonKey(name: "groups") List<FaqGroupItemResponse>? groups,

    /// Вопросы
    @JsonKey(name: "entities") List<FaqQuestionItemResponse>? questions,
  ) = FaqItem;

  factory FaqItemResponse.fromJson(Map<String, dynamic> json) => _$FaqItemResponseFromJson(json);
}
