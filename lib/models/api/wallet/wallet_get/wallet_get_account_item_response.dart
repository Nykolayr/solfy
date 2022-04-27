import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_get_account_item_response.freezed.dart';
part 'wallet_get_account_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class WalletGetAccountItemResponse with _$WalletGetAccountItemResponse {
  const factory WalletGetAccountItemResponse(
    /// Идентификатор
    @JsonKey(name: "id") String? id,

    /// Тип
    @JsonKey(name: "type") String? type,

    /// Баланс
    @JsonKey(name: "balance") int? balance,
  ) = AccountItem;

  factory WalletGetAccountItemResponse.fromJson(Map<String, dynamic> json) =>
      _$WalletGetAccountItemResponseFromJson(json);
}
