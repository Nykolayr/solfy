import 'package:dio/dio.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/models/api/bank/card/catd_repositores.dart';
import 'package:solfy_flutter/repository/account_repository.dart';
import 'package:solfy_flutter/repository/bank_repository.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';
import 'package:solfy_flutter/repository/wallet_repository.dart';
import 'package:solfy_flutter/services/api/account_api_client.dart';
import 'package:solfy_flutter/services/api/bank_api_client.dart';
import 'package:solfy_flutter/services/api/catalog_api_client.dart';
import 'package:solfy_flutter/services/api/profile_api_client.dart';
import 'package:solfy_flutter/services/api/wallet_api_client.dart';
import 'package:solfy_flutter/services/database/client_search_db_service.dart';

/// Вспомогательный класс для внедрения зависимостей
class MainContainer {
  Injector initialise(Injector injector) {
    injector.map<Dio>((i) => Dio(), isSingleton: true);
    injector.map<AccountApiClient>((i) => AccountApiClient(i.get<Dio>()),
        isSingleton: true);
    injector.map<ProfileApiClient>((i) => ProfileApiClient(i.get<Dio>()),
        isSingleton: true);
    injector.map<BankApiClient>((i) => BankApiClient(i.get<Dio>()),
        isSingleton: true);
    injector.map<WalletApiClient>((i) => WalletApiClient(i.get<Dio>()),
        isSingleton: true);
    injector.map<CatalogApiClient>((i) => CatalogApiClient(i.get<Dio>()),
        isSingleton: true);
    injector.map<CatalogRepository>(
        (i) => CatalogRepository(i.get<CatalogApiClient>()),
        isSingleton: true);
    injector.map<ProfileRepository>(
        (i) => ProfileRepository(i.get<ProfileApiClient>()),
        isSingleton: true);
    injector.map<AccountRepository>(
        (i) => AccountRepository(i.get<AccountApiClient>()),
        isSingleton: true);
    injector.map<WalletRepository>(
        (i) => WalletRepository(i.get<WalletApiClient>()),
        isSingleton: true);
    injector.map<CardRepository>(
        (i) => CardRepository(
              apiClient: i.get<WalletApiClient>(),
            ),
        isSingleton: true);
    injector.map<ClientSearchDbService>((i) => ClientSearchDbService(),
        isSingleton: true);
    injector.map<BankRepository>((i) => BankRepository(i.get<BankApiClient>()),
        isSingleton: true);
    return injector;
  }
}
