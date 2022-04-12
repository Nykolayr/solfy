part of 'wallet_bloc.dart';

/// Эвенты блока с логикой загрузки кошелька
@freezed
class WalletEvent with _$WalletEvent {
  /// Получить кошелек
  const factory WalletEvent.getWallet({bool? isUpdate}) = GetWallet;

  /// Установить комфортный платеж
  const factory WalletEvent.comfortablePaymentUpdate(int value) = ComfortablePaymentUpdate;

  /// Оплата
  const factory WalletEvent.refillment(String amount) = Refillment;
}
