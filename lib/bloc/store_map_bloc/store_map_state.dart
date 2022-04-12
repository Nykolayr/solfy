part of 'store_map_bloc.dart';

/// Стейты блока с логикой раскрытой карты на странице бренда
@freezed
class StoreMapState with _$StoreMapState {
  /// Начальный стейт
  const factory StoreMapState.storeMapInitial() = StoreMapInitial;

  /// Стейт загрузки
  const factory StoreMapState.storeMapLoading(FilterRequest? request) = StoreMapLoading;

  /// Стейт при успешном получении точек карты
  const factory StoreMapState.storeMapSuccess(List<PointItemViewModel> points) = StoreMapSuccess;

  /// Стейт при неуспешном получении точек карты
  const factory StoreMapState.storeMapError(ErrorsResponse errors) = StoreMapError;
}
