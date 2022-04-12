import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'worktime_item_view_model.freezed.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class WorktimeItemViewModel with _$WorktimeItemViewModel {
  const factory WorktimeItemViewModel(
    String? time,
    String? day,
    String? status,
  ) = WorktimeItem;
}
