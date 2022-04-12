import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/account/pin_forgot/pin_forgot_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/profile/pin_check/pin_check_request.dart';
import 'package:solfy_flutter/models/api/profile/pin_update/pin_update_request.dart';
import 'package:solfy_flutter/repository/account_repository.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';

part 'pin_change_state.dart';
part 'pin_change_event.dart';
part 'pin_change_bloc.freezed.dart';

/// Блок с логикой смены пин-кода приложения
class PinChangeBloc extends Bloc<PinChangeEvent, PinChangeState> {
  final ProfileRepository _profileRepository;
  final AccountRepository _accountRepository;

  String? _firstCode;
  String? _currentCorrectPin;
  PinChangeBloc(this._profileRepository, this._accountRepository) : super(const Initial()) {
    on<SaveFirstCode>((event, emit) {
      _firstCode = event.code;
      emit(const FirstCodeSaved());
    });

    on<CheckCode>((event, emit) async {
      await checkCode(emit, event.code);
    });

    on<SetNewCode>((event, emit) async {
      await setNewCode(emit, event.code);
    });

    on<PinForgot>((event, emit) async {
      await pinForgot(emit);
    });
  }

  /// Проверка кода
  Future<void> checkCode(Emitter<PinChangeState> emit, String pin) async {
    emit(const Loading());
    final response = await _profileRepository.pinCheck(PinCheckRequest(pin));
    emit(const EndLoading());
    if (response.isLeft) {
      emit(InvalidCode(errors: response.left));
    } else {
      if (response.right.valid != null && response.right.valid!) {
        _currentCorrectPin = pin;
        emit(const CorrectCode());
      } else {
        emit(const InvalidCode());
      }
    }
  }

  /// Установка нового кода
  Future<void> setNewCode(Emitter<PinChangeState> emit, String pin) async {
    if (_firstCode != pin) {
      emit(const DifferentCodes());
    } else {
      emit(const Loading());
      final response =
          await _profileRepository.pinUpdate(PinUpdateRequest(_currentCorrectPin!, pin));
      emit(const EndLoading());
      if (response.isRight) {
        if (response.right.valid != null && response.right.valid!) {
          emit(const SetNewCodeSuccess());
        } else {
          emit(const SetNewCodeError());
        }
      } else {
        emit(SetNewCodeError(errors: response.left));
      }
    }
  }

  /// Восстановление забытого пин-кода
  Future<void> pinForgot(Emitter<PinChangeState> emit) async {
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
