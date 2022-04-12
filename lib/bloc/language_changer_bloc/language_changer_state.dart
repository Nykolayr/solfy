part of 'language_changer_bloc.dart';

/// Стейты блока с логикой смены языка
@freezed
class LanguageChangerState with _$LanguageChangerState {
  /// Начальный стейт
  const factory LanguageChangerState.initial() = Initial;

  /// Стейт после смены языка
  const factory LanguageChangerState.languageChanged(String newLanguage) = LanguageChanged;
}
