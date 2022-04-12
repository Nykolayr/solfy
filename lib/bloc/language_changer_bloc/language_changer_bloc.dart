import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';

part 'language_changer_state.dart';
part 'language_changer_event.dart';
part 'language_changer_bloc.freezed.dart';

/// Блок с логикой смены языка
// (сам язык меняется в UI-части, в блоке описана логика обновления языков
// в dio-клиентах и бд)
class LanguageChangerBloc extends Bloc<LanguageChangerEvent, LanguageChangerState> {
  LanguageChangerBloc() : super(const Initial()) {
    on<ChangeLanguage>((event, emit) async {
      emit(const Initial());
      await UserSettingsDbService.saveLocale(event.newLanguage);
      final dio = Injector("Initial").get<Dio>();
      final staticDio = Injector().get<Dio>();
      dio.options.headers["language"] = event.newLanguage;
      staticDio.options.headers["language"] = event.newLanguage;
      emit(LanguageChanged(event.newLanguage));
    });
  }
}
