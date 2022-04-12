import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'condition_item_view_model.freezed.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ConditionItemViewModel with _$ConditionItemViewModel {
  const factory ConditionItemViewModel(
    String? title,
    String? term,
  ) = ConditionItem;
}
