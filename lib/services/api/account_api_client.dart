import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:solfy_flutter/main.dart';
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
import 'package:solfy_flutter/services/api/const_api.dart';

part 'account_api_client.g.dart';

// @RestApi(baseUrl:  apiUrlV1 )
abstract class AccountApiClient {
  factory AccountApiClient(Dio dio, {String baseUrl}) = _AccountApiClient;

  @POST("/sms_send")
  Future<SmsSendResp> smsSend(@Body() SmsSendRequest request);

  @POST("/sms_confirm")
  Future<SmsConfirmResp> smsConfirm(@Body() SmsConfirmRequest request);

  @POST("/email_send")
  Future<EmailSendResp> emailSend(@Body() EmailSendRequest request);

  @POST("/pin_set")
  Future<PinSetResp> pinSet(@Body() PinSetRequest request);

  @POST("/pin_confirm")
  Future<PinConfirmResp> pinConfirm(@Body() PinConfirmRequest request);

  @POST("/pin_forgot")
  Future<PinForgotResp> pinForgot();
}
