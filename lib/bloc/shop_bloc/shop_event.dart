part of 'shop_bloc.dart';

/// Эвенты блока с логикой получения магазина
@freezed
class ShopEvent with _$ShopEvent {
  /// Получить магазин
  const factory ShopEvent.getShop(String id, {@Default(false) bool openModalWithMap}) = GetShop;
}
