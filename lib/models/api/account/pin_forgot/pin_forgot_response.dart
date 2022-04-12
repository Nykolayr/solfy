import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pin_forgot_response.freezed.dart';
part 'pin_forgot_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class PinForgotResponse with _$PinForgotResponse {
  const factory PinForgotResponse(
    /// Валидный ли запрос
    @JsonKey(name: "valid") bool? valid,

    /// Сообщение
    @JsonKey(name: "message") String? message,
  ) = PinForgotResp;

  factory PinForgotResponse.fromJson(Map<String, dynamic> json) =>
      _$PinForgotResponseFromJson(json);
}
