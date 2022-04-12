import 'package:either_dart/either.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/wallet/comfortable_payment_update/comfortable_payment_update_request.dart';
import 'package:solfy_flutter/models/api/wallet/comfortable_payment_update/comfortable_payment_update_response.dart';
import 'package:solfy_flutter/models/api/wallet/operation/operation_response.dart';
import 'package:solfy_flutter/models/api/wallet/operations/operations_response.dart';
import 'package:solfy_flutter/models/api/wallet/refillment/refillment_response.dart';
import 'package:solfy_flutter/models/api/wallet/schedules/schedules_response.dart';
import 'package:solfy_flutter/models/api/wallet/wallet_get/wallet_get_response.dart';

/// Интерфейс репозитория, работающего с wallet-разделом API
abstract class IWalletRepository {
  /// Получаем кошелек
  Future<Either<ErrorsResponse, WalletGetResp>> getWallet();

  /// Получаем график платежей
  Future<Either<ErrorsResponse, SchedulesResp>> getSchedules();

  /// Получаем операции
  Future<Either<ErrorsResponse, OperationsResp>> getOperations();

  /// Оплата
  Future<Either<ErrorsResponse, RefillmentResp>> refillment(String amount);

  /// Получаем операцию по [id]
  Future<Either<ErrorsResponse, OperationResp>> getOperation(String id);

  /// Обновляем размер комфортного платежа
  Future<Either<ErrorsResponse, ComfortablePaymentUpdateResp>> comfortablePaymentUpdate(
      ComfortablePaymentUpdateRequest request);
}
