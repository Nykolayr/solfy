part of 'region_search_bloc.dart';

/// Эвенты блока с логикой экрана выбора региона
@freezed
class RegionSearchEvent with _$RegionSearchEvent {
  /// Попытка установить режим "Рядом со мной"
  const factory RegionSearchEvent.onCloseToMe() = OnCloseToMe;

  /// Попытка установить регион
  const factory RegionSearchEvent.onRegion(int cityId) = OnRegion;
}
