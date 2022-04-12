part of 'base_tab_updater_bloc.dart';

/// Эвенты блока с логикой уведомления об обновлении блока каждой табы
@freezed
class BaseTabUpdaterEvent with _$BaseTabUpdaterEvent {
  /// Обновить каталог
  const factory BaseTabUpdaterEvent.updateCatalog() = UpdateCatalog;

  /// Обновить ленту
  const factory BaseTabUpdaterEvent.updateFeed() = UpdateFeed;

  /// Обновить профиль
  const factory BaseTabUpdaterEvent.updateProfile() = UpdateProfile;

  /// Обновить кошелек
  const factory BaseTabUpdaterEvent.updateWallet() = UpdateWallet;
}
