part of 'personal_information_bloc.dart';

/// Эвенты блока с логикой на экране "Персональная информация"
@freezed
class PersonalInformationEvent with _$PersonalInformationEvent {
  /// Сменить email
  const factory PersonalInformationEvent.changeEmail(String email) = ChangeEmail;
}
