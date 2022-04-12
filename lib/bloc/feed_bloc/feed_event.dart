part of 'feed_bloc.dart';

/// Эвенты блока с логикой получения новости
@freezed
class FeedEvent with _$FeedEvent {
  /// Получить новость по идентификатору
  const factory FeedEvent.getFeed(String id) = GetFeed;
}
