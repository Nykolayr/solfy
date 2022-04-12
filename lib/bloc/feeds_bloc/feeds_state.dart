part of 'feeds_bloc.dart';

/// Стейты блока с логикой получения новостей
@freezed
class FeedsState with _$FeedsState {
  /// Начальный стейт
  const factory FeedsState.initial() = Initial;

  /// Стейт загрузки
  const factory FeedsState.loading() = Loading;

  /// Стейт при успешному получении новостей и состояния кошелька
  const factory FeedsState.getFeedsSuccess({
    required List<FeedsFeedItemResponse> feeds,
    required WalletViewModel wallet,
  }) = GetFeedsSuccess;

  /// Стейт при неуспешному получении новостей и состояния кошелька
  const factory FeedsState.getFeedsError(ErrorsResponse errors) = GetFeedsError;
}
