import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:solfy_flutter/models/api/bank/client_score/clientScoreRequestV2.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_response.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_request.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_response.dart';

part 'bank_api_client.g.dart';

@RestApi(baseUrl: "https://api-edge.docu.ru/bank/v2/")
abstract class BankApiClient {
  factory BankApiClient(Dio dio, {String baseUrl}) = _BankApiClient;

  @POST("/client_search")
  Future<ClientSearchResp> clientSearch(@Body() ClientSearchRequest request);
// перехват requset
  @POST("/client_score")
  Future<ClientScoreResp> clientScore(@Body() ClientScoreRequest request);
}
