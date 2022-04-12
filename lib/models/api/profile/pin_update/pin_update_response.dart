import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pin_update_response.freezed.dart';
part 'pin_update_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class PinUpdateResponse with _$PinUpdateResponse {
  const factory PinUpdateResponse(
    /// Успешно ли сменили пин-код
    @JsonKey(name: "valid") bool? valid,
  ) = PinUpdateResp;

  factory PinUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$PinUpdateResponseFromJson(json);
}
