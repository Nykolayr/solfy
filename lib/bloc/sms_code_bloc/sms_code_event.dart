part of 'sms_code_bloc.dart';

/// Эвенты блока с логикой экрана с подтверждением смс-кода
@freezed
class SmsCodeEvent with _$SmsCodeEvent {
  /// Проверить код на валидность
  const factory SmsCodeEvent.validateCode(SmsConfirmRequest request) =
      ValidateCode;

  /// Отправить новый код
  const factory SmsCodeEvent.sendNewCode() = SendNewCode;
}


