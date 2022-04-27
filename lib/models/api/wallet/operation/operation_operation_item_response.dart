import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/wallet/operation/operation_brand_item_response.dart';
import 'package:solfy_flutter/models/api/wallet/operation/operation_payment_charts_item_response.dart';
import 'package:solfy_flutter/models/api/wallet/operation/operation_payment_item_response.dart';
import 'package:solfy_flutter/models/api/wallet/operation/operation_shop_item_response.dart';

part 'operation_operation_item_response.freezed.dart';
part 'operation_operation_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class OperationOperationItemResponse with _$OperationOperationItemResponse {
  const factory OperationOperationItemResponse({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "picture") String? picture,
    @JsonKey(name: "amount") String? amount,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "payments") List<OperationPaymentItemResponse>? payments,
    @JsonKey(name: "payments_chart") OperationPaymentChartsItemResponse? paymentsChart,
    @JsonKey(name: "brand") OperationBrandItemResponse? brand,
    @JsonKey(name: "shop") OperationShopItemResponse? shop,
    @JsonKey(name: "is_declined") bool? isDeclined,
  }) = OperationItem;

  factory OperationOperationItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OperationOperationItemResponseFromJson(json);
}
