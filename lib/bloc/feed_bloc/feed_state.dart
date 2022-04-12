part of 'feed_bloc.dart';

/// Стейты блока с логикой получения новости
@freezed
class FeedState with _$FeedState {
  /// Начальный стейт
  const factory FeedState.initial() = Initial;

  /// Стейт начала загрузки новости
  const factory FeedState.feedLoading() = FeedLoading;

  /// Стейт окончания загрузки новости
  const factory FeedState.feedEndLoading() = FeedEndLoading;

  /// Стейт при успешной загрузки новости
  const factory FeedState.getFeedSuccess(FeedResp response) = GetFeedSuccess;

  /// Стейт при неуспешной загрузки новости
  const factory FeedState.getFeedError(ErrorsResponse errors) = GetFeedError;
}
