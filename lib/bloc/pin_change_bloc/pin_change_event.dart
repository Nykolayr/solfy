part of 'pin_change_bloc.dart';

/// Эвенты блока с логикой смены пин-кода приложения
@freezed
class PinChangeEvent with _$PinChangeEvent {
  /// Сохранить первый введенный новый код приложения
  const factory PinChangeEvent.saveFirstCode(String code) = SaveFirstCode;

  /// Проверить текущий код приложения на валидность
  const factory PinChangeEvent.checkCode(String code) = CheckCode;

  /// Установить новый код приложения
  const factory PinChangeEvent.setNewCode(String code) = SetNewCode;

  /// Восстановить забытый код приложения
  const factory PinChangeEvent.pinForgot() = PinForgot;
}
