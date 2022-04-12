part of 'store_shops_update_bloc.dart';

/// Стейты с логикой загрузки магазинов на странице бренда
@freezed
class StoreShopsUpdateState with _$StoreShopsUpdateState {
  /// Начальный стейт
  const factory StoreShopsUpdateState.initial() = Initial;

  /// Стейт загрузки
  const factory StoreShopsUpdateState.loading(FilterRequest request) = Loading;

  /// Стейт успешной загрузки магазинов
  const factory StoreShopsUpdateState.getShopsSuccess(ShopsViewModel shops) = GetShopsSuccess;

  /// Стейт неуспешной загрузки магазинов
  const factory StoreShopsUpdateState.getShopsError(ErrorsResponse errors) = GetShopsError;
}
