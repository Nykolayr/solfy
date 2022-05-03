import 'package:either_dart/either.dart';
import 'package:solfy_flutter/models/api/bank/client_score/clientScoreRequestV2.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_response.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_request.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_request.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:dio/dio.dart';
import 'package:solfy_flutter/repository/ibank_repository.dart';
import 'package:solfy_flutter/services/api/bank_api_client.dart';

/// Реализация репозитория, работающего с bank-разделом API
class BankRepository implements IBankRepository {
  final BankApiClient _apiClient;
  ClientSearchResp? _clientSearchForm;
  ClientSearchResp get phoneNumber => _clientSearchForm ?? ClientSearchResp();

  BankRepository(this._apiClient);

  @override
  Future<Either<ErrorsResponse, ClientSearchResp>> clientSearch(
      ClientSearchRequest request) async {
    try {
      print('console clientSearch1111 ');
      ClientSearchResp? response = await _apiClient.clientSearch(request);
      print('clientSearch3333 === ${response} ');
      return Right(response);
    } on DioError catch (error) {
      print(
          'ошибка clientSearch == ${ErrorsResponse.fromJson(error.response!.data).errors}');
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }

  @override
  Future<Either<ErrorsResponse, ClientScoreResp>> clientScore(
      ClientScoreRequest request) async {
    print('console clientScore ');
    try {
      final response = await _apiClient.clientScore(request);
      print('console clientScore =  ${response.valid}');
      return Right(response);
    } on DioError catch (error) {
      showApi = {
        'status': error.response!.statusMessage,
        'message': error.response!.data
      };
      print('console ошибка ${error.response} ');
      print(
          'console ошибка clientScore == ${ErrorsResponse.fromJson(error.response!.data).errors}');
      return Left(ErrorsResponse.fromJson(error.response!.data));
    }
  }
}
