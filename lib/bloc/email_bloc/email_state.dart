part of 'email_bloc.dart';

/// Стейты блока с логикой установки email'а
@freezed
class EmailState with _$EmailState {
  /// Начальный стейт
  const factory EmailState.initial() = Initial;

  /// Стейт загрузки
  const factory EmailState.loading() = Loading;

  /// Стейт с успешной установкой email'а
  const factory EmailState.emailSavedSuccess(EmailSendResp response) = EmailSavedSuccess;

  /// Стейт с неуспешной установкой email'а
  const factory EmailState.emailSavedError(ErrorsResponse errors) = EmailSavedError;
}
