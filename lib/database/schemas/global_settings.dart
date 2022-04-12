import 'package:moor/moor.dart';

/// Схема таблицы GlobalUserSettings (глобальные настройки приложения,
/// не очищаются после выхода из аккаунта)
class GlobalStoreSettings extends Table {
  /// Идентификатор записи
  IntColumn get id => integer().autoIncrement()();

  /// Просмотрена ли обучающая карусель в кошельке
  BoolColumn get isWalletCarouselWatched => boolean().withDefault(const Constant(false))();

  /// Запрашивалось ли гео
  BoolColumn get isGeoRequested => boolean().withDefault(const Constant(false))();

  /// Запрашивалась ли модалка с предложением подписаться на уведомления
  BoolColumn get isNotificationsRequested => boolean().withDefault(const Constant(false))();

  /// Просматривалась ли модалка с фото
  BoolColumn get isPhotoRequested => boolean().withDefault(const Constant(false))();

  /// Просматривалась ли модалка с файлами
  BoolColumn get isFilesRequested => boolean().withDefault(const Constant(false))();

  /// Первый ли это запуск приложения
  BoolColumn get isFirstRun => boolean().withDefault(const Constant(true))();
}
