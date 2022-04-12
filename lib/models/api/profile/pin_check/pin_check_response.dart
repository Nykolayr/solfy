import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pin_check_response.freezed.dart';
part 'pin_check_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class PinCheckResponse with _$PinCheckResponse {
  const factory PinCheckResponse(
    /// Валидный ли пин-код
    @JsonKey(name: "valid") bool? valid,
  ) = PinCheckResp;

  factory PinCheckResponse.fromJson(Map<String, dynamic> json) => _$PinCheckResponseFromJson(json);
}
