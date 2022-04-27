import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation_payment_charts_item_response.freezed.dart';
part 'operation_payment_charts_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class OperationPaymentChartsItemResponse with _$OperationPaymentChartsItemResponse {
  const factory OperationPaymentChartsItemResponse(
    @JsonKey(name: "caption") String? caption,
    @JsonKey(name: "count") int? count,
    @JsonKey(name: "repaymented_count") int? repaymentedCount,
  ) = PaymentCharts;

  factory OperationPaymentChartsItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OperationPaymentChartsItemResponseFromJson(json);
}
