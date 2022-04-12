import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:solfy_flutter/models/api/account/pin_forgot/pin_forgot_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/profile/pin_check/pin_check_request.dart';
import 'package:solfy_flutter/repository/account_repository.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';

part 'biometric_set_state.dart';
part 'biometric_set_event.dart';
part 'biometric_set_bloc.freezed.dart';

/// Блок с логикой установки биометрии на экране ее установки в настройках
class BiometricSetBloc extends Bloc<BiometricSetEvent, BiometricSetState> {
  final ProfileRepository _profileRepository;
  final AccountRepository _accountRepository;

  BiometricSetBloc(this._profileRepository, this._accountRepository) : super(const Initial()) {
    on<CheckCode>((event, emit) async {
      await checkCode(emit, event.code);
    });

    on<CheckBiometric>((event, emit) async {
      await checkBiometric(emit);
    });

    on<PinForgot>((event, emit) async {
      await pinForgot(emit);
    });
  }

  /// Проверка кода
  Future<void> checkCode(Emitter<BiometricSetState> emit, String pin) async {
    emit(const Loading());
    final response = await _profileRepository.pinCheck(PinCheckRequest(pin));
    emit(const EndLoading());
    if (response.isLeft) {
      emit(InvalidCode(errors: response.left));
    } else {
      if (response.right.valid != null && response.right.valid!) {
        emit(const CorrectCode());
      } else {
        emit(const InvalidCode());
      }
    }
  }

  /// Проверка биометрии
  Future<void> checkBiometric(Emitter<BiometricSetState> emit) async {
    var localAuth = LocalAuthentication();
    bool didAuthenticate = await localAuth.authenticate(
      localizedReason: 'Пожалуйста, подтвердите вход по биометрии',
      androidAuthStrings: AndroidAuthMessages(
        biometricHint: "",
        biometricRequiredTitle: "Необходима авторизация",
        signInTitle: "Необходима авторизация",
      ),
    );
    if (didAuthenticate) {
      await UserSettingsDbService.saveBiometric(didAuthenticate);
      emit(const BiometricSetSuccess());
    } else {
      emit(const BiometricSetError());
    }
  }

  /// Проверка кода без токена
  Future<void> pinForgot(Emitter<BiometricSetState> emit) async {
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
