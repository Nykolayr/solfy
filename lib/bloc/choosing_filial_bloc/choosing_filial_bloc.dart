import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:solfy_flutter/models/marker_model.dart';
import 'package:solfy_flutter/repository/static_repository.dart';

part 'choosing_filial_state.dart';
part 'choosing_filial_event.dart';
part 'choosing_filial_bloc.freezed.dart';

/// Блок с логикой на экране выбора филиала (6-ой шаг анкеты)
class ChoosingFilialBloc extends Bloc<ChoosingFilialEvent, ChoosingFilialState> {
  final StaticRepository _staticRepository;
  ChoosingFilialBloc(this._staticRepository) : super(const Initial()) {
    on<GetMarkers>((event, emit) async {
      await getMarkers(emit, event.filterById);
    });
  }

  /// Получаем маркеры с филиалами для карты
  Future<void> getMarkers(Emitter<ChoosingFilialState> emit, int? filterId) async {
    emit(const Loading());
    List<MarkerModel> markers = [];
    _staticRepository.dictionaries.filialCode?.filials?.forEach((item) {
      if (item.geo?.latitude != null &&
          item.geo?.regionId != null &&
          item.id != null &&
          _staticRepository.icon != null &&
          item.value != null &&
          item.hint != null &&
          item.geo?.longitude != null &&
          item.geo?.regionId != null) {
        markers.add(MarkerModel(
          id: item.id!,
          lat: item.geo!.latitude!,
          lon: item.geo!.longitude!,
          icon: _staticRepository.icon!,
          value: item.value!,
          hint: item.hint!,
          regionId: item.geo!.regionId!,
        ));
      }
    });
    await sortMarkersByDistance(markers);
    if (filterId != null) {
      markers = markers.where((element) => element.regionId == filterId).toList();
    }
    emit(Markers(markers));
  }

  /// Сортировка маркеров по расстоянию, если доступна геолокация
  Future<void> sortMarkersByDistance(List<MarkerModel> markers) async {
    final permission = await Geolocator.checkPermission();
    if ((permission == LocationPermission.always || permission == LocationPermission.whileInUse)) {
      final currentPosition = await Geolocator.getPositionStream().first;
      for (var marker in markers) {
        marker.distance = Geolocator.distanceBetween(
          currentPosition.latitude,
          currentPosition.longitude,
          marker.lat,
          marker.lon,
        );
      }
      markers.sort((a, b) => a.distance!.compareTo(b.distance!));
    }
  }
}
