import 'package:either_dart/either.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:dio/dio.dart';
import 'package:solfy_flutter/models/api/wallet/operation/operation_response.dart';
import 'package:solfy_flutter/models/api/wallet/refillment/refillment_request.dart';
import 'package:solfy_flutter/models/api/wallet/refillment/refillment_response.dart';
import 'package:solfy_flutter/models/api/wallet/wallet_get/wallet_get_response.dart';
import 'package:solfy_flutter/models/api/wallet/schedules/schedules_response.dart';
import 'package:solfy_flutter/models/api/wallet/operations/operations_response.dart';
import 'package:solfy_flutter/models/api/wallet/comfortable_payment_update/comfortable_payment_update_response.dart';
import 'package:solfy_flutter/models/api/wallet/comfortable_payment_update/comfortable_payment_update_request.dart';
import 'package:solfy_flutter/repository/iwallet_repository.dart';
import 'package:solfy_flutter/services/api/wallet_api_client.dart';

/// Реализация репозитория, работающего с wallet-разделом API
class WalletRepository implements IWalletRepository {
  final WalletApiClient _apiClient;

  WalletRepository(this._apiClient);

  @override
  Future<Either<ErrorsResponse, ComfortablePaymentUpdateResp>>
      comfortablePaymentUpdate(ComfortablePaymentUpdateRequest request) async {
    try {
      final response = await _apiClient.comfortablePaymentUpdate(request);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, OperationsResp>> getOperations() async {
    try {
      final response = await _apiClient.getOperations();
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, SchedulesResp>> getSchedules() async {
    try {
      final response = await _apiClient.getSchedules();
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, WalletGetResp>> getWallet() async {
    try {
      WalletGetResp response = await _apiClient.getWallet();
      print('getWallet === ${response.wallet!.toJson()}');
      return Right(response);
    } on DioError catch (error) {
      print('getWallet error === $error');
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, OperationResp>> getOperation(String id) async {
    try {
      final response = await _apiClient.getOperation(id);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, RefillmentResp>> refillment(
      String amount) async {
    try {
      final response = await _apiClient.refillment(RefillmentRequest(amount));
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }
}
