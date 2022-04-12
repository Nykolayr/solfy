part of 'email_bloc.dart';

/// Эвенты блока с логикой установки email'а
@freezed
class EmailEvent with _$EmailEvent {
  /// Сохранить email
  const factory EmailEvent.saveEmail(String email) = SaveEmail;
}
