import 'package:moor/moor.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_response_converter.dart';

/// Таблица для работы с анкетой
class ClientSearchResponseRecords extends Table {
  /// Идентификатор записи
  IntColumn get id => integer().autoIncrement()();

  /// Полученная с сервера анкеты
  TextColumn get clientSearchResponse => text().map(const ClientSearchResponseConverter())();

  /// Анкета, с которой ведется работа (редактирование)
  TextColumn get questionnaire => text().map(const ClientSearchResponseConverter())();

  /// Текущий этап анкеты
  IntColumn get currentStage => integer().withDefault(const Constant(1))();
}
