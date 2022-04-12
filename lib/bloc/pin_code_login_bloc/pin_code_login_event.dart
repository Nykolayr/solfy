part of 'pin_code_login_bloc.dart';

/// Эвенты блока с логикой экрана авторизации приложения
@freezed
class PinCodeLoginEvent with _$PinCodeLoginEvent {
  /// Авторизация по коду
  const factory PinCodeLoginEvent.login(String pin) = Login;

  /// Если возможно, попытаться авторизоваться через биометрию
  const factory PinCodeLoginEvent.tryBiometricAuth() = TryBiometricAuth;

  /// Восстановить забытый пин-код приложения
  const factory PinCodeLoginEvent.pinForgot() = PinForgot;
}
