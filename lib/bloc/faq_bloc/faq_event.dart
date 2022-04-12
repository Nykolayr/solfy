part of 'faq_bloc.dart';

/// Эвенты блока с логикой получения вопросов и ответов со страницы "Помощь"
@freezed
class FaqEvent with _$FaqEvent {
  /// Получить вопросы и ответы
  const factory FaqEvent.getFaq() = GetFaq;
}
