import 'package:freezed_annotation/freezed_annotation.dart';

part 'sms_send_response.freezed.dart';
part 'sms_send_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class SmsSendResponse with _$SmsSendResponse {
  const factory SmsSendResponse(
    /// Токен текущей сессии (для онбординга)
    @JsonKey(name: "session_token") String? sessionToken,

    /// Идентификатор сессии
    @JsonKey(name: "session_id") String? sessionId,

    /// Следующая страница для редиректа
    @JsonKey(name: "target") String? target,

    /// Сообщение
    @JsonKey(name: "message") String? message,
  ) = SmsSendResp;

  factory SmsSendResponse.fromJson(Map<String, dynamic> json) => _$SmsSendResponseFromJson(json);
}
