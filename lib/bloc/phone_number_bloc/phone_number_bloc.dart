import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/account/sms_send/sms_send_request.dart';
import 'package:solfy_flutter/models/api/account/sms_send/sms_send_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/repository/account_repository.dart';

part 'phone_number_state.dart';
part 'phone_number_event.dart';
part 'phone_number_bloc.freezed.dart';

/// Блок с логикой отправки смс на номер телефона
class PhoneNumberBloc extends Bloc<PhoneNumberEvent, PhoneNumberState> {
  final AccountRepository _accountRepository;
  final FlutterSecureStorage _flutterSecureStorage;

  PhoneNumberBloc(this._accountRepository, this._flutterSecureStorage) : super(Initial()) {
    on<SmsSend>(
      (event, emit) async {
        await smsSend(emit, event.request);
      },
    );
  }

  /// Отправка смс-кода по номеру из [request]
  Future<void> smsSend(
    Emitter<PhoneNumberState> emit,
    SmsSendRequest request,
  ) async {
    emit(const Loading());
    final response = await _accountRepository.smsSend(request);
    if (response.isRight) {
      _flutterSecureStorage.write(key: 'session_token', value: response.right.sessionToken);
      Injector().get<Dio>().options.headers["session_token"] = response.right.sessionToken;
      _accountRepository.saveSmsSendNumber(request.phoneNumber);
      emit(SmsSendSuccess(response.right));
    } else {
      emit(SmsSendError(response.left));
    }
  }
}
