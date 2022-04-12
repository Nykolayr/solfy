part of 'biometric_set_bloc.dart';

/// Стейты блока с логикой установки биометрии на экране ее установки в настройках
@freezed
class BiometricSetState with _$BiometricSetState {
  /// Начальный стейт
  const factory BiometricSetState.initial() = Initial;

  /// Стейт начала загрузки
  const factory BiometricSetState.loading() = Loading;

  /// Стейт окончания загрузки
  const factory BiometricSetState.endLoading() = EndLoading;

  /// Стейт с ошибкой в проверке кода (либо код невалидный, либо не прошел запрос)
  const factory BiometricSetState.invalidCode({ErrorsResponse? errors}) = InvalidCode;

  /// Стейт в случае успешной проверки кода
  const factory BiometricSetState.correctCode() = CorrectCode;

  /// Стейт в случае успешной установки биометрии
  const factory BiometricSetState.biometricSetSuccess() = BiometricSetSuccess;

  /// Стейт в случае неуспешной установки биометрии
  const factory BiometricSetState.biometricSetError() = BiometricSetError;

  /// Стейт в случае успешной отправки email'а для смены забытого кода
  const factory BiometricSetState.pinForgotSuccess(PinForgotResp response) = PinForgotSuccess;

  /// Стейт в случае неуспешной отправки email'а для смены забытого кода
  const factory BiometricSetState.pinForgotError(ErrorsResponse errors) = PinForgotError;
}
