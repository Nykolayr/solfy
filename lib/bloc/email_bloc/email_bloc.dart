import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/account/email_send/email_send_request.dart';
import 'package:solfy_flutter/models/api/account/email_send/email_send_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/repository/account_repository.dart';

part 'email_state.dart';
part 'email_event.dart';
part 'email_bloc.freezed.dart';

/// Блок с логикой установки email'а
class EmailBloc extends Bloc<EmailEvent, EmailState> {
  final AccountRepository _accountRepository;

  EmailBloc(this._accountRepository) : super(Initial()) {
    on<SaveEmail>(
      (event, emit) async {
        await emailSave(
          emit: emit,
          email: event.email,
        );
      },
    );
  }

  /// Сохраняем email
  ///
  /// [emit] - эмиттер стейтов
  ///
  /// [email] - новый email
  Future<void> emailSave({required Emitter<EmailState> emit, required String email}) async {
    emit(const Loading());
    final response = await _accountRepository.emailSend(EmailSendRequest(email));
    if (response.isRight) {
      emit(EmailSavedSuccess(response.right));
    } else {
      emit(EmailSavedError(response.left));
    }
  }
}
