part of 'categories_bloc.dart';

/// Эвенты блока с логикой получения категорий
@freezed
class CategoriesEvent with _$CategoriesEvent {
  /// Получение категорий
  const factory CategoriesEvent.getCategories() = GetCategories;

  /// Установка идентификатора категории в фильтры
  const factory CategoriesEvent.setCategoryId(int? categoryId) = SetCategoryId;
}
