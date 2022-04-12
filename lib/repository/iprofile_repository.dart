import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
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
import 'package:solfy_flutter/models/api/profile/report/report_request.dart';
import 'package:solfy_flutter/models/api/profile/report/report_response.dart';
import 'package:solfy_flutter/models/api/profile/set_settings/set_settings_request.dart';
import 'package:solfy_flutter/models/api/profile/set_settings/set_settings_response.dart';

/// Интерфейс репозитория, работающего с profile-разделом API
abstract class IProfileRepository {
  /// Проверка пин-кода на валидность по коду из [request]
  Future<Either<ErrorsResponse, PinCheckResp>> pinCheck(PinCheckRequest request);

  /// Установка нового пин-кода по коду из [request]
  Future<Either<ErrorsResponse, PinUpdateResp>> pinUpdate(PinUpdateRequest request);

  /// Получение всех новостей
  Future<Either<ErrorsResponse, FeedsResp>> getFeeds();

  /// Получение новости по [id]
  Future<Either<ErrorsResponse, FeedResp>> getFeed(String id);

  /// Получение профиля
  Future<Either<ErrorsResponse, GetProfileResp>> getProfile();

  /// Получение faq
  Future<Either<ErrorsResponse, FaqResp>> getFaq();

  /// Получение настроек пользователя
  Future<Either<ErrorsResponse, GetSettingsResp>> getSettings();

  /// Сохранение настроек пользователя
  Future<Either<ErrorsResponse, SetSettingsResp>> setSettings(SetSettingsRequest request);

  /// Обновление email'а
  Future<Either<ErrorsResponse, EmailUpdateResp>> updateEmail(EmailUpdateRequest request);

  /// Отправка письма
  Future<Either<ErrorsResponse, ReportResp>> sendLetter(ReportRequest request, List<File> images);
}
