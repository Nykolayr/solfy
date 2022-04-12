part of 'shop_bloc.dart';

/// Стейты блока с логикой получения магазина
@freezed
class ShopState with _$ShopState {
  /// Начальный стейт
  const factory ShopState.initial() = Initial;

  /// Стейт начала загрузки магазина
  const factory ShopState.shopLoading() = ShopLoading;

  /// Стейт окончания загрузки магазина
  const factory ShopState.shopEndLoading() = ShopEndLoading;

  /// Стейт успешной загрузки магазина
  const factory ShopState.getShopSuccess(ShopViewModel shop, bool openModalWithMap) =
      GetShopSuccess;

  /// Стейт неуспешной загрузки магазина
  const factory ShopState.getShopError(ErrorsResponse errors) = GetShopError;
}
