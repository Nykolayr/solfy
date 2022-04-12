import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'operations_operation_item_response.freezed.dart';
part 'operations_operation_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class OperationsOperationItemResponse with _$OperationsOperationItemResponse {
  const factory OperationsOperationItemResponse(
    /// Идентификатор
    @JsonKey(name: "id") String? id,

    /// Заголовок
    @JsonKey(name: "title") String? title,

    /// Тип
    @JsonKey(name: "type") String? type,

    /// Подпись
    @JsonKey(name: "caption") String? caption,

    /// Дата
    @JsonKey(name: "date") String? date,

    /// Timestamp даты
    @JsonKey(name: "date_timestamp") int? dateTimestamp,

    /// Идентификатор группы
    @JsonKey(name: "group_id") String? groupId,

    /// Изображение
    @JsonKey(name: "picture") String? picture,

    /// Стоимость
    @JsonKey(name: "amount") String? amount,

    /// Отклонен ли платеж
    @JsonKey(name: "is_declined") bool? isDeclined,
  ) = OperationItem;

  factory OperationsOperationItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OperationsOperationItemResponseFromJson(json);
}
