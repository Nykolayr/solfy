part of 'send_letter_bloc.dart';

/// Эвенты блока с логикой отправки письма (экран "Обратная связь")
@freezed
class SendLetterEvent with _$SendLetterEvent {
  /// Отправить письмо
  const factory SendLetterEvent.sendLetter(
      String email, String message, List<ImageFileModel> images) = SendLetter;
}
