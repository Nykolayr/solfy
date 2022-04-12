import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'brand_condition_item_response.freezed.dart';
part 'brand_condition_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class BrandConditionItemResponse with _$BrandConditionItemResponse {
  const factory BrandConditionItemResponse(
    /// Заголовок срока рассрочки
    @JsonKey(name: "title") String? title,

    /// Срок рассрочки
    @JsonKey(name: "term") String? term,
  ) = BrandConditionItem;

  factory BrandConditionItemResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandConditionItemResponseFromJson(json);
}
