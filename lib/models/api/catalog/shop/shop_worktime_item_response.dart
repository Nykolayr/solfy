import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_worktime_item_response.freezed.dart';
part 'shop_worktime_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ShopWorktimeItemResponse with _$ShopWorktimeItemResponse {
  const factory ShopWorktimeItemResponse(
    /// Время работы
    @JsonKey(name: "time") String? time,

    /// День
    @JsonKey(name: "day") String? day,

    /// Статус
    @JsonKey(name: "status") String? status,
  ) = WorktimeItem;

  factory ShopWorktimeItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopWorktimeItemResponseFromJson(json);
}
