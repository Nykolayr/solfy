import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:solfy_flutter/services/api/static_api_client.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';

/// Вспомогательный класс для внедрения зависимостей
class InitialContainer {
  Injector initialise(Injector injector) {
    injector.map<AppRouter>((i) => AppRouter(), isSingleton: true);
    injector.map<FlutterSecureStorage>((i) => FlutterSecureStorage(), isSingleton: true);
    injector.map<Dio>((i) => Dio(), isSingleton: true);
    injector.map<StaticApiClient>((i) => StaticApiClient(i.get<Dio>()), isSingleton: true);
    injector.map<StaticRepository>((i) => StaticRepository(i.get<StaticApiClient>()),
        isSingleton: true);
    return injector;
  }
}
