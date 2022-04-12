import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'operation_payment_item_response.freezed.dart';
part 'operation_payment_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class OperationPaymentItemResponse with _$OperationPaymentItemResponse {
  const factory OperationPaymentItemResponse(
    @JsonKey(name: "caption") String? caption,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "amount") String? amount,
    @JsonKey(name: "is_repaymented") bool? isRepaymented,
    @JsonKey(name: "is_current") bool? isCurrent,
  ) = PaymentItem;

  factory OperationPaymentItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OperationPaymentItemResponseFromJson(json);
}
