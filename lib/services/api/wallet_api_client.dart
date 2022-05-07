import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:solfy_flutter/main.dart';
import 'package:solfy_flutter/models/api/wallet/comfortable_payment_update/comfortable_payment_update_request.dart';
import 'package:solfy_flutter/models/api/wallet/comfortable_payment_update/comfortable_payment_update_response.dart';
import 'package:solfy_flutter/models/api/wallet/operation/operation_response.dart';
import 'package:solfy_flutter/models/api/wallet/operations/operations_response.dart';
import 'package:solfy_flutter/models/api/wallet/refillment/refillment_request.dart';
import 'package:solfy_flutter/models/api/wallet/refillment/refillment_response.dart';
import 'package:solfy_flutter/models/api/wallet/schedules/schedules_response.dart';
import 'package:solfy_flutter/models/api/wallet/wallet_get/wallet_get_response.dart';

part 'wallet_api_client.g.dart';

// @RestApi(baseUrl: "https://api-edge.docu.ru/")
abstract class WalletApiClient {
  factory WalletApiClient(Dio dio, {String baseUrl}) = _WalletApiClient;

  @GET("wallet/v1")
  Future<WalletGetResp> getWallet();

  @GET("wallet/v1/schedules")
  Future<SchedulesResp> getSchedules();

  @GET("wallet/v1/operations")
  Future<OperationsResp> getOperations();

  @POST("test/v1/refillment")
  Future<RefillmentResp> refillment(@Body() RefillmentRequest request);

  @GET("wallet/v1/operation/{id}")
  Future<OperationResp> getOperation(@Path() String id);

  @POST("wallet/v1/comfortable_payment_update")
  Future<ComfortablePaymentUpdateResp> comfortablePaymentUpdate(
      @Body() ComfortablePaymentUpdateRequest request);
}
