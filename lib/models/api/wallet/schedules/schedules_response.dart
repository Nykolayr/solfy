import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/wallet/schedules/schedules_schedule_item_response.dart';

part 'schedules_response.freezed.dart';
part 'schedules_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class SchedulesResponse with _$SchedulesResponse {
  const factory SchedulesResponse(
    /// Графики платежей
    @JsonKey(name: "schedules") List<SchedulesScheduleItemResponse>? schedules,
  ) = SchedulesResp;

  factory SchedulesResponse.fromJson(Map<String, dynamic> json) =>
      _$SchedulesResponseFromJson(json);
}
