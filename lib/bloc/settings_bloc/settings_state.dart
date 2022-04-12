part of 'settings_bloc.dart';

/// Стейты блока с логикой работы с серверными настройками пользователя
@freezed
class SettingsState with _$SettingsState {
  /// Начальный стейт
  const factory SettingsState.initial() = Initial;
}
