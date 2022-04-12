part of 'pin_code_set_bloc.dart';

/// Стейты блока с логикой установки пин-кода приложения
@freezed
class PinCodeSetState with _$PinCodeSetState {
  /// Начальный стейт
  const factory PinCodeSetState.initial() = Initial;

  /// Стейт загрузки
  const factory PinCodeSetState.loading() = Loading;

  /// Стейт при успешной установке пин-кода приложения
  const factory PinCodeSetState.pinSetSuccess() = PinSetSuccess;

  /// Стейт при неуспешной установке пин-кода приложения
  const factory PinCodeSetState.pinSetError(ErrorsResponse errors) = PinSetError;

  /// Стейт при успешной установки пин-кода и доступности какой-либо биометрии на девайсе
  const factory PinCodeSetState.showBiometricModal(BiometricType type) = ShowBiometricModal;

  /// Стейт, обозначающий переход к следующему экрану
  const factory PinCodeSetState.showWelcomeScreen() = ShowWelcomeScreen;
}
