import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:solfy_flutter/models/api/account/pin_confirm/pin_confirm_request.dart';
import 'package:solfy_flutter/models/api/account/pin_forgot/pin_forgot_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/profile/pin_check/pin_check_request.dart';
import 'package:solfy_flutter/repository/account_repository.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';

part 'pin_code_login_state.dart';
part 'pin_code_login_event.dart';
part 'pin_code_login_bloc.freezed.dart';

/// Блок с логикой экрана авторизации приложения
class PinCodeLoginBloc extends Bloc<PinCodeLoginEvent, PinCodeLoginState> {
  final ProfileRepository _profileRepository;
  final AccountRepository _accountRepository;
  final FlutterSecureStorage _secureStorage;

  PinCodeLoginBloc(this._profileRepository, this._accountRepository, this._secureStorage)
      : super(const Initial()) {
    on<Login>((event, emit) async {
      await checkCode(emit, event.pin);
    });

    on<TryBiometricAuth>((event, emit) async {
      await tryBiometricAuth(emit);
    });

    on<PinForgot>((event, emit) async {
      await pinForgot(emit);
    });
  }

  /// Проверить код на валидность
  Future<void> checkCode(Emitter<PinCodeLoginState> emit, String pin) async {
    emit(const Loading());
    final token = await _secureStorage.read(key: "access_token");
    if (token == null) {
      await checkCodeWithoutToken(emit, pin);
    } else {
      await checkCodeWithToken(emit, pin);
    }
  }

  /// Проверка кода с токеном
  Future<void> checkCodeWithToken(Emitter<PinCodeLoginState> emit, String pin) async {
    final response = await _profileRepository.pinCheck(PinCheckRequest(pin));
    emit(const EndLoading());
    if (response.isLeft) {
      emit(LoginError(response.left));
    } else {
      if (response.right.valid != null && response.right.valid!) {
        emit(LoginSuccess());
      } else {
        emit(LoginInvalidCode());
      }
    }
  }

  /// Проверка кода без токена
  Future<void> checkCodeWithoutToken(Emitter<PinCodeLoginState> emit, String pin) async {
    final response = await _accountRepository.pinConfirm(PinConfirmRequest(pin));
    emit(const EndLoading());
    if (response.isLeft) {
      if (response.left.errors != null) {
        emit(LoginInvalidCode());
      } else {
        emit(LoginError(response.left));
      }
    } else {
      final dio = Injector().get<Dio>();
      dio.options.headers["access_token"] = response.right.accessToken;
      _secureStorage.write(key: "access_token", value: response.right.accessToken);
      emit(LoginSuccess());
    }
  }

  /// Попытка авторизоваться через биометрию
  Future<void> tryBiometricAuth(Emitter<PinCodeLoginState> emit) async {
    final settings = await UserSettingsDbService.getUserSettings();
    if (settings?.isBiometricEnabled != null && settings!.isBiometricEnabled) {
      var localAuth = LocalAuthentication();
      BiometricType? biometricType;
      List<BiometricType> availableBiometrics = await localAuth.getAvailableBiometrics();
      if (Platform.isIOS) {
        if (availableBiometrics.contains(BiometricType.face)) {
          biometricType = BiometricType.face;
        } else if (availableBiometrics.contains(BiometricType.fingerprint)) {
          biometricType = BiometricType.fingerprint;
        }
      } else {
        if (availableBiometrics.contains(BiometricType.fingerprint)) {
          biometricType = BiometricType.fingerprint;
        }
      }
      if (biometricType != null) {
        emit(AvailableBiometricType(biometricType));
      }
      bool didAuthenticate = await localAuth.authenticate(
        localizedReason: 'Пожалуйста, подтвердите вход по биометрии',
        androidAuthStrings: AndroidAuthMessages(
          biometricHint: "",
          biometricRequiredTitle: "Необходима авторизация",
          signInTitle: "Необходима авторизация",
        ),
      );
      if (didAuthenticate) {
        emit(LoginSuccess());
      }
    }
  }

  /// Восстановление забытого пароля
  Future<void> pinForgot(Emitter<PinCodeLoginState> emit) async {
    emit(const Loading());
    final response = await _accountRepository.pinForgot();
    emit(const EndLoading());
    if (response.isLeft) {
      emit(PinForgotError(response.left));
    } else {
      emit(PinForgotSuccess(response.right));
    }
  }
}
