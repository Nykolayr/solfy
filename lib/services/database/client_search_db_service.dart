import 'package:moor/moor.dart';
import 'package:solfy_flutter/database/db_config.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_response.dart';

/// Сервис для работы с сущностью ClientSearch в БД
class ClientSearchDbService {
  final Database _db = DB.instance;

  /// Сохранение ответа метода с получением анкеты клиента
  Future<void> saveClientSearchResponse(ClientSearchResponse response) async {
    final List<ClientSearchResponseRecord> list =
        await _db.select(_db.clientSearchResponseRecords).get();
    if (list.isEmpty) {
      await _db.into(_db.clientSearchResponseRecords).insert(
            ClientSearchResponseRecordsCompanion(
              clientSearchResponse: Value(response),
              questionnaire: Value(response),
            ),
          );
    } else {
      _db.update(_db.clientSearchResponseRecords)
        ..where((tbl) => tbl.id.equals(list.first.id))
        ..write(
          ClientSearchResponseRecordsCompanion(
            clientSearchResponse: Value(response),
            questionnaire: Value(response),
          ),
        );
    }
  }

  /// Обновление анкеты в бд
  Future<void> updateQuestionnaire(ClientSearchResponse response) async {
    final List<ClientSearchResponseRecord> list =
        await _db.select(_db.clientSearchResponseRecords).get();
    if (list.isNotEmpty) {
      _db.update(_db.clientSearchResponseRecords)
        ..where((tbl) => tbl.id.equals(list.first.id))
        ..write(
          ClientSearchResponseRecordsCompanion(
            questionnaire: Value(response),
          ),
        );
    }
  }

  /// Обновление текущего шага анкеты
  Future<void> updateCurrentStage(int newStage) async {
    final List<ClientSearchResponseRecord> list =
        await _db.select(_db.clientSearchResponseRecords).get();
    if (list.isNotEmpty) {
      if (list.first.currentStage < newStage) {
        _db.update(_db.clientSearchResponseRecords)
          ..where((tbl) => tbl.id.equals(list.first.id))
          ..write(
            ClientSearchResponseRecordsCompanion(
              currentStage: Value(newStage),
            ),
          );
      }
    }
  }

  /// Получение сохраненной записи анкеты клиента
  Future<ClientSearchResponseRecord?> getClientSearchResponse() async {
    final list = await _db.select(_db.clientSearchResponseRecords).get();
    if (list.isNotEmpty) {
      return list.first;
    }
    return null;
  }

  /// Получение текущей стадии анкеты
  Future<int> getCurrentStage() async {
    final list = await _db.select(_db.clientSearchResponseRecords).get();
    if (list.isNotEmpty) {
      return list.first.currentStage;
    }
    return 1;
  }

  /// Очистка записей
  Future<void> clear() async {
    final List<ClientSearchResponseRecord> list =
        await _db.select(_db.clientSearchResponseRecords).get();
    list.forEach((element) async {
      await _db.delete(_db.clientSearchResponseRecords).delete(element);
    });
  }
}
