import 'package:moor/moor.dart';
import 'package:solfy_flutter/models/search_last_queries_converter.dart';

/// Схема таблицы UserSettings (настройки приложения, которые сбрасываются
/// после выхода из аккаунта)
class UserSettingsRecords extends Table {
  /// Идентификатор записи
  IntColumn get id => integer().autoIncrement()();

  /// Идентификатор региона (deprecated)
  IntColumn get geoRegionId => integer().nullable()();

  /// Идентификатор города
  IntColumn get geoCityId => integer().nullable()();

  /// Включен ли режим "Рядом со мной"
  BoolColumn get isMyLocation => boolean().withDefault(const Constant(false))();

  /// Включен ли режим входа по биометрии
  BoolColumn get isBiometricEnabled => boolean().withDefault(const Constant(false))();

  /// Просматривалась ли обучающая карусель в кошельке (deprecated)
  BoolColumn get isWalletCarouselWatched => boolean().withDefault(const Constant(false))();

  /// Последние запросы поиска категорий и магазинов
  TextColumn get searchLastQueries => text().map(const SearchLastQueriesConverter()).nullable()();

  /// Текущая локализация
  TextColumn get locale => text().withDefault(const Constant("ru"))();
}
