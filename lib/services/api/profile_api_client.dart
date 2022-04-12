import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:retrofit/retrofit.dart';
import 'package:solfy_flutter/models/api/profile/email_update/email_update_request.dart';
import 'package:solfy_flutter/models/api/profile/email_update/email_update_response.dart';
import 'package:solfy_flutter/models/api/profile/faq/faq_response.dart';
import 'package:solfy_flutter/models/api/profile/feed/feed_response.dart';
import 'package:solfy_flutter/models/api/profile/feeds/feeds_response.dart';
import 'package:solfy_flutter/models/api/profile/get_profile/get_profile_response.dart';
import 'package:solfy_flutter/models/api/profile/get_settings/get_settings_response.dart';
import 'package:solfy_flutter/models/api/profile/pin_check/pin_check_request.dart';
import 'package:solfy_flutter/models/api/profile/pin_check/pin_check_response.dart';
import 'package:solfy_flutter/models/api/profile/pin_update/pin_update_request.dart';
import 'package:solfy_flutter/models/api/profile/pin_update/pin_update_response.dart';
import 'package:solfy_flutter/models/api/profile/report/report_response.dart';
import 'package:solfy_flutter/models/api/profile/set_settings/set_settings_request.dart';
import 'package:solfy_flutter/models/api/profile/set_settings/set_settings_response.dart';

part 'profile_api_client.g.dart';

@RestApi(baseUrl: "https://api-edge.docu.ru/profile/")
abstract class ProfileApiClient {
  factory ProfileApiClient(Dio dio, {String baseUrl}) = _ProfileApiClient;

  @POST("v1/pin_check")
  Future<PinCheckResp> pinCheck(@Body() PinCheckRequest request);

  @POST("v1/pin_update")
  Future<PinUpdateResp> pinUpdate(@Body() PinUpdateRequest request);

  @GET("v1/feeds")
  Future<FeedsResp> getFeeds();

  @GET("v1/feed/{id}")
  Future<FeedResp> getFeed(@Path() String id);

  @GET("v1")
  Future<GetProfileResp> getProfile();

  @GET("v1/faq")
  Future<FaqResp> getFaq();

  @GET("v1/settings")
  Future<GetSettingsResp> getSettings();

  @POST("v1/settings")
  Future<SetSettingsResp> setSettings(@Body() SetSettingsRequest request);

  @POST("v1/report")
  Future<ReportResp> sendLetter(
      @Part(contentType: "application/json") String email,
      @Part(contentType: "application/json") String message,
      @Part(name: "additional_data", contentType: "application/json") String additionalData,
      @Part(name: "files[]", contentType: "application/json") List<File> images);

  @POST("v1/email_update")
  Future<EmailUpdateResp> updateEmail(@Body() EmailUpdateRequest request);
}
