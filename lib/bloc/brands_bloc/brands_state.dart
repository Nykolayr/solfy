part of 'brands_bloc.dart';

/// Стейты блока с логикой загрузки брендов по категории
@freezed
class BrandsState with _$BrandsState {
  /// Начальный стейт
  const factory BrandsState.initial() = Initial;

  /// Стейт загрузки
  const factory BrandsState.loading(Map<CurrentTab, FilterRequest> request) = Loading;

  /// Стейт с успешной загрузкой брендов
  ///
  /// [brands] - загруженные бренды
  ///
  /// [points] - точки для карты
  ///
  /// [cityId] - установленный placeId, если есть
  const factory BrandsState.getBrandsSuccess({
    required BrandsViewModel brands,
    required List<PointItemViewModel> points,
    int? cityId,
  }) = GetBrandsSuccess;

  /// Стейт с неуспешной загрузкой брендов
  const factory BrandsState.getBrandsError(ErrorsResponse errors) = GetBrandsError;
}
