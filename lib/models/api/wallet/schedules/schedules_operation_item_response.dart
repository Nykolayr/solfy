import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'schedules_operation_item_response.freezed.dart';
part 'schedules_operation_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class SchedulesOperationItemResponse with _$SchedulesOperationItemResponse {
  const factory SchedulesOperationItemResponse(
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

  factory SchedulesOperationItemResponse.fromJson(Map<String, dynamic> json) =>
      _$SchedulesOperationItemResponseFromJson(json);
}
