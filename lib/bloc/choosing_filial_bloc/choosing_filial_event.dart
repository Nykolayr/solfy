part of 'choosing_filial_bloc.dart';

/// Эвенты блока с логикой на экране выбора филиала (6-ой шаг анкеты)
@freezed
class ChoosingFilialEvent with _$ChoosingFilialEvent {
  /// Получение филиалов
  ///
  /// [filterById] - идентификатор региона, по которому требуется отфильтровать филиалы
  const factory ChoosingFilialEvent.getMarkers({int? filterById}) = GetMarkers;
}
