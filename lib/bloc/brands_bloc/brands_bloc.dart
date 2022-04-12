import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:solfy_flutter/bloc/region_search_bloc/region_search_bloc.dart';
import 'package:solfy_flutter/models/api/catalog/brands/brands_response.dart';
import 'package:solfy_flutter/models/api/catalog/filter_request.dart';
import 'package:solfy_flutter/models/api/catalog/points/points_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/entities/catalog/brands/brands_view_model.dart';
import 'package:solfy_flutter/models/entities/catalog/point_item_view_model.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';

part 'brands_state.dart';
part 'brands_event.dart';
part 'brands_bloc.freezed.dart';

enum CurrentTab { list, map }

/// Блок с логикой загрузки брендов по категории
class BrandsBloc extends Bloc<BrandsEvent, BrandsState> {
  final CatalogRepository _catalogRepository;

  // Блок с изменением регионов
  final RegionSearchBloc _regionSearchBloc;
  late final StreamSubscription _regionSearchBlocSubscription;

  BrandsBloc(this._catalogRepository, this._regionSearchBloc) : super(const Initial()) {
    // Слушаем успешные изменения региона и обновляем страницу
    _regionSearchBlocSubscription = _regionSearchBloc.stream.listen((state) {
      if (state is SetSuccess) {
        this.add(GetBrands());
      }
    });

    on<GetBrands>((event, emit) async {
      await getBrands(emit);
    });
  }

  @override
  Future<void> close() {
    _regionSearchBlocSubscription.cancel();
    return super.close();
  }

  /// Получение брендов
  Future<void> getBrands(Emitter<BrandsState> emit) async {
    final filterMap = <CurrentTab, FilterRequest>{};
    filterMap[CurrentTab.list] = _catalogRepository.brandsFilter;
    filterMap[CurrentTab.map] = _catalogRepository.brandsMapFilter;
    emit(Loading(filterMap));
    final cityId = await setGeoFilter();
    final response = await _catalogRepository.getBrands(_catalogRepository.brandsFilter);
    final points = await _catalogRepository.getPoints(_catalogRepository.brandsMapFilter);
    if (response.isRight && points.isRight) {
      final brands = await response.right.getModel();
      final mapPoints = points.right.getPoints();
      // Локальная сортировка по расстоянию
      if (_catalogRepository.brandsFilter.sort == "distance") {
        brands.brands.sort((a, b) => int.parse(a.distance?.split(" ")[0] ?? "0 ")
            .compareTo(int.parse(b.distance?.split(" ")[0] ?? "0 ")));
      }
      emit(GetBrandsSuccess(
        brands: brands,
        points: mapPoints,
        cityId: cityId,
      ));
    } else {
      if (response.isLeft) {
        emit(GetBrandsError(response.left));
      }
      if (points.isLeft) {
        emit(GetBrandsError(points.left));
      }
    }
  }

  /// Устанавливаем гео-фильтр
  Future<int?> setGeoFilter() async {
    final settings = await UserSettingsDbService.getUserSettings();
    if (settings?.isMyLocation != null && settings!.isMyLocation) {
      // Если включен режим "Рядом со мной", устанавливаем в фильтр локацию пользователя
      final location = await Geolocator.getPositionStream().first;
      _catalogRepository.brandsFilter.latitude = location.latitude.toString();
      _catalogRepository.brandsFilter.longitude = location.longitude.toString();
      _catalogRepository.brandsFilter.placeId = null;
    } else if (settings?.geoCityId != null) {
      // Если режим рядом со мной выключен, то устанавливаем в фильтр placeId
      _catalogRepository.brandsFilter.longitude = null;
      _catalogRepository.brandsFilter.latitude = null;
      _catalogRepository.brandsFilter.placeId = settings!.geoCityId!.toString();
    }
    return settings?.geoCityId;
  }
}
