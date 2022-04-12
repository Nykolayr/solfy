import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shop_condition_item_response.freezed.dart';
part 'shop_condition_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ShopConditionItemResponse with _$ShopConditionItemResponse {
  const factory ShopConditionItemResponse(
    /// Заголовок срока рассрочки
    @JsonKey(name: "title") String? title,

    /// Срок рассрочки
    @JsonKey(name: "term") String? term,
  ) = ShopConditionItem;

  factory ShopConditionItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopConditionItemResponseFromJson(json);
}
