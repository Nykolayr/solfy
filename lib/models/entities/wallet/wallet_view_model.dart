import 'package:solfy_flutter/helpers/upper_case_formatter.dart';
import 'package:solfy_flutter/models/api/wallet/wallet_get/wallet_get_response.dart';
import 'package:solfy_flutter/models/entities/formatted_value.dart';
import 'package:solfy_flutter/models/entities/wallet/wallet_status_view_model.dart';

class WalletViewModel {
  final WalletGetResp _walletResponse;

  WalletViewModel(this._walletResponse);

  /// Форматированный тип ближайшего платежа
  FormattedValue<int?> get nearestOmp => FormattedValue(
        value: _walletResponse.wallet?.nearestOmp,
        formatter: (value) => value != null ? MoneyFormatter.format(value ~/ 100) : "",
      );

  /// Форматированный тип комфортного платежа
  FormattedValue<int?> get comfortablePayment => FormattedValue(
        value: _walletResponse.wallet?.comfortablePayment,
        formatter: (value) => value != null ? (value ~/ 100000000).toStringAsFixed(0) : "0",
      );

  /// Форматированный тип доступного баланса
  FormattedValue<int?> get availableBalance => FormattedValue(
        value: _walletResponse.wallet?.availableBalance,
        formatter: (value) => value != null ? MoneyFormatter.format(value ~/ 100) : "0",
      );

  String get nearestOmpDate => _walletResponse.wallet?.nearestOmpDate ?? "";

  int get limit => _walletResponse.wallet?.limit ?? 1;

  WalletStatusViewModel get walletStatus => WalletStatusViewModel(
        _walletResponse.wallet?.status ?? "",
        _walletResponse.wallet?.statusContents?.title ?? "",
        _walletResponse.wallet?.statusContents?.description ?? "",
      );
}
