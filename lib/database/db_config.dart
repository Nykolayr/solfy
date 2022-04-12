import 'dart:io';
import 'package:moor/moor.dart';
import 'package:moor/ffi.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:solfy_flutter/database/schemas/client_search_response_records.dart';
import 'package:solfy_flutter/database/schemas/global_settings.dart';
import 'package:solfy_flutter/database/schemas/user_settings_records.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_response.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_response_converter.dart';
import 'package:solfy_flutter/models/search_last_queries_converter.dart';

part 'db_config.g.dart';

/// БД
@UseMoor(tables: [UserSettingsRecords, ClientSearchResponseRecords, GlobalStoreSettings])
class Database extends _$Database {
  Database() : super(_openConnection());

  /// Открываем файл с БД
  static LazyDatabase _openConnection() {
    // the LazyDatabase util lets us find the right location for the file async.
    return LazyDatabase(() async {
      // put the database file, called db.sqlite here, into the documents folder
      // for your app.
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'database.sqlite'));
      Directory(dbFolder.path).create(recursive: true);
      return VmDatabase(file);
    });
  }

  /// Версия БД
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) {
          return m.createAll();
        },
        onUpgrade: (Migrator m, int from, int to) async {
          for (var migration in migrations.skip(from - 1)) {
            await migration(m);
          }
        },
      );

  List<Future<void> Function(Migrator m)> get migrations => [];
}

/// Синглтон с коннекшеном к БД
class DB {
  static Database? _instance;

  /// Инстанс для работы с БД
  static Database get instance {
    if (_instance == null) {
      _instance = new Database();
    }
    return _instance!;
  }
}
