import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:solfy_flutter/models/api/bank/card/catd_repositores.dart';
import 'package:solfy_flutter/models/api/errors/error_item_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';

part 'card_event.dart';
part 'card_state.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  String card_number = '';
  String expire_date = '';
  String insurance_premium = '';
  String card_uuid = '';
  String local_card_phone_number = '';
  String code = '';
  int insurance_premiumInt = 0;
  String insurance_token = '';
  String processing_external_id = '';
  String transaction_id = '';
  final CardRepository cardRepository;
  CardBloc(CardRepository this.cardRepository) : super(CardInitial()) {
    on<CardEvent>((event, emit) async {
      if (event is PressAddCard) {
        card_number = event.numberCard;
        expire_date = event.dataCard;
        insurance_premium = event.insurance_premium;
        insurance_premiumInt = int.parse(
            insurance_premium.replaceAll(' ', '').replaceAll('сум', ''));
        emit(CardLoad());
        CardResponse? response =
            await cardRepository.sendCardLocal(card_number, expire_date);
        if (response != null) {
          print('console response.toJson()  == ${response.toJson()}');
          card_uuid = response.card_uuid;
          local_card_phone_number = response.local_card_phone_number;
          emit(CardSuccess());
        } else {
          ErrorItemResponse error =
              ErrorItemResponse('45', 'title', 'message', 'target', 1, 'type');
          ErrorsResponse errors = ErrorsResponse(errors: [error]);
          print('console error === >>>>>>> ${errors.errors!.first.toJson()}');
          emit(CardError(error: errors));
        }
      }
      if (event is SendNewCodeCard) {
        code = event.code;
        emit(CardLoad());
        CardConfirmResponse response = await cardRepository
            .sendCardLocalConfirm(card_uuid, code, local_card_phone_number);
        if (response != null) {
          insurance_token = response.insurance_token;
          processing_external_id = response.processing_external_id;
          transaction_id = response.transaction_id;
        }
      }
      if (event is SendResCode) {
        // code = event.code;
        emit(CardLoad());
        await cardRepository.sendCardLocalResend(card_uuid);
      }
      // emit(CardInitial());
    });
  }

  /// Подтверждение смс-кода по коду из [request]
  // Future<void> smsConfirm(
  //   Emitter<SmsCodeState> emit,
  //   SmsConfirmRequest request,
  // ) async {
  //   emit(const Loading());
  //   final response = await _accountRepository.smsConfirm(request);
  //   if (response.isRight) {
  //     emit(ValidationSuccess(response.right));
  //   } else {
  //     emit(ValidationError(response.left));
  //   }
  // }

  // /// Отправляем новый код по номеру из репозитория
  // Future<void> sendNewCode(Emitter<SmsCodeState> emit) async {
  //   final request = SmsSendRequest(_accountRepository.phoneNumber);
  //   final response = await _accountRepository.smsSend(request);
  //   if (response.isLeft) {
  //     emit(SendNewSmsError(response.left));
  //   } else {
  //     Injector().get<Dio>().options.headers["session_token"] =
  //         response.right.sessionToken;
  //   }
  // }
}
