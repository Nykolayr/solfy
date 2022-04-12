import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pin_confirm_response.freezed.dart';
part 'pin_confirm_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class PinConfirmResponse with _$PinConfirmResponse {
  const factory PinConfirmResponse(
    /// Access Token
    @JsonKey(name: "access_token") String? accessToken,

    /// Refresh Token
    @JsonKey(name: "refreshToken") String? refreshToken,
  ) = PinConfirmResp;

  factory PinConfirmResponse.fromJson(Map<String, dynamic> json) =>
      _$PinConfirmResponseFromJson(json);
}
