part of 'region_search_bloc.dart';

/// Стейты блока с логикой экрана выбора региона
@freezed
class RegionSearchState with _$RegionSearchState {
  /// Начальный стейт
  const factory RegionSearchState.initial() = Initial;

  /// Стейт начала загрузки
  const factory RegionSearchState.loading() = Loading;

  /// Стейт окончания загрузки
  const factory RegionSearchState.endLoading() = EndLoading;

  /// Стейт при успешной установке
  const factory RegionSearchState.setSuccess({@Default(false) bool isCloseToMe}) = SetSuccess;

  /// Стейт при неуспешной установке
  const factory RegionSearchState.setError(ErrorsResponse errors) = SetError;

  /// Стейт с показом модалки с переходом в настройки
  const factory RegionSearchState.showGoToSettings() = ShowGoToSettings;

  /// Стейт с показом модалки с установкой разрешения на геолокацию
  const factory RegionSearchState.showRequestGeoAccess() = ShowRequestGeoAccess;
}
