import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'operations_group_item_response.freezed.dart';
part 'operations_group_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class OperationsGroupItemResponse with _$OperationsGroupItemResponse {
  const factory OperationsGroupItemResponse(
    /// Идентификатор
    @JsonKey(name: "id") String? id,

    /// Заголовок
    @JsonKey(name: "title") String? title,
  ) = GroupItem;

  factory OperationsGroupItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OperationsGroupItemResponseFromJson(json);
}
