import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sms_confirm_response.freezed.dart';
part 'sms_confirm_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class SmsConfirmResponse with _$SmsConfirmResponse {
  const factory SmsConfirmResponse(
    /// Следующая страница для редиректа
    @JsonKey(name: "target") String? target,
  ) = SmsConfirmResp;

  factory SmsConfirmResponse.fromJson(Map<String, dynamic> json) =>
      _$SmsConfirmResponseFromJson(json);
}
