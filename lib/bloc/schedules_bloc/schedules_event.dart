part of 'schedules_bloc.dart';

/// Эвенты блока с логикой загрузки графиков из страницы с кошельком
@freezed
class SchedulesEvent with _$SchedulesEvent {
  /// Получить графики
  const factory SchedulesEvent.getSchedules() = GetSchedules;
}
