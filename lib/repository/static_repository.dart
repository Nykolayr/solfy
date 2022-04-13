import 'package:either_dart/either.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/static/agreements/agreement_response.dart';
import 'package:solfy_flutter/models/api/static/dictionaries/dictionaries_response.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_response.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/repository/istatic_repository.dart';
import 'package:solfy_flutter/services/api/static_api_client.dart';
import 'package:dio/dio.dart';

/// Реализация репозитория, работающего со static-разделом API
class StaticRepository implements IStaticRepository {
  final StaticApiClient _apiClient;

  BitmapDescriptor? icon;

  /// Координаты городов по id города
  Map<int, LatLng> citiesCoordinates = {
    3: LatLng(40.815356, 72.28375),
    2: LatLng(39.768083, 64.455577),
    11: LatLng(40.491509, 68.781077),
    4: LatLng(40.491509, 68.781077),
    5: LatLng(40.125044, 67.880824),
    6: LatLng(38.861192, 65.784727),
    7: LatLng(40.103922, 65.368834),
    8: LatLng(41.005773, 71.643603),
    1: LatLng(41.2994958, 69.24007340000003),
    10: LatLng(37.261069, 67.308624),
    12: LatLng(37.261069, 67.308624),
  };

  DictionariesSuccessResponse? _dictionaries;

  /// Словари
  DictionariesSuccessResponse get dictionaries =>
      _dictionaries ?? DictionariesSuccessResponse.fromJson({});

  GeoSuccessResponse? _geo;

  /// Гео-словари
  GeoSuccessResponse get geo => _geo ?? GeoSuccessResponse.fromJson({});
  StaticRepository(this._apiClient);

  /// Словарь с соглашениями
  Map<AgreementType, String> agreements = {};

  @override
  Future<Either<ErrorsResponse, DictionariesSuccessResponse>>
      getDictionaries() async {
    print('console getDictionaries >>  ${await _apiClient.getDictionaries()}');
    try {
      final response = await _apiClient.getDictionaries();
      return Right(response);
    } on DioError catch (error) {
      print('error getDictionaries == ${error.response}');
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  void saveDictionaries(DictionariesSuccessResponse dictionaries) {
    _dictionaries = dictionaries;
  }

  @override
  Future<Either<ErrorsResponse, GeoSuccessResponse>> getGeo() async {
    try {
      final response = await _apiClient.getGeo();
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  void saveGeo(GeoSuccessResponse geo) {
    _geo = geo;
  }

  @override
  Future<Either<ErrorsResponse, AgreementSuccessResponse>> getAgreement(
      AgreementType type) async {
    try {
      final response =
          await _apiClient.getAgreement(EnumToString.convertToString(type));
      return Right(response);
    } on DioError catch (error) {
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  void saveAgreement(AgreementType type, String agreementContent) {
    agreements[type] = agreementContent;
  }
}
