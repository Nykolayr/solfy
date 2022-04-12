import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/local_auth.dart';
import 'package:solfy_flutter/models/api/account/pin_confirm/pin_confirm_request.dart';
import 'package:solfy_flutter/models/api/account/pin_set/pin_set_request.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/repository/account_repository.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';

part 'pin_code_set_state.dart';
part 'pin_code_set_event.dart';
part 'pin_code_set_bloc.freezed.dart';

/// Блок с логикой установки пин-кода приложения
class PinCodeSetBloc extends Bloc<PinCodeSetEvent, PinCodeSetState> {
  final AccountRepository _accountRepository;
  final FlutterSecureStorage _secureStorage;

  PinCodeSetBloc(this._accountRepository, this._secureStorage) : super(Initial()) {
    on<PinSet>((event, emit) async {
      await pinSet(
        emit: emit,
        pin: event.pin,
      );
    });

    on<ResolveNextScreen>((event, emit) async {
      await resolveNextScreen(emit);
    });
  }

  /// Установка пин-кода по коду [pin]
  ///
  /// [emit] - эмиттер стейтов
  ///
  /// [pin] - пин-кода для установки
  Future<void> pinSet({required Emitter<PinCodeSetState> emit, required String pin}) async {
    emit(const Loading());
    final pinSetResponse = await _accountRepository.pinSet(PinSetRequest(pin));
    if (pinSetResponse.isLeft) {
      emit(PinSetError(pinSetResponse.left));
    } else {
      final pinConfirmResponse = await _accountRepository.pinConfirm(PinConfirmRequest(pin));
      if (pinConfirmResponse.isLeft) {
        emit(PinSetError(pinConfirmResponse.left));
      } else {
        final dio = Injector().get<Dio>();
        final locale = await UserSettingsDbService.getCurrentLocale();
        dio.options.headers["access_token"] = pinConfirmResponse.right.accessToken;
        dio.options.headers["platform"] = Platform.isIOS ? 'ios' : 'android';
        dio.options.headers["locale"] = locale;
        dio.options.headers["version"] = '1';
        _secureStorage.write(key: "access_token", value: pinConfirmResponse.right.accessToken);
        _secureStorage.write(key: "refresh_token", value: pinConfirmResponse.right.refreshToken);
        emit(PinSetSuccess());
      }
    }
  }

  /// Определение следующего экрана
  Future<void> resolveNextScreen(Emitter<PinCodeSetState> emit) async {
    var localAuth = LocalAuthentication();
    final canCheck = await localAuth.canCheckBiometrics;
    final isDeviceSupported = await localAuth.isDeviceSupported();
    BiometricType? type;
    List<BiometricType> availableBiometrics = await localAuth.getAvailableBiometrics();
    if (Platform.isIOS) {
      if (availableBiometrics.contains(BiometricType.face)) {
        type = BiometricType.face;
      } else if (availableBiometrics.contains(BiometricType.fingerprint)) {
        type = BiometricType.fingerprint;
      }
    } else {
      if (availableBiometrics.contains(BiometricType.fingerprint)) {
        type = BiometricType.fingerprint;
      }
    }
    if (type != null && canCheck && isDeviceSupported) {
      emit(ShowBiometricModal(type));
    } else {
      emit(ShowWelcomeScreen());
    }
  }
}
