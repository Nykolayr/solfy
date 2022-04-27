import 'package:freezed_annotation/freezed_annotation.dart';

part 'comfortable_payment_update_response.freezed.dart';
part 'comfortable_payment_update_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ComfortablePaymentUpdateResponse with _$ComfortablePaymentUpdateResponse {
  const factory ComfortablePaymentUpdateResponse(
    /// Успешно ли совершили обновили комфортный платеж
    @JsonKey(name: "valid") bool? valid,
  ) = ComfortablePaymentUpdateResp;

  factory ComfortablePaymentUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$ComfortablePaymentUpdateResponseFromJson(json);
}
