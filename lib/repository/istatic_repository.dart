import 'package:either_dart/either.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/static/agreements/agreement_response.dart';
import 'package:solfy_flutter/models/api/static/dictionaries/dictionaries_response.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_response.dart';
import 'package:solfy_flutter/models/enums.dart';

/// Интерфейс репозитория, работающего со static-разделом API
abstract class IStaticRepository {
  /// Получение словарей с сервера
  Future<Either<ErrorsResponse, DictionariesSuccessResponse>> getDictionaries();

  /// Получение гео-словарей с сервера
  Future<Either<ErrorsResponse, GeoSuccessResponse>> getGeo();

  /// Получение соглашения с серверу
  ///
  /// [type] – тип соглашения
  Future<Either<ErrorsResponse, AgreementSuccessResponse>> getAgreement(AgreementType type);
}
