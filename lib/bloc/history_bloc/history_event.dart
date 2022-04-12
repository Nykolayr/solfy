part of 'history_bloc.dart';

/// Эвенты блока с загрузкой истории операций для страницы с кошельком
@freezed
class HistoryEvent with _$HistoryEvent {
  /// Получить историю
  const factory HistoryEvent.getHistory() = GetHistory;
}
