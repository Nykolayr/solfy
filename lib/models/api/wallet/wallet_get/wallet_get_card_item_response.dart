import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wallet_get_card_item_response.freezed.dart';
part 'wallet_get_card_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class WalletGetCardItemResponse with _$WalletGetCardItemResponse {
  const factory WalletGetCardItemResponse(
    /// Идентификатор
    @JsonKey(name: "id") String? id,

    /// Номер карты
    @JsonKey(name: "mask") String? mask,

    /// Срок действия карты
    @JsonKey(name: "validity") String? validity,
  ) = CardItem;

  factory WalletGetCardItemResponse.fromJson(Map<String, dynamic> json) =>
      _$WalletGetCardItemResponseFromJson(json);
}
