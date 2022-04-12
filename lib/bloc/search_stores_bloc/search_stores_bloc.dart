import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:solfy_flutter/models/api/catalog/search/search_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';

part 'search_stores_state.dart';
part 'search_stores_event.dart';
part 'search_stores_bloc.freezed.dart';

/// Блок с логикой поиска категорий и брендов
class SearchStoresBloc extends Bloc<SearchStoresEvent, SearchStoresState> {
  final CatalogRepository _catalogRepository;
  String? lastSearchedQuery;
  SearchStoresBloc(this._catalogRepository) : super(const Initial()) {
    on<Search>(
      (event, emit) async {
        await search(emit, event.query);
      },
      transformer: restartable(),
    );

    on<SetCategoryId>((event, emit) {
      _catalogRepository.brandsFilter.categoryId = event.id;
    });
  }

  /// Поиск категорий и магазинов по запросы [query]
  Future<void> search(Emitter<SearchStoresState> emit, String query) async {
    if (query.isEmpty) {
      emit(const EmptyQuery());
      return;
    }
    if (query == lastSearchedQuery) {
      return;
    }
    if (query.trim().length < 3) {
      emit(const LessThenThreeSymbols());
      return;
    }
    emit(const Loading());
    await setFilter();
    lastSearchedQuery = query;
    _catalogRepository.searchRequest.query = query;
    final response = await _catalogRepository.search(_catalogRepository.searchRequest);
    if (response.isRight) {
      if ((response.right.brands?.isEmpty ?? true) &&
          (response.right.categories?.isEmpty ?? true)) {
        emit(const EmptyResults());
      } else {
        final isCategories =
            response.right.categories != null && response.right.categories!.length != 0;
        final isBrands = response.right.brands != null && response.right.brands!.length != 0;
        emit(FoundSuccess(response.right, isCategories, isBrands));
      }
    } else {
      emit(EmptyResults());
    }
  }

  /// Устанавливаем гео-фильтр
  Future<int?> setFilter() async {
    final settings = await UserSettingsDbService.getUserSettings();
    if (settings?.isMyLocation != null && settings!.isMyLocation) {
      final location = await Geolocator.getPositionStream().first;
      _catalogRepository.searchRequest.placeId = null;
      _catalogRepository.searchRequest.longitude = location.longitude.toString();
      _catalogRepository.searchRequest.latitude = location.latitude.toString();
    } else if (settings?.geoCityId != null) {
      _catalogRepository.searchRequest.longitude = null;
      _catalogRepository.searchRequest.latitude = null;
      _catalogRepository.searchRequest.placeId = settings!.geoCityId!.toString();
    }
    return settings?.geoCityId;
  }
}
