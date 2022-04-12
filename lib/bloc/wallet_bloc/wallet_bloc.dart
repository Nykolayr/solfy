import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/bloc/base_tab_updater_bloc/base_tab_updater_bloc.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/wallet/comfortable_payment_update/comfortable_payment_update_request.dart';
import 'package:solfy_flutter/models/api/wallet/wallet_get/wallet_get_response.dart';
import 'package:solfy_flutter/models/entities/wallet/wallet_view_model.dart';
import 'package:solfy_flutter/repository/wallet_repository.dart';

part 'wallet_state.dart';
part 'wallet_event.dart';
part 'wallet_bloc.freezed.dart';

/// Блок с логикой загрузки кошелька
class WalletBloc extends Bloc<WalletEvent, WalletState> {
  final WalletRepository _walletRepository;

  // Блок с отправкой анкеты
  final QuestionnaireBloc _questionnaireBloc;
  late final StreamSubscription _questionnaireBlocSubscription;

  // Блок с обновлением при переключении вкладки
  final BaseTabUpdaterBloc _tabUpdaterBloc;
  late final StreamSubscription _tabUpdaterBlocSubscription;
  WalletBloc(
    this._walletRepository,
    this._questionnaireBloc,
    this._tabUpdaterBloc,
  ) : super(const Initial()) {
    // Слушаем успешную отправку анкеты и обновляем страницу
    _questionnaireBlocSubscription = _questionnaireBloc.stream.listen((state) {
      if (state is QuestionnaireSentSuccess) {
        this.add(const GetWallet());
      }
    });

    // Слушаем переключение вкладки и обновляем страницу
    _tabUpdaterBlocSubscription = _tabUpdaterBloc.stream.listen((state) {
      if (state is WalletUpdate) {
        this.add(const GetWallet());
      }
    });

    on<GetWallet>((event, emit) async {
      await getWallet(emit, event.isUpdate ?? false);
    });

    on<ComfortablePaymentUpdate>((event, emit) async {
      await comfortablePaymentUpdate(emit, event.value);
    });

    on<Refillment>((event, emit) async {
      await refillment(emit, event.amount);
    });
  }

  @override
  Future<void> close() {
    _questionnaireBlocSubscription.cancel();
    _tabUpdaterBlocSubscription.cancel();
    return super.close();
  }

  /// Получаем кошелек
  Future<void> getWallet(Emitter<WalletState> emit, bool isUpdate) async {
    emit(const Loading());
    final response = await _walletRepository.getWallet();
    if (response.isRight) {
      emit(GetWalletSuccess(response.right.getModel(), isUpdate));
    } else {
      emit(GetWalletError(response.left));
    }
  }

  /// Обновляем сумму комфортного платежа
  Future<void> comfortablePaymentUpdate(Emitter<WalletState> emit, int value) async {
    emit(const Loading());
    final response = await _walletRepository
        .comfortablePaymentUpdate(ComfortablePaymentUpdateRequest(value.toString() + "00000000"));
    if (response.isRight) {
      this.add(GetWallet(isUpdate: true));
    } else {
      emit(GetWalletError(response.left));
    }
  }

  /// Оплата
  Future<void> refillment(Emitter<WalletState> emit, String amount) async {
    emit(const Loading());
    final response = await _walletRepository.refillment(amount);
    if (response.isRight) {
      this.add(GetWallet(isUpdate: false));
    } else {
      emit(GetWalletError(response.left));
    }
  }
}
