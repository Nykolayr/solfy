part of 'history_bloc.dart';

/// Стейты блока с загрузкой истории операций для страницы с кошельком
@freezed
class HistoryState with _$HistoryState {
  /// Начальный стейт
  const factory HistoryState.initial() = Initial;

  /// Стейт загрузки
  const factory HistoryState.loading() = Loading;

  /// Стейт при успешном получении операций
  const factory HistoryState.getHistorySuccess(OperationsResp response) = GetHistorySuccess;

  /// Стейт при неуспешном получении операций
  const factory HistoryState.getHistoryError(ErrorsResponse errors) = GetHistoryError;
}
