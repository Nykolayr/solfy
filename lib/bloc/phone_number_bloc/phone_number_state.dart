part of 'phone_number_bloc.dart';

/// Стейты блока с логикой отправки смс на номер телефона
@freezed
class PhoneNumberState with _$PhoneNumberState {
  /// Начальный стейт
  const factory PhoneNumberState.initial() = Initial;

  /// Стейт загрузки
  const factory PhoneNumberState.loading() = Loading;

  /// Стейт с успешной отправкой смс по номеру телефона
  const factory PhoneNumberState.smsSendSuccess(SmsSendResp response) = SmsSendSuccess;

  /// Стейт с неуспешной отправкой смс по номеру телефона
  const factory PhoneNumberState.smsSendError(ErrorsResponse errors) = SmsSendError;
}
