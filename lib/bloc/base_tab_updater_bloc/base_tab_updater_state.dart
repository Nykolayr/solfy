part of 'base_tab_updater_bloc.dart';

/// Стейты блока с логикой уведомления об обновлении блока каждой табы
@freezed
class BaseTabUpdaterState with _$BaseTabUpdaterState {
  /// Начальный стейт
  const factory BaseTabUpdaterState.initial() = Initial;

  /// Обновить ленту
  const factory BaseTabUpdaterState.feedUpdate() = FeedUpdate;

  /// Обновить каталог
  const factory BaseTabUpdaterState.catalogUpdate() = CatalogUpdate;

  /// Обновить кошелек
  const factory BaseTabUpdaterState.walletUpdate() = WalletUpdate;

  /// Обновить профиль
  const factory BaseTabUpdaterState.profileUpdate() = ProfileUpdate;
}
