import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:solfy_flutter/bloc/base_tab_updater_bloc/base_tab_updater_bloc.dart';
import 'package:solfy_flutter/bloc/language_changer_bloc/language_changer_bloc.dart';
import 'package:solfy_flutter/bloc/region_search_bloc/region_search_bloc.dart';
import 'package:solfy_flutter/models/api/catalog/categories/categories_request.dart';
import 'package:solfy_flutter/models/api/catalog/categories/categories_response.dart';
import 'package:solfy_flutter/models/api/catalog/filter_request.dart';
import 'package:solfy_flutter/models/api/catalog/points/points_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/entities/catalog/categories/categories_view_model.dart';
import 'package:solfy_flutter/models/entities/catalog/point_item_view_model.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';

part 'categories_state.dart';
part 'categories_event.dart';
part 'categories_bloc.freezed.dart';

/// Блок с логикой получения категорий
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CatalogRepository _catalogRepository;

  // Блок с изменением регионов
  final RegionSearchBloc _regionSearchBloc;
  late final StreamSubscription _regionSearchBlocSubscription;

  // Блок со сменой языка
  final LanguageChangerBloc _languageBloc;
  late final StreamSubscription _languageBlocSubscription;

  // Блок с обновлением при переключении вкладки
  final BaseTabUpdaterBloc _tabUpdaterBloc;
  late final StreamSubscription _tabUpdaterBlocSubscription;
  CategoriesBloc(
    this._catalogRepository,
    this._regionSearchBloc,
    this._languageBloc,
    this._tabUpdaterBloc,
  ) : super(const Initial()) {
    // Слушаем успешные изменения региона и обновляем страницу
    _regionSearchBlocSubscription = _regionSearchBloc.stream.listen((state) {
      if (state is SetSuccess) {
        this.add(const GetCategories());
      }
    });

    // Слушаем успешную смену языка и обновляем страницу
    _languageBlocSubscription = _languageBloc.stream.listen((state) {
      if (state is LanguageChanged) {
        this.add(const GetCategories());
      }
    });

    // Слушаем переключение вкладки и обновляем страницу
    _tabUpdaterBlocSubscription = _tabUpdaterBloc.stream.listen((state) {
      if (state is CatalogUpdate) {
        this.add(const GetCategories());
      }
    });

    on<GetCategories>((event, emit) async {
      await getCategories(emit);
    });

    on<SetCategoryId>((event, emit) {
      setCategoryId(event.categoryId);
    });
  }

  @override
  Future<void> close() {
    _regionSearchBlocSubscription.cancel();
    _languageBlocSubscription.cancel();
    _tabUpdaterBlocSubscription.cancel();
    return super.close();
  }

  /// Получение категорий
  Future<void> getCategories(Emitter<CategoriesState> emit) async {
    emit(Loading(_catalogRepository.categoriesMapFilter));
    final cityId = await setFilter();
    final response = await _catalogRepository.getCategories(_catalogRepository.categoriesFilter);
    final points = await _catalogRepository.getPoints(_catalogRepository.categoriesMapFilter);
    if (response.isRight && points.isRight) {
      final categories = response.right.getModel();
      final mapPoints = points.right.getPoints();
      emit(GetCategoriesSuccess(
        categories: categories,
        points: mapPoints,
        cityId: cityId,
      ));
    } else {
      if (response.isLeft) {
        emit(GetCategoriesError(response.left));
      } else if (points.isLeft) {
        emit(GetCategoriesError(points.left));
      }
    }
  }

  /// Установка в фильтры идентификатора категории
  void setCategoryId(int? categoryId) {
    if (categoryId != null) {
      _catalogRepository.brandsFilter.categoryId = categoryId;
      _catalogRepository.brandsMapFilter.categoryId = categoryId;
      _catalogRepository.shopsFilter.categoryId = categoryId;
    }
  }

  /// Устанавливаем гео-фильтр
  Future<int?> setFilter() async {
    final settings = await UserSettingsDbService.getUserSettings();
    if (settings?.isMyLocation != null && settings!.isMyLocation) {
      // Если включен режим "Рядом со мной", устанавливаем в фильтр локацию пользователя
      final location = await Geolocator.getPositionStream().first;
      _catalogRepository.categoriesFilter = CategoriesRequest(
        latitude: location.latitude.toString(),
        longitude: location.longitude.toString(),
      );
    } else if (settings?.geoCityId != null) {
      // Если режим рядом со мной выключен, то устанавливаем в фильтр placeId
      _catalogRepository.categoriesFilter.longitude = null;
      _catalogRepository.categoriesFilter.latitude = null;
      _catalogRepository.categoriesFilter.placeId = settings!.geoCityId!.toString();
    }
    return settings?.geoCityId;
  }
}
