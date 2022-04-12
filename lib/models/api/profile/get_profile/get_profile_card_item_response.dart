import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_profile_card_item_response.freezed.dart';
part 'get_profile_card_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GetProfileCardItemResponse with _$GetProfileCardItemResponse {
  const factory GetProfileCardItemResponse(
    /// Идентификатор
    @JsonKey(name: "id") String? id,

    /// Номер карты
    @JsonKey(name: "mask") String? mask,

    /// Срок валидности карты
    @JsonKey(name: "validity") String? validity,
  ) = CardItem;

  factory GetProfileCardItemResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProfileCardItemResponseFromJson(json);
}
