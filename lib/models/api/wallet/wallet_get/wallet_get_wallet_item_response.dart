import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/wallet/wallet_get/wallet_get_account_item_response.dart';
import 'package:solfy_flutter/models/api/wallet/wallet_get/wallet_get_card_item_response.dart';
import 'package:solfy_flutter/models/api/wallet/wallet_get/wallet_get_status_contents_item_response.dart';
import 'package:solfy_flutter/models/entities/wallet/wallet_status_view_model.dart';

part 'wallet_get_wallet_item_response.freezed.dart';
part 'wallet_get_wallet_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class WalletGetWalletItemResponse with _$WalletGetWalletItemResponse {
  const factory WalletGetWalletItemResponse(
    /// Статус аккаунта
    @JsonKey(name: "status") String? status,

    /// Детали статуса
    @JsonKey(name: "status_contents")
        WalletGetStatusContentsItemResponse? statusContents,

    /// Лимит
    @JsonKey(name: "limit") int? limit,

    /// Доступный баланс
    @JsonKey(name: "available_balance") int? availableBalance,

    /// Комфортный платеж
    @JsonKey(name: "comfortable_payment") int? comfortablePayment,

    /// Ближайший платеж
    @JsonKey(name: "nearest_omp") int? nearestOmp,

    /// Дата ближайшего платежа
    @JsonKey(name: "nearest_omp_date") String? nearestOmpDate,

    /// Аккаунты
    @JsonKey(name: "accounts") List<WalletGetAccountItemResponse>? accounts,

    /// Карты
    @JsonKey(name: "cards") List<WalletGetCardItemResponse>? cards,
  ) = WalletItem;

  factory WalletGetWalletItemResponse.fromJson(Map<String, dynamic> json) =>
      _$WalletGetWalletItemResponseFromJson(json);
}

extension WalletItemMapper on WalletGetWalletItemResponse {
  WalletStatusViewModel getModel() {
    return WalletStatusViewModel(
      this.status ?? "",
      this.statusContents?.title ?? "",
      this.statusContents?.description ?? "",
      this.statusContents?.addition ?? "",
      this.statusContents?.insurance_premium ?? "",
    );
  }
}
