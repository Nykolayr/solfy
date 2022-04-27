import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_status_view_model.freezed.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class WalletStatusViewModel with _$WalletStatusViewModel {
  const factory WalletStatusViewModel(
    /// Статус кошелька
    @JsonKey(name: "status") String status,

    /// Заголовок
    @JsonKey(name: "title") String title,

    /// Описание
    @JsonKey(name: "description") String description,
  ) = WalletStatus;
}
