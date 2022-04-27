import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:solfy_flutter/bloc/language_changer_bloc/language_changer_bloc.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:pausable_timer/pausable_timer.dart';
import 'package:solfy_flutter/services/database/global_settings_db_service.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';

part 'initial_state.dart';
part 'initial_event.dart';
part 'initial_bloc.freezed.dart';

/// Блок с логикой энтрипоинта приложения
class InitialBloc extends Bloc<InitialEvent, InitialState> {
  final StaticRepository _staticRepository;
  final FlutterSecureStorage _flutterSecureStorage;

  /// Минимальное время loading-стейта при загрузке статических данных (в мс)
  /// для полного воспроизведения анимации
  static const MIN_TIME_OF_LOADING_STATE_MS = 1500;

  // Блок со сменой языка
  final LanguageChangerBloc _languageBloc;
  late final StreamSubscription _languageBlocSubscription;

  InitialBloc(
      this._staticRepository, this._flutterSecureStorage, this._languageBloc)
      : super(const Initial()) {
    // Слушаем успешную смену языка и обновляем страницу
    _languageBlocSubscription = _languageBloc.stream.listen((state) {
      if (state is LanguageChanged) {
        this.add(const GetStaticContent());
      }
    });

    on<GetStaticContent>(
      (event, emit) async {
        await getStaticContent(emit);
      },
    );

    on<ResolveFirstScreen>(
      (event, emit) async {
        await resolveFirstScreen(emit);
      },
    );
  }

  @override
  Future<void> close() {
    _languageBlocSubscription.cancel();
    return super.close();
  }

  /// Загрузка статических данных с сервера
  Future<void> getStaticContent(Emitter<InitialState> emit) async {
    emit(const Loading());
    await setLocalizationToDio();
    final timer = PausableTimer(
        Duration(milliseconds: MIN_TIME_OF_LOADING_STATE_MS), () => null);
    final markerIcon = await getBytesFromAsset('assets/mapPin.png', 80);
    _staticRepository.icon = BitmapDescriptor.fromBytes(markerIcon);
    timer.start();
    final dictionaries = await _staticRepository.getDictionaries();
    final geo = await _staticRepository.getGeo();
    final agreementCpdp =
        await _staticRepository.getAgreement(AgreementType.cpdp);
    final agreementTou =
        await _staticRepository.getAgreement(AgreementType.tou);

    final newTimer = PausableTimer(
      timer.duration - timer.elapsed,
      () {
        if (dictionaries.isLeft ||
            geo.isLeft ||
            agreementCpdp.isLeft ||
            agreementTou.isLeft) {
          if (dictionaries.isLeft) {
            emit(UnsuccessDownload(dictionaries.left));
          } else {
            if (geo.isLeft) {
              emit(UnsuccessDownload(geo.left));
            } else {
              if (agreementCpdp.isLeft) {
                emit(UnsuccessDownload(agreementCpdp.left));
              } else {
                if (agreementTou.isLeft) {
                  emit(UnsuccessDownload(agreementTou.left));
                }
              }
            }
          }
        } else {
          _staticRepository.saveDictionaries(dictionaries.right);
          _staticRepository.saveGeo(geo.right);
          _staticRepository.saveAgreement(
              AgreementType.cpdp, agreementCpdp.right.agreement?.text ?? "");
          _staticRepository.saveAgreement(
              AgreementType.tou, agreementTou.right.agreement?.text ?? "");
          emit(SuccessDownload());
        }
      },
    );
    newTimer.start();
    await Future<void>.delayed(newTimer.duration);
  }

  /// Очистка хранилища при переустановке
  Future<bool> clearSecureStorageOnReinstall() async {
    final isFirstRun = await GlobalSettingsDbService.isFirstRun();
    if (!isFirstRun) {
      return isFirstRun;
    }
    await _flutterSecureStorage.deleteAll();
    await GlobalSettingsDbService.markFirstRun();
    return isFirstRun;
  }

  /// Установка локализации в dio-клиенты
  Future<void> setLocalizationToDio() async {
    final language = await UserSettingsDbService.getCurrentLocale();
    final staticDio = Injector("Initial").get<Dio>();
    final dio = Injector().get<Dio>();
    dio.options.headers["language"] = language;
    staticDio.options.headers["language"] = language;
  }

  /// Определение начального экрана
  Future<void> resolveFirstScreen(Emitter<InitialState> emit) async {
    emit(Loading());
    final isFirstRun = await clearSecureStorageOnReinstall();
    final token = await _flutterSecureStorage.read(key: 'access_token');
    if (token != null) {
      final dio = Injector().get<Dio>();
      final locale = await UserSettingsDbService.getCurrentLocale();
      dio.options.headers["session_token"] = token;
      dio.options.headers["access_token"] = token;
      dio.options.headers["platform"] = Platform.isIOS ? 'ios' : 'android';
      dio.options.headers["locale"] = locale;
      dio.options.headers["version"] = '1';
      emit(SignIn());
    } else {
      final locale = await checkDeviceLanguage();
      if (locale == null && isFirstRun) {
        emit(PickLanguage());
      } else {
        emit(SignUp(locale));
      }
    }
  }

  /// Проверяет и возвращает локализацию устройства, если это ru или uz.
  /// В противном случае вернет [null]
  Future<Locale?> checkDeviceLanguage() async {
    final deviceLanguage = Intl.getCurrentLocale().substring(0, 2);
    if (deviceLanguage == "ru") {
      await UserSettingsDbService.saveLocale('ru');
      return Locale('ru');
    } else if (deviceLanguage == "uz") {
      await UserSettingsDbService.saveLocale('uz');
      return Locale('uz');
    }
    return null;
  }

  /// Получаем массив байтов по картинке из ассетов
  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }
}
