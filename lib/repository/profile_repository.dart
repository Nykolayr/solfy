import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/profile/email_update/email_update_response.dart';
import 'package:solfy_flutter/models/api/profile/email_update/email_update_request.dart';
import 'package:solfy_flutter/models/api/profile/faq/faq_response.dart';
import 'package:solfy_flutter/models/api/profile/feed/feed_response.dart';
import 'package:solfy_flutter/models/api/profile/feeds/feeds_response.dart';
import 'package:solfy_flutter/models/api/profile/get_profile/get_profile_item_response.dart';
import 'package:solfy_flutter/models/api/profile/get_profile/get_profile_response.dart';
import 'package:solfy_flutter/models/api/profile/get_settings/get_settings_response.dart';
import 'package:solfy_flutter/models/api/profile/pin_check/pin_check_request.dart';
import 'package:solfy_flutter/models/api/profile/pin_check/pin_check_response.dart';
import 'package:solfy_flutter/models/api/profile/pin_update/pin_update_response.dart';
import 'package:solfy_flutter/models/api/profile/pin_update/pin_update_request.dart';
import 'package:solfy_flutter/models/api/profile/report/report_request.dart';
import 'package:solfy_flutter/models/api/profile/report/report_response.dart';
import 'package:solfy_flutter/models/api/profile/set_settings/set_settings_response.dart';
import 'package:solfy_flutter/models/api/profile/set_settings/set_settings_request.dart';
import 'package:solfy_flutter/repository/iprofile_repository.dart';
import 'package:dio/dio.dart';
import 'package:solfy_flutter/services/api/profile_api_client.dart';

/// Реализация репозитория, работающего со profile-разделом API
class ProfileRepository implements IProfileRepository {
  final ProfileApiClient _apiClient;

  ProfileRepository(this._apiClient);

  GetProfileItemResponse? profile;
  bool isMyLocationEnabled = false;
  int? cityId;

  @override
  Future<Either<ErrorsResponse, PinCheckResp>> pinCheck(
      PinCheckRequest request) async {
    try {
      final response = await _apiClient.pinCheck(request);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, FeedsResp>> getFeeds() async {
    try {
      final response = await _apiClient.getFeeds();
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, GetProfileResp>> getProfile() async {
    try {
      final response = await _apiClient.getProfile();
      profile = response.profile;
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, EmailUpdateResp>> updateEmail(
      EmailUpdateRequest request) async {
    try {
      final response = await _apiClient.updateEmail(request);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, FaqResp>> getFaq() async {
    try {
      final response = await _apiClient.getFaq();
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, ReportResp>> sendLetter(
      ReportRequest request, List<File> images) async {
    try {
      final response = await _apiClient.sendLetter(
          request.email, request.message, "{}", images);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, GetSettingsResp>> getSettings() async {
    try {
      final response = await _apiClient.getSettings();
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, SetSettingsResp>> setSettings(
      SetSettingsRequest request) async {
    try {
      final response = await _apiClient.setSettings(request);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, PinUpdateResp>> pinUpdate(
      PinUpdateRequest request) async {
    try {
      final response = await _apiClient.pinUpdate(request);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, FeedResp>> getFeed(String id) async {
    try {
      final response = await _apiClient.getFeed(id);
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }
}
