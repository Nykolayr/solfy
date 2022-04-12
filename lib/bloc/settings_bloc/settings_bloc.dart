import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/profile/set_settings/set_settings_request.dart';
import 'package:solfy_flutter/models/api/profile/set_settings/set_settings_settings_item_request.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';

part 'settings_state.dart';
part 'settings_event.dart';
part 'settings_bloc.freezed.dart';

/// Блок с логикой работы с серверными настройками пользователя
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ProfileRepository _profileRepository;

  SettingsBloc(this._profileRepository) : super(const Initial()) {
    on<UpdateSettings>((event, emit) async {
      final localSettings = await UserSettingsDbService.getUserSettings();
      final settings = await _profileRepository.getSettings();
      if (settings.isRight) {
        UserSettingsDbService.saveGeo(
            cityId: settings.right.settings?.city,
            isMyLocation: localSettings?.isMyLocation ?? false);
      }
    });

    on<SetNewCity>((event, emit) async {
      final localSettings = await UserSettingsDbService.getUserSettings();
      final response = await _profileRepository
          .setSettings(SetSettingsRequest(SetSettingsSettingsItemRequest(city: event.id)));
      if (response.isRight) {
        UserSettingsDbService.saveGeo(
            cityId: event.id, isMyLocation: localSettings?.isMyLocation ?? false);
      }
    });
  }
}
