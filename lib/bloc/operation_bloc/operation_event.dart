part of 'operation_bloc.dart';

/// Эвенты блока с логикой получения операции по идентификатору
@freezed
class OperationEvent with _$OperationEvent {
  /// Получить операцию по идентификатору
  const factory OperationEvent.getOperation(String id) = GetOperation;
}
