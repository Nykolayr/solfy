import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/wallet/wallet_get/wallet_get_wallet_item_response.dart';
import 'package:solfy_flutter/models/entities/wallet/wallet_view_model.dart';

part 'wallet_get_response.freezed.dart';
part 'wallet_get_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class WalletGetResponse with _$WalletGetResponse {
  const factory WalletGetResponse(
    /// Кошелек
    @JsonKey(name: "wallet") WalletGetWalletItemResponse? wallet,
  ) = WalletGetResp;

  factory WalletGetResponse.fromJson(Map<String, dynamic> json) =>
      _$WalletGetResponseFromJson(json);
}

extension WalletMapper on WalletGetResp {
  WalletViewModel getModel() {
    return WalletViewModel(this);
  }
}
