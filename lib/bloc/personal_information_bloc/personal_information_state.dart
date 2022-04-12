part of 'personal_information_bloc.dart';

/// Стейты блока с логикой на экране "Персональная информация"
@freezed
class PersonalInformationState with _$PersonalInformationState {
  /// Начальный стейт
  const factory PersonalInformationState.initial() = Initial;

  /// Стейт загрузки
  const factory PersonalInformationState.loading() = Loading;

  /// Стейт при успешной смене email'а
  const factory PersonalInformationState.emailChangedSuccess() = EmailChangedSuccess;

  /// Стейт при неуспешной смене email'а
  const factory PersonalInformationState.emailChangedError({ErrorsResponse? errors}) =
      EmailChangedError;
}
