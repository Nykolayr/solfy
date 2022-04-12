part of 'store_bloc.dart';

/// Эвенты блока с логикой получения бренда
@freezed
class StoreEvent with _$StoreEvent {
  /// Получить бренд
  const factory StoreEvent.getBrand(int id) = GetBrand;
}
