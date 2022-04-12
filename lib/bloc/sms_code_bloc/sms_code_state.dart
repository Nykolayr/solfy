part of 'sms_code_bloc.dart';

/// Стейты блока с логикой экрана с подтверждением смс-кода
@freezed
class SmsCodeState with _$SmsCodeState {
  /// Начальный стейт
  const factory SmsCodeState.initial() = Initial;

  /// Стейт загрузки
  const factory SmsCodeState.loading() = Loading;

  /// Стейт при успешном подтверждении введенного кода
  const factory SmsCodeState.validationSuccess(SmsConfirmResponse response) = ValidationSuccess;

  /// Стейт при неуспешном подтверждении введенного кода
  const factory SmsCodeState.validationError(ErrorsResponse errors) = ValidationError;

  /// Стейт при неуспешной отправке повторной смс
  const factory SmsCodeState.sendNewSmsError(ErrorsResponse errors) = SendNewSmsError;
}
