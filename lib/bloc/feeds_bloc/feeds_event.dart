part of 'feeds_bloc.dart';

/// Эвенты блока с логикой получения новостей
@freezed
class FeedsEvent with _$FeedsEvent {
  /// Получить новости
  const factory FeedsEvent.getFeeds() = GetFeeds;
}
