import 'package:freezed_annotation/freezed_annotation.dart';

part 'refillment_response.freezed.dart';
part 'refillment_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class RefillmentResponse with _$RefillmentResponse {
  const factory RefillmentResponse(
    /// Успешно ли совершили платеж
    @JsonKey(name: "valid") bool? valid,
  ) = RefillmentResp;

  factory RefillmentResponse.fromJson(Map<String, dynamic> json) =>
      _$RefillmentResponseFromJson(json);
}
