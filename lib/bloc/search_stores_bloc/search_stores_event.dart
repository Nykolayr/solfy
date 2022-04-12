part of 'search_stores_bloc.dart';

/// Эвенты блока с логикой поиска категорий и брендов
@freezed
class SearchStoresEvent with _$SearchStoresEvent {
  /// Найти категории и бренды по запросу
  const factory SearchStoresEvent.search(String query) = Search;

  /// Установить идентификатор категории в фильтры
  const factory SearchStoresEvent.setCategoryId(int id) = SetCategoryId;
}
