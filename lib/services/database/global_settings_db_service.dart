import 'package:moor/moor.dart';
import 'package:solfy_flutter/database/db_config.dart';

/// Сервис для работы с сущностью GlobalSettings в БД
class GlobalSettingsDbService {
  static Database _db = DB.instance;

  /// Отметить карусель кошелька, как просмотренную
  static Future<void> markWalletCarouselWatched() async {
    final List<GlobalStoreSetting> list = await _db.select(_db.globalStoreSettings).get();
    if (list.isEmpty) {
      await _db.into(_db.globalStoreSettings).insert(
            GlobalStoreSettingsCompanion(
              isWalletCarouselWatched: Value(true),
            ),
          );
    } else {
      _db.update(_db.globalStoreSettings)
        ..where((tbl) => tbl.id.equals(list.first.id))
        ..write(GlobalStoreSettingsCompanion(
          isWalletCarouselWatched: Value(true),
        ));
    }
  }

  /// Установить маркер первого запуска
  static Future<void> markFirstRun() async {
    final List<GlobalStoreSetting> list = await _db.select(_db.globalStoreSettings).get();
    if (list.isEmpty) {
      await _db.into(_db.globalStoreSettings).insert(
            GlobalStoreSettingsCompanion(
              isFirstRun: Value(false),
            ),
          );
    } else {
      _db.update(_db.globalStoreSettings)
        ..where((tbl) => tbl.id.equals(list.first.id))
        ..write(GlobalStoreSettingsCompanion(
          isFirstRun: Value(false),
        ));
    }
  }

  /// Отметить модалку с гео, как просмотренную
  static Future<void> markGeoRequested() async {
    final List<GlobalStoreSetting> list = await _db.select(_db.globalStoreSettings).get();
    if (list.isEmpty) {
      await _db.into(_db.globalStoreSettings).insert(
            GlobalStoreSettingsCompanion(
              isGeoRequested: Value(true),
            ),
          );
    } else {
      _db.update(_db.globalStoreSettings)
        ..where((tbl) => tbl.id.equals(list.first.id))
        ..write(GlobalStoreSettingsCompanion(
          isGeoRequested: Value(true),
        ));
    }
  }

  /// Отметить модалку с подпиской на уведомления, как просмотренную
  static Future<void> markNotificationRequested() async {
    final List<GlobalStoreSetting> list = await _db.select(_db.globalStoreSettings).get();
    if (list.isEmpty) {
      await _db.into(_db.globalStoreSettings).insert(
            GlobalStoreSettingsCompanion(
              isNotificationsRequested: Value(true),
            ),
          );
    } else {
      _db.update(_db.globalStoreSettings)
        ..where((tbl) => tbl.id.equals(list.first.id))
        ..write(GlobalStoreSettingsCompanion(
          isNotificationsRequested: Value(true),
        ));
    }
  }

  /// Отметить модалку с фото, как просмотренную
  static Future<void> markPhotoRequested() async {
    final List<GlobalStoreSetting> list = await _db.select(_db.globalStoreSettings).get();
    if (list.isEmpty) {
      await _db.into(_db.globalStoreSettings).insert(
            GlobalStoreSettingsCompanion(
              isPhotoRequested: Value(true),
            ),
          );
    } else {
      _db.update(_db.globalStoreSettings)
        ..where((tbl) => tbl.id.equals(list.first.id))
        ..write(GlobalStoreSettingsCompanion(
          isPhotoRequested: Value(true),
        ));
    }
  }

  /// Отметить модалку с файлами, как просмотренную
  static Future<void> markFilesRequested() async {
    final List<GlobalStoreSetting> list = await _db.select(_db.globalStoreSettings).get();
    if (list.isEmpty) {
      await _db.into(_db.globalStoreSettings).insert(
            GlobalStoreSettingsCompanion(
              isFilesRequested: Value(true),
            ),
          );
    } else {
      _db.update(_db.globalStoreSettings)
        ..where((tbl) => tbl.id.equals(list.first.id))
        ..write(GlobalStoreSettingsCompanion(
          isFilesRequested: Value(true),
        ));
    }
  }

  /// Просмотрена ли карусель в кошельке
  static Future<bool> isWalletCarouselWatched() async {
    final list = await _db.select(_db.globalStoreSettings).get();
    if (list.isNotEmpty) {
      return list.first.isWalletCarouselWatched;
    }
    return false;
  }

  /// Просмотрена ли модалка с гео
  static Future<bool> isGeoRequested() async {
    final list = await _db.select(_db.globalStoreSettings).get();
    if (list.isNotEmpty) {
      return list.first.isGeoRequested;
    }
    return false;
  }

  /// Первый ли это запуск приложения
  static Future<bool> isFirstRun() async {
    final list = await _db.select(_db.globalStoreSettings).get();
    if (list.isNotEmpty) {
      return list.first.isFirstRun;
    }
    return true;
  }

  /// Просмотрена ли модалка с подпиской на уведомления
  static Future<bool> isNotificationsRequested() async {
    final list = await _db.select(_db.globalStoreSettings).get();
    if (list.isNotEmpty) {
      return list.first.isNotificationsRequested;
    }
    return false;
  }

  /// Просмотрена ли модалка с фото
  static Future<bool> isPhotoRequested() async {
    final list = await _db.select(_db.globalStoreSettings).get();
    if (list.isNotEmpty) {
      return list.first.isPhotoRequested;
    }
    return false;
  }

  /// Просмотрена ли модалка с файлами
  static Future<bool> isFilesRequested() async {
    final list = await _db.select(_db.globalStoreSettings).get();
    if (list.isNotEmpty) {
      return list.first.isFilesRequested;
    }
    return false;
  }
}
