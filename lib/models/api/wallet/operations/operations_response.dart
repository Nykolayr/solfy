import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/wallet/operations/operations_group_item_response.dart';
import 'package:solfy_flutter/models/api/wallet/operations/operations_operation_item_response.dart';

part 'operations_response.freezed.dart';
part 'operations_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class OperationsResponse with _$OperationsResponse {
  const factory OperationsResponse(
    /// Группы операций
    @JsonKey(name: "groups") List<OperationsGroupItemResponse>? groups,

    /// Операции
    @JsonKey(name: "operations") List<OperationsOperationItemResponse>? operations,
  ) = OperationsResp;

  factory OperationsResponse.fromJson(Map<String, dynamic> json) =>
      _$OperationsResponseFromJson(json);
}
