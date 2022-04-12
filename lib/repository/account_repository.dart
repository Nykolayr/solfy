import 'package:either_dart/either.dart';
import 'package:solfy_flutter/models/api/account/email_send/email_send_response.dart';
import 'package:solfy_flutter/models/api/account/email_send/email_send_request.dart';
import 'package:solfy_flutter/models/api/account/pin_forgot/pin_forgot_response.dart';
import 'package:solfy_flutter/models/api/account/pin_set/pin_set_response.dart';
import 'package:solfy_flutter/models/api/account/pin_set/pin_set_request.dart';
import 'package:solfy_flutter/models/api/account/pin_confirm/pin_confirm_response.dart';
import 'package:solfy_flutter/models/api/account/pin_confirm/pin_confirm_request.dart';
import 'package:solfy_flutter/models/api/account/sms_confirm/sms_confirm_response.dart';
import 'package:solfy_flutter/models/api/account/sms_confirm/sms_confirm_request.dart';
import 'package:solfy_flutter/models/api/account/sms_send/sms_send_request.dart';
import 'package:solfy_flutter/models/api/account/sms_send/sms_send_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/repository/iaccount_repository.dart';
import 'package:solfy_flutter/services/api/account_api_client.dart';
import 'package:dio/dio.dart';

/// Реализация репозитория, работающего со account-разделом API
class AccountRepository implements IAccountRepository {
  final AccountApiClient _apiClient;

  String? _phoneNumber;

  /// Номер телефона, на который отправили смс
  String get phoneNumber => _phoneNumber ?? "";

  /// Сохранить номер телефона, на который отправили смс
  void saveSmsSendNumber(String phoneNumber) {
    this._phoneNumber = phoneNumber;
  }

  AccountRepository(this._apiClient);

  @override
  Future<Either<ErrorsResponse, SmsSendResp>> smsSend(SmsSendRequest request) async {
    try {
      final response = await _apiClient.smsSend(request);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, SmsConfirmResp>> smsConfirm(SmsConfirmRequest request) async {
    try {
      final response = await _apiClient.smsConfirm(request);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, EmailSendResp>> emailSend(EmailSendRequest request) async {
    try {
      final response = await _apiClient.emailSend(request);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, PinConfirmResp>> pinConfirm(PinConfirmRequest request) async {
    try {
      final response = await _apiClient.pinConfirm(request);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, PinSetResp>> pinSet(PinSetRequest request) async {
    try {
      final response = await _apiClient.pinSet(request);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, PinForgotResp>> pinForgot() async {
    try {
      final response = await _apiClient.pinForgot();
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }
}
