part of 'settings_bloc.dart';

/// Эвенты блока с логикой работы с серверными настройками пользователя
@freezed
class SettingsEvent with _$SettingsEvent {
  /// Обновить настройки
  const factory SettingsEvent.updateSettings() = UpdateSettings;

  /// Установить в настройки новый регион
  const factory SettingsEvent.setNewCity(int id) = SetNewCity;

  /// Установить в настройки новый язык
  const factory SettingsEvent.setNewLocale(String locale) = SetNewLocale;
}
