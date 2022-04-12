part of 'phone_number_bloc.dart';

/// Эвенты блока с логикой отправки смс на номер телефона
@freezed
class PhoneNumberEvent with _$PhoneNumberEvent {
  /// Отправка смс-кода по номеру из [request]
  const factory PhoneNumberEvent.smsSend(SmsSendRequest request) = SmsSend;
}
