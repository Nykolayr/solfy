import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:solfy_flutter/bloc/region_search_bloc/region_search_bloc.dart';
import 'package:solfy_flutter/models/api/catalog/filter_request.dart';
import 'package:solfy_flutter/models/api/catalog/shops/shops_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/entities/wallet/shops_view_model.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';

part 'store_shops_update_state.dart';
part 'store_shops_update_event.dart';
part 'store_shops_update_bloc.freezed.dart';

/// Блок с логикой загрузки магазинов на странице бренда
class StoreShopsUpdateBloc extends Bloc<StoreShopsUpdateEvent, StoreShopsUpdateState> {
  final CatalogRepository _catalogRepository;

  // Блок с изменением регионов
  final RegionSearchBloc _regionSearchBloc;
  late final StreamSubscription _regionSearchBlocSubscription;

  StoreShopsUpdateBloc(this._catalogRepository, this._regionSearchBloc) : super(const Initial()) {
    // Слушаем успешные изменения региона и обновляем магазины
    _regionSearchBlocSubscription = _regionSearchBloc.stream.listen((state) {
      if (state is SetSuccess) {
        this.add(const GetShops());
      }
    });

    on<GetShops>((event, emit) async {
      await getShops(emit);
    });
  }

  @override
  Future<void> close() {
    if (this.state is GetShopsSuccess || this.state is GetShopsError) {
      _regionSearchBlocSubscription.cancel();
      return super.close();
    }
    return Future.delayed(Duration(seconds: 0));
  }

  /// Получаем магазины
  Future<void> getShops(Emitter<StoreShopsUpdateState> emit) async {
    emit(Loading(_catalogRepository.shopsFilter));
    await setGeoFilter();
    final response = await _catalogRepository.getShops(_catalogRepository.shopsFilter);
    await Future<void>.delayed(const Duration(milliseconds: 50));
    if (response.isRight) {
      final shops = await response.right.getModel();
      if (_catalogRepository.shopsFilter.sort == "distance") {
        shops.shops.sort((a, b) => int.parse(a.distance?.split(" ")[0] ?? "0 ")
            .compareTo(int.parse(b.distance?.split(" ")[0] ?? "0 ")));
      }
      emit(GetShopsSuccess(await response.right.getModel()));
    } else {
      if (response.isLeft) {
        emit(GetShopsError(response.left));
      }
    }
  }

  /// Устанавливаем гео-фильтр
  Future<int?> setGeoFilter() async {
    final settings = await UserSettingsDbService.getUserSettings();
    if (settings?.isMyLocation != null && settings!.isMyLocation) {
      final location = await Geolocator.getPositionStream().first;
      _catalogRepository.shopsFilter.latitude = location.latitude.toString();
      _catalogRepository.shopsFilter.longitude = location.longitude.toString();
      _catalogRepository.shopsFilter.placeId = null;
    } else if (settings?.geoCityId != null) {
      _catalogRepository.shopsFilter.longitude = null;
      _catalogRepository.shopsFilter.latitude = null;
      _catalogRepository.shopsFilter.placeId = settings!.geoCityId!.toString();
    }
    return settings?.geoCityId;
  }
}
