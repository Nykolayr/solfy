part of 'faq_bloc.dart';

/// Стейты блока с логикой получения вопросов и ответов со страницы "Помощь"
@freezed
abstract class FaqState with _$FaqState {
  /// Начальный стейт
  const factory FaqState.initial() = Initial;

  /// Стейт загрузки
  const factory FaqState.loading() = FaqLoading;

  /// Стейт успешной загрузки вопросов и ответов
  const factory FaqState.faqSuccess(FaqResp faq) = FaqSuccess;

  /// Стейт неуспешной загрузки вопросов и ответов
  const factory FaqState.faqError(ErrorsResponse errors) = FaqError;
}
