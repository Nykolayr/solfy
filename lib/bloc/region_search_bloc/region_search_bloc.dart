import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/profile/set_settings/set_settings_request.dart';
import 'package:solfy_flutter/models/api/profile/set_settings/set_settings_settings_item_request.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';
import 'package:solfy_flutter/services/database/global_settings_db_service.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';

part 'region_search_state.dart';
part 'region_search_event.dart';
part 'region_search_bloc.freezed.dart';

/// Блок с логикой экрана выбора региона
class RegionSearchBloc extends Bloc<RegionSearchEvent, RegionSearchState> {
  final ProfileRepository _profileRepository;

  RegionSearchBloc(this._profileRepository) : super(const Initial()) {
    on<OnCloseToMe>((event, emit) async {
      await onCloseToMe(emit);
    });

    on<OnRegion>((event, emit) async {
      await onRegion(emit, event.cityId);
    });
  }

  /// Установка режима "Рядом со мной"
  Future<void> onCloseToMe(Emitter<RegionSearchState> emit) async {
    emit(const Initial());
    final permission = await Geolocator.checkPermission();
    final isGeoRequested = await GlobalSettingsDbService.isGeoRequested();
    if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
      if (isGeoRequested) {
        emit(const ShowGoToSettings());
      } else {
        await GlobalSettingsDbService.markGeoRequested();
        emit(const ShowRequestGeoAccess());
      }
    } else if (permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse) {
      await UserSettingsDbService.saveGeo(isMyLocation: true);
      _profileRepository.isMyLocationEnabled = true;
      emit(const SetSuccess(isCloseToMe: true));
    }
  }

  /// Установка нового региона
  Future<void> onRegion(Emitter<RegionSearchState> emit, int cityId) async {
    emit(const Loading());
    await UserSettingsDbService.saveGeo(cityId: cityId, isMyLocation: false);
    final request = SetSettingsRequest(SetSettingsSettingsItemRequest(city: cityId));
    final response = await _profileRepository.setSettings(request);
    emit(const EndLoading());
    if (response.isRight) {
      _profileRepository.isMyLocationEnabled = false;
      _profileRepository.cityId = cityId;
      emit(const SetSuccess());
    } else {
      emit(SetError(response.left));
    }
  }
}
