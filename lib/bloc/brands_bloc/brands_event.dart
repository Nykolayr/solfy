part of 'brands_bloc.dart';

/// Эвенты блока с логикой загрузки брендов по категории
@freezed
class BrandsEvent with _$BrandsEvent {
  /// Получение брендов
  const factory BrandsEvent.getBrands() = GetBrands;
}
