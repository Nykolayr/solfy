import 'package:either_dart/either.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_response.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_request.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';

/// Интерфейс репозитория, работающего с bank-разделом API
abstract class IBankRepository {
  /// Получаем данные клиента для анкеты
  Future<Either<ErrorsResponse, ClientSearchResp>> clientSearch(ClientSearchRequest request);

  /// Отправляем анкету
  Future<Either<ErrorsResponse, ClientScoreResp>> clientScore(ClientScoreRequest request);
}
