part of 'choosing_filial_bloc.dart';

/// Стейты блока с логикой на экране выбора филиала (6-ой шаг анкеты)
@freezed
class ChoosingFilialState with _$ChoosingFilialState {
  /// Начальный стейт
  const factory ChoosingFilialState.initial() = Initial;

  /// Стейт загрузки
  const factory ChoosingFilialState.loading() = Loading;

  /// Стейт с полученными филиалами
  const factory ChoosingFilialState.markers(List<MarkerModel> markers) = Markers;
}
