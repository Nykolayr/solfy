import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'email_send_response.freezed.dart';
part 'email_send_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class EmailSendResponse with _$EmailSendResponse {
  const factory EmailSendResponse(
    /// Следующая страница для редиректа
    @JsonKey(name: "target") String? target,
  ) = EmailSendResp;

  factory EmailSendResponse.fromJson(Map<String, dynamic> json) =>
      _$EmailSendResponseFromJson(json);
}
