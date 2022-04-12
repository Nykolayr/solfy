import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/wallet/operation/operation_operation_item_response.dart';

part 'operation_response.freezed.dart';
part 'operation_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class OperationResponse with _$OperationResponse {
  const factory OperationResponse(
    /// Операция
    @JsonKey(name: "operation") OperationOperationItemResponse? operation,
  ) = OperationResp;

  factory OperationResponse.fromJson(Map<String, dynamic> json) =>
      _$OperationResponseFromJson(json);
}
