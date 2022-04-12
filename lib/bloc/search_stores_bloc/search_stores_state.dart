part of 'search_stores_bloc.dart';

/// Стейты блока с логикой поиска категорий и брендов
@freezed
class SearchStoresState with _$SearchStoresState {
  /// Начальный стейт
  const factory SearchStoresState.initial() = Initial;

  /// Загрузка результатов поиска
  const factory SearchStoresState.loadInProgress() = Loading;

  /// Введено меньше, чем три символа
  const factory SearchStoresState.lessThenThreeSymbols() = LessThenThreeSymbols;

  /// Пустой запрос
  const factory SearchStoresState.emptyQuery() = EmptyQuery;

  /// Успешно загружены результаты поиска
  const factory SearchStoresState.foundSuccess(
      SearchResp search, bool isCategories, bool isBrands) = FoundSuccess;

  /// Успешно загружены пустые результаты поиска
  const factory SearchStoresState.emptyResults() = EmptyResults;

  /// Ошибка при загрузке результатов поиска
  const factory SearchStoresState.foundError(ErrorsResponse errors) = FoundError;
}
