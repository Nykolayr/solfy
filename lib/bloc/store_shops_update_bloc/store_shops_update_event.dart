part of 'store_shops_update_bloc.dart';

/// Эвенты блока с логикой загрузки магазинов на странице бренда
@freezed
class StoreShopsUpdateEvent with _$StoreShopsUpdateEvent {
  /// Получить магазины
  const factory StoreShopsUpdateEvent.getShops() = GetShops;
}
