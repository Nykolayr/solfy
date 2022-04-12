import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/bloc/base_tab_updater_bloc/base_tab_updater_bloc.dart';
import 'package:solfy_flutter/bloc/biometric_set_bloc/biometric_set_bloc.dart';
import 'package:solfy_flutter/bloc/language_changer_bloc/language_changer_bloc.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/bloc/region_search_bloc/region_search_bloc.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/profile/get_profile/get_profile_item_response.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';

part 'profile_state.dart';
part 'profile_event.dart';
part 'profile_bloc.freezed.dart';

/// Блок с логикой загрузки профиля
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _profileRepository;

  /// Блок с изменением региона
  final RegionSearchBloc _regionSearchBloc;
  late final StreamSubscription _regionSearchBlocSubscription;

  /// Блок с изменением биометрии
  final BiometricSetBloc _biometricSetBloc;
  late final StreamSubscription _biometricSetBlocSubscription;

  /// Блок с отправкой анкеты
  final QuestionnaireBloc _questionnaireBloc;
  late final StreamSubscription _questionnaireBlocSubscription;

  /// Блок с обновлением при переключении вкладки
  final BaseTabUpdaterBloc _tabUpdaterBloc;
  late final StreamSubscription _tabUpdaterBlocSubscription;

  /// Блок со сменой языка
  final LanguageChangerBloc _languageBloc;
  late final StreamSubscription _languageBlocSubscription;
  ProfileBloc(
    this._profileRepository,
    this._regionSearchBloc,
    this._biometricSetBloc,
    this._questionnaireBloc,
    this._tabUpdaterBloc,
    this._languageBloc,
  ) : super(const Initial()) {
    // Слушаем успешные изменения региона и обновляем страницу
    _regionSearchBlocSubscription = _regionSearchBloc.stream.listen((state) {
      if (state is SetSuccess) {
        this.add(const GetProfile());
      }
    });

    // Слушаем успешное изменение биометрии и обновляем страницу
    _biometricSetBlocSubscription = _biometricSetBloc.stream.listen((state) {
      if (state is BiometricSetSuccess) {
        this.add(const EnableBiometric());
      }
    });

    // Слушаем успешную отправку анкеты и обновляем страницу
    _questionnaireBlocSubscription = _questionnaireBloc.stream.listen((state) {
      if (state is QuestionnaireSentSuccess) {
        this.add(const GetProfile());
      }
    });

    // Слушаем переключение вкладки и обновляем страницу
    _tabUpdaterBlocSubscription = _tabUpdaterBloc.stream.listen((state) {
      if (state is ProfileUpdate) {
        this.add(const GetProfile());
      }
    });

    // Слушаем успешную смену языка и обновляем страницу
    _languageBlocSubscription = _languageBloc.stream.listen((state) {
      if (state is LanguageChanged) {
        this.add(const GetProfile(isUpdateEvent: true));
      }
    });

    on<GetProfile>((event, emit) async {
      await getProfile(emit, event.cacheResponseIfExist, event.isUpdateEvent);
    });

    on<DisableBiometric>((event, emit) async {
      await disableBiometric(emit);
    });

    on<EnableBiometric>((event, emit) async {
      await enableBiometric(emit);
    });
  }

  @override
  Future<void> close() {
    _regionSearchBlocSubscription.cancel();
    _biometricSetBlocSubscription.cancel();
    _questionnaireBlocSubscription.cancel();
    _tabUpdaterBlocSubscription.cancel();
    _languageBlocSubscription.cancel();
    return super.close();
  }

  /// Выключение биометрии
  Future<void> disableBiometric(Emitter<ProfileState> emit) async {
    await UserSettingsDbService.saveBiometric(false);
    final state = this.state as GetProfileSuccess;
    emit(GetProfileSuccess(
      profile: state.profile,
      isMyLocationEnabled: state.isMyLocationEnabled,
      isBiometricEnabled: false,
    ));
  }

  /// Включение биометрии
  Future<void> enableBiometric(Emitter<ProfileState> emit) async {
    final state = this.state as GetProfileSuccess;
    emit(GetProfileSuccess(
      profile: state.profile,
      isMyLocationEnabled: state.isMyLocationEnabled,
      isBiometricEnabled: true,
    ));
  }

  /// Получение профиля
  Future<void> getProfile(Emitter<ProfileState> emit, bool needCache, bool isUpdateEvent) async {
    if (!(state is GetProfileSuccess) || isUpdateEvent) {
      emit(const Loading());
    }
    if (needCache && _profileRepository.profile != null) {
      await returnCachedProfileResponse(emit);
    } else {
      await fetchProfile(emit);
    }
  }

  /// Сфетчить и вернуть свежие данные профиля
  Future<void> fetchProfile(Emitter<ProfileState> emit) async {
    final response = await _profileRepository.getProfile();
    if (response.isRight) {
      final settings = await UserSettingsDbService.getUserSettings();
      final isMyLocationEnabled = settings?.isMyLocation ?? false;
      final isBiometricEnabled = settings?.isBiometricEnabled ?? false;
      _profileRepository.isMyLocationEnabled = settings?.isMyLocation ?? false;
      _profileRepository.cityId = settings?.geoCityId;
      emit(GetProfileSuccess(
        profile: response.right.profile ?? GetProfileItemResponse(),
        isMyLocationEnabled: isMyLocationEnabled,
        isBiometricEnabled: isBiometricEnabled,
      ));
    } else {
      emit(GetProfileError(response.left));
    }
  }

  /// Вернуть значение из кэша
  Future<void> returnCachedProfileResponse(Emitter<ProfileState> emit) async {
    final settings = await UserSettingsDbService.getUserSettings();
    final isMyLocationEnabled = settings?.isMyLocation ?? false;
    final isBiometricEnabled = settings?.isBiometricEnabled ?? false;
    _profileRepository.isMyLocationEnabled = settings?.isMyLocation ?? false;
    emit(GetProfileSuccess(
      profile: _profileRepository.profile!,
      isMyLocationEnabled: isMyLocationEnabled,
      isBiometricEnabled: isBiometricEnabled,
    ));
  }
}
