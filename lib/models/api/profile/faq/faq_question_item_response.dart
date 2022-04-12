import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'faq_question_item_response.freezed.dart';
part 'faq_question_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class FaqQuestionItemResponse with _$FaqQuestionItemResponse {
  const factory FaqQuestionItemResponse(
    /// Идентификатор группы
    @JsonKey(name: "group_id") int? groupId,

    /// Вопрос
    @JsonKey(name: "question") String? question,

    /// Ответ
    @JsonKey(name: "answer") String? answer,
  ) = QuestionItem;

  factory FaqQuestionItemResponse.fromJson(Map<String, dynamic> json) =>
      _$FaqQuestionItemResponseFromJson(json);
}
