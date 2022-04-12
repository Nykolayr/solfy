import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pin_set_response.freezed.dart';
part 'pin_set_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class PinSetResponse with _$PinSetResponse {
  const factory PinSetResponse(
    /// Следующая страница для редиректа
    @JsonKey(name: "target") String? target,
  ) = PinSetResp;

  factory PinSetResponse.fromJson(Map<String, dynamic> json) => _$PinSetResponseFromJson(json);
}
