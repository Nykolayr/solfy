import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/filter_request.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/entities/catalog/point_item_view_model.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';
import 'package:solfy_flutter/models/api/catalog/points/points_response.dart';

part 'store_map_state.dart';
part 'store_map_event.dart';
part 'store_map_bloc.freezed.dart';

/// Блок с логикой раскрытой карты на странице бренда
class StoreMapBloc extends Bloc<StoreMapEvent, StoreMapState> {
  final CatalogRepository _catalogRepository;

  StoreMapBloc(this._catalogRepository) : super(const StoreMapInitial()) {
    on<GetStoreMapPoints>((event, emit) async {
      await getStoreMapPoints(emit, event.customFilter);
    });
  }

  /// Получение точек карты на странице бренда
  Future<void> getStoreMapPoints(Emitter<StoreMapState> emit, FilterRequest? customFilter) async {
    emit(StoreMapLoading(customFilter));
    final points = await _catalogRepository
        .getPoints(customFilter ?? _catalogRepository.shopsFilter.getWithoutGeo());
    if (points.isRight) {
      final mapPoints = points.right.getPoints();
      emit(StoreMapSuccess(mapPoints));
    } else {
      if (points.isLeft) {
        emit(StoreMapError(points.left));
      }
    }
  }
}
