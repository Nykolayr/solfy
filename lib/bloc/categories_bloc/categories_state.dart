part of 'categories_bloc.dart';

/// Стейты блока с логикой получения категорий
@freezed
class CategoriesState with _$CategoriesState {
  /// Начальный стейт
  const factory CategoriesState.initial() = Initial;

  /// Стейт загрузки
  const factory CategoriesState.loading(FilterRequest request) = Loading;

  /// Стейт с успешным получением категорий
  ///
  /// [categories] - полученные категории
  ///
  /// [points] - точки для карты
  ///
  /// [cityId] - placeId, если есть
  const factory CategoriesState.getCategoriesSuccess({
    required CategoriesViewModel categories,
    required List<PointItemViewModel> points,
    int? cityId,
  }) = GetCategoriesSuccess;

  /// Стейт с неуспешным получением категорий
  const factory CategoriesState.getCategoriesError(ErrorsResponse errors) = GetCategoriesError;
}
