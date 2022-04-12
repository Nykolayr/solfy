part of 'wallet_bloc.dart';

/// Стейты блока с логикой загрузки кошелька
@freezed
class WalletState with _$WalletState {
  /// Начальный стейт
  const factory WalletState.initial() = Initial;

  /// Стейт загрузки
  const factory WalletState.loading() = Loading;

  /// Стейт при успешном получении кошелька
  const factory WalletState.getWalletSuccess(WalletViewModel wallet, bool isUpdate) =
      GetWalletSuccess;

  /// Стейт при неуспешном получении кошелька
  const factory WalletState.getWalletError(ErrorsResponse errors) = GetWalletError;
}
