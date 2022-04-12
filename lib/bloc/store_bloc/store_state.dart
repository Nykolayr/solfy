part of 'store_bloc.dart';

/// Стейты блока с логикой получения бренда
@freezed
class StoreState with _$StoreState {
  /// Начальный стейт
  const factory StoreState.initial() = Initial;

  /// Начало загрузки бренда
  const factory StoreState.brandLoading() = BrandLoading;

  /// Окончание загрузки бренда
  const factory StoreState.brandEndLoading() = BrandEndLoading;

  /// Стейт при успешном получении бренда
  const factory StoreState.getBrandSuccess(BrandResp brand) = GetBrandSuccess;

  /// Стейт при неуспешном получении бренда
  const factory StoreState.getBrandError(ErrorsResponse errors) = GetBrandError;
}
