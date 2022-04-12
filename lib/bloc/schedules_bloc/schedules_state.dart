part of 'schedules_bloc.dart';

/// Стейты блока с логикой загрузки графиков из страницы с кошельком
@freezed
class SchedulesState with _$SchedulesState {
  /// Начальный стейт
  const factory SchedulesState.initial() = Initial;

  /// Стейт загрузки
  const factory SchedulesState.loading() = Loading;

  /// Стейт при успешной загрузке графиков
  const factory SchedulesState.getSchedulesSuccess(SchedulesResp response) = GetSchedulesSuccess;

  /// Стейт при неуспешной загрузке графиков
  const factory SchedulesState.getSchedulesError(ErrorsResponse errors) = GetSchedulesError;
}
