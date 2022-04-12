part of 'store_map_bloc.dart';

/// Эвенты блока с логикой раскрытой карты на странице бренда
@freezed
class StoreMapEvent with _$StoreMapEvent {
  /// Получить точки карты
  const factory StoreMapEvent.getStoreMapPoint({FilterRequest? customFilter}) = GetStoreMapPoints;
}
