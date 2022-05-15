import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/account/sms_confirm/sms_confirm_request.dart';
import 'package:solfy_flutter/models/api/account/sms_confirm/sms_confirm_response.dart';
import 'package:solfy_flutter/models/api/account/sms_send/sms_send_request.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/repository/account_repository.dart';

part 'sms_code_state.dart';
part 'sms_code_event.dart';
part 'sms_code_bloc.freezed.dart';

/// Блок с логикой экрана с подтверждением смс-кода
class SmsCodeBloc extends Bloc<SmsCodeEvent, SmsCodeState> {
  final AccountRepository _accountRepository;

  SmsCodeBloc(this._accountRepository) : super(const Initial()) {
    on<ValidateCode>((event, emit) async {
      await smsConfirm(emit, event.request);
    });

    on<SendNewCode>((event, emit) async {
      await sendNewCode(emit);
    });
  }

  /// Подтверждение смс-кода по коду из [request]
  Future<void> smsConfirm(
    Emitter<SmsCodeState> emit,
    SmsConfirmRequest request,
  ) async {
    emit(const Loading());
    final response = await _accountRepository.smsConfirm(request);
    if (response.isRight) {
      emit(ValidationSuccess(response.right));
    } else {
      emit(ValidationError(response.left));
    }
  }

  /// Отправляем новый код по номеру из репозитория
  Future<void> sendNewCode(Emitter<SmsCodeState> emit) async {
    final request = SmsSendRequest(_accountRepository.phoneNumber);
    final response = await _accountRepository.smsSend(request);
    if (response.isLeft) {
      emit(SendNewSmsError(response.left));
    } else {
      Injector().get<Dio>().options.headers["session_token"] =
          response.right.sessionToken;
    }
  }
}
