import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:solfy_flutter/models/api/static/agreements/agreement_response.dart';

import 'package:solfy_flutter/models/api/static/dictionaries/dictionaries_response.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_response.dart';
import 'package:solfy_flutter/services/api/const_api.dart';

part 'static_api_client.g.dart';

// @RestApi(baseUrl: "$apiUrl/static/v1/")
abstract class StaticApiClient {
  factory StaticApiClient(Dio dio, {String baseUrl}) = _StaticApiClient;

  @GET("/dictionaries")
  Future<DictionariesSuccessResponse> getDictionaries();

  @GET("/geo")
  Future<GeoSuccessResponse> getGeo();

  @GET("/agreements/{agreementType}")
  Future<AgreementSuccessResponse> getAgreement(@Path() String agreementType);
}
