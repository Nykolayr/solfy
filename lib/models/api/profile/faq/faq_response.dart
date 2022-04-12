import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/profile/faq/faq_item_response.dart';

part 'faq_response.freezed.dart';
part 'faq_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class FaqResponse with _$FaqResponse {
  const factory FaqResponse(
    /// Faq
    @JsonKey(name: "faq") FaqItemResponse? faq,
  ) = FaqResp;

  factory FaqResponse.fromJson(Map<String, dynamic> json) => _$FaqResponseFromJson(json);
}
