part of 'send_letter_bloc.dart';

/// Стейты блока с логикой отправки письма (экран "Обратная связь")
@freezed
class SendLetterState with _$SendLetterState {
  /// Начальный стейт
  const factory SendLetterState.initial() = Initial;

  /// Стейт загрузки
  const factory SendLetterState.loading() = Loading;

  /// Стейт при успешной отправке письма
  const factory SendLetterState.sentSuccess() = SentSuccess;

  /// Стейт при неуспешной отправке письма
  const factory SendLetterState.sentError({ErrorsResponse? errors}) = SentError;
}
