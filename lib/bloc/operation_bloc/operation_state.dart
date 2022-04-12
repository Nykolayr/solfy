part of 'operation_bloc.dart';

/// Стейты блока с логикой получения операции по идентификатору
@freezed
class OperationState with _$OperationState {
  /// Начальный стейт
  const factory OperationState.initial() = Initial;

  /// Стейт начала загрузки операции
  const factory OperationState.operationLoading() = OperationLoading;

  /// Стейт окончания загрузки операции
  const factory OperationState.operationEndLoading() = OperationEndLoading;

  /// Стейт при успешном получении операции
  const factory OperationState.getOperationSuccess(OperationResp operation) = GetOperationSuccess;

  /// Стейт при неуспешном получении операции
  const factory OperationState.getOperationError(ErrorsResponse errors) = GetOperationError;
}
