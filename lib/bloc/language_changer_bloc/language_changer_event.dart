part of 'language_changer_bloc.dart';

/// Эвенты блока с логикой смены языка
@freezed
class LanguageChangerEvent with _$LanguageChangerEvent {
  /// Сменить язык приложения
  const factory LanguageChangerEvent.changeLanguage(String newLanguage) = ChangeLanguage;
}
