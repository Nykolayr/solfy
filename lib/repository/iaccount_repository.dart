import 'package:either_dart/either.dart';
import 'package:solfy_flutter/models/api/account/email_send/email_send_request.dart';
import 'package:solfy_flutter/models/api/account/email_send/email_send_response.dart';
import 'package:solfy_flutter/models/api/account/pin_confirm/pin_confirm_request.dart';
import 'package:solfy_flutter/models/api/account/pin_confirm/pin_confirm_response.dart';
import 'package:solfy_flutter/models/api/account/pin_forgot/pin_forgot_response.dart';
import 'package:solfy_flutter/models/api/account/pin_set/pin_set_request.dart';
import 'package:solfy_flutter/models/api/account/pin_set/pin_set_response.dart';
import 'package:solfy_flutter/models/api/account/sms_confirm/sms_confirm_request.dart';
import 'package:solfy_flutter/models/api/account/sms_confirm/sms_confirm_response.dart';
import 'package:solfy_flutter/models/api/account/sms_send/sms_send_request.dart';
import 'package:solfy_flutter/models/api/account/sms_send/sms_send_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';

/// Интерфейс репозитория, работающего с account-разделом API
abstract class IAccountRepository {
  /// Отправка sms-кода на номер телефона из [request]
  Future<Either<ErrorsResponse, SmsSendResp>> smsSend(SmsSendRequest request);

  /// Подтверждение sms-кода с помощью кода из [request]
  Future<Either<ErrorsResponse, SmsConfirmResp>> smsConfirm(SmsConfirmRequest request);

  /// Сохраняем email с помощью email из [response]
  Future<Either<ErrorsResponse, EmailSendResp>> emailSend(EmailSendRequest request);

  /// Отправляем pin-код с помощью pin из [response]
  Future<Either<ErrorsResponse, PinSetResp>> pinSet(PinSetRequest request);

  /// Подтверждаем pin-код с помощью pin из [response]
  Future<Either<ErrorsResponse, PinConfirmResp>> pinConfirm(PinConfirmRequest request);

  /// Забыли пин-код
  Future<Either<ErrorsResponse, PinForgotResp>> pinForgot();
}
