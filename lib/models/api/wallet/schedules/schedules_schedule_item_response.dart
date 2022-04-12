import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/wallet/schedules/schedules_operation_item_response.dart';

part 'schedules_schedule_item_response.freezed.dart';
part 'schedules_schedule_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class SchedulesScheduleItemResponse with _$SchedulesScheduleItemResponse {
  const factory SchedulesScheduleItemResponse(
    /// Заголовок
    @JsonKey(name: "title") String? title,

    /// Подпись
    @JsonKey(name: "caption") String? caption,

    /// Стоимость
    @JsonKey(name: "amount") String? amount,

    /// Подпись к стоимости
    @JsonKey(name: "amount_caption") String? amountCaption,

    /// Истек ли платеж
    @JsonKey(name: "is_expired") bool? isExpired,

    /// Операции
    @JsonKey(name: "operations") List<SchedulesOperationItemResponse>? operations,
  ) = ScheduleItem;

  factory SchedulesScheduleItemResponse.fromJson(Map<String, dynamic> json) =>
      _$SchedulesScheduleItemResponseFromJson(json);
}
