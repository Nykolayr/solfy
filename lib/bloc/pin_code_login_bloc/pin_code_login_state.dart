part of 'pin_code_login_bloc.dart';

/// Стейты блока с логикой экрана авторизации приложения
@freezed
class PinCodeLoginState with _$PinCodeLoginState {
  /// Начальный стейт
  const factory PinCodeLoginState.initial() = Initial;

  /// Стейт начала загрузки
  const factory PinCodeLoginState.loading() = Loading;

  /// Стейт окончания загрузки
  const factory PinCodeLoginState.endLoading() = EndLoading;

  /// Стейт при успешной авторизации
  const factory PinCodeLoginState.loginSuccess() = LoginSuccess;

  /// Стейт при неуспешной авторизации (введен неправильный код)
  const factory PinCodeLoginState.loginInvalidCode() = LoginInvalidCode;

  /// Стейт при успешном сбросе пин-кода приложения
  const factory PinCodeLoginState.pinForgotSuccess(PinForgotResp response) = PinForgotSuccess;

  /// Стейт при неуспешном сбросе пин-кода приложения
  const factory PinCodeLoginState.pinForgotError(ErrorsResponse errors) = PinForgotError;

  /// Стейт при обнаруженной активной биометрии с ее типом
  const factory PinCodeLoginState.availableBiometricType(BiometricType type) =
      AvailableBiometricType;

  /// Стейт при возникшей ошибке в попытке проверить пин-код
  const factory PinCodeLoginState.loginError(ErrorsResponse errors) = LoginError;
}
