import 'package:moor/moor.dart';
import 'package:solfy_flutter/database/db_config.dart';

/// Сервис для работы с сущностью UserSettings в БД
class UserSettingsDbService {
  static Database _db = DB.instance;

  /// Сохранить гео-данные пользователя
  static Future<void> saveGeo({int? regionId, int? cityId, bool isMyLocation = false}) async {
    final List<UserSettingsRecord> list = await _db.select(_db.userSettingsRecords).get();
    if (list.isEmpty) {
      await _db.into(_db.userSettingsRecords).insert(
            UserSettingsRecordsCompanion(
              geoRegionId: Value(regionId),
              geoCityId: Value(cityId),
              isMyLocation: Value(isMyLocation),
            ),
          );
    } else {
      _db.update(_db.userSettingsRecords)
        ..where((tbl) => tbl.id.equals(list.first.id))
        ..write(UserSettingsRecordsCompanion(
          geoRegionId: Value(regionId),
          geoCityId: Value(cityId),
          isMyLocation: Value(isMyLocation),
        ));
    }
  }

  /// Сохранить данные о состоянии режима авторизации по биометрии
  static Future<void> saveBiometric(bool biometric) async {
    final List<UserSettingsRecord> list = await _db.select(_db.userSettingsRecords).get();
    if (list.isEmpty) {
      await _db.into(_db.userSettingsRecords).insert(
            UserSettingsRecordsCompanion(
              isBiometricEnabled: Value(biometric),
            ),
          );
    } else {
      _db.update(_db.userSettingsRecords)
        ..where((tbl) => tbl.id.equals(list.first.id))
        ..write(UserSettingsRecordsCompanion(
          isBiometricEnabled: Value(biometric),
        ));
    }
  }

  /// Сохранить актуальную локализацию
  static Future<void> saveLocale(String locale) async {
    final List<UserSettingsRecord> list = await _db.select(_db.userSettingsRecords).get();
    if (list.isEmpty) {
      await _db.into(_db.userSettingsRecords).insert(
            UserSettingsRecordsCompanion(
              locale: Value(locale),
            ),
          );
    } else {
      _db.update(_db.userSettingsRecords)
        ..where((tbl) => tbl.id.equals(list.first.id))
        ..write(UserSettingsRecordsCompanion(
          locale: Value(locale),
        ));
    }
  }

  /// Сохранить последние запросы поиска категорий и магазинов
  static Future<void> saveLastQueries(List<String> queries) async {
    final List<UserSettingsRecord> list = await _db.select(_db.userSettingsRecords).get();
    if (list.isEmpty) {
      await _db.into(_db.userSettingsRecords).insert(
            UserSettingsRecordsCompanion(
              searchLastQueries: Value(queries),
            ),
          );
    } else {
      _db.update(_db.userSettingsRecords)
        ..where((tbl) => tbl.id.equals(list.first.id))
        ..write(UserSettingsRecordsCompanion(
          searchLastQueries: Value(queries),
        ));
    }
  }

  /// Получить все текущие настройки пользователя
  static Future<UserSettingsRecord?> getUserSettings() async {
    final list = await _db.select(_db.userSettingsRecords).get();
    if (list.isNotEmpty) {
      return list.first;
    }
  }

  /// Получить текущую локализацию приложения
  static Future<String> getCurrentLocale() async {
    final list = await _db.select(_db.userSettingsRecords).get();
    if (list.isNotEmpty) {
      return list.first.locale;
    }
    return 'ru';
  }

  /// Получить последние запросы поиска
  static Future<List<String>> getLastQueries() async {
    final list = await _db.select(_db.userSettingsRecords).get();
    if (list.isNotEmpty) {
      return list.first.searchLastQueries ?? [];
    }
    return [];
  }

  /// Очистить записи
  static Future<void> clear() async {
    final List<UserSettingsRecord> list = await _db.select(_db.userSettingsRecords).get();
    list.forEach((element) async {
      await _db.delete(_db.userSettingsRecords).delete(element);
    });
  }
}
