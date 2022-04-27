import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/profile/get_profile/get_profile_card_item_response.dart';
import 'package:solfy_flutter/models/api/profile/get_profile/get_profile_status_contents_item_response.dart';
import 'package:solfy_flutter/models/entities/wallet/wallet_status_view_model.dart';

part 'get_profile_wallet_item_response.freezed.dart';
part 'get_profile_wallet_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GetProfileWalletItemResponse with _$GetProfileWalletItemResponse {
  const factory GetProfileWalletItemResponse(
    /// Статус аккаунта
    @JsonKey(name: "status") String? status,

    /// Детали статуса
    @JsonKey(name: "status_contents") GetProfileStatusContentsItemResponse? statusContents,

    /// Привязанные карты
    @JsonKey(name: "cards") List<GetProfileCardItemResponse>? cards,
  ) = WalletItem;

  factory GetProfileWalletItemResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProfileWalletItemResponseFromJson(json);
}

extension WalletItemMapper on GetProfileWalletItemResponse {
  WalletStatusViewModel getModel() {
    return WalletStatusViewModel(this.status ?? "", this.statusContents?.title ?? "",
        this.statusContents?.description ?? "");
  }
}
