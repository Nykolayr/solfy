part of 'biometric_set_bloc.dart';

/// Эвенты блока с логикой установки биометрии на экране ее установки в настройках
@freezed
class BiometricSetEvent with _$BiometricSetEvent {
  /// Эвент с проверкой кода авторизации в приложение
  ///
  /// [code] - код для проверки
  const factory BiometricSetEvent.checkCode(String code) = CheckCode;

  /// Эвент с проверкой биометрии с помощью системы
  const factory BiometricSetEvent.checkBiometric() = CheckBiometric;

  /// Эвент с восстановлением забытого кода
  const factory BiometricSetEvent.pinForgot() = PinForgot;
}
