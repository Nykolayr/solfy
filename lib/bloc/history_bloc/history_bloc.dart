import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/bloc/wallet_bloc/wallet_bloc.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/wallet/operations/operations_response.dart';
import 'package:solfy_flutter/repository/wallet_repository.dart';

part 'history_state.dart';
part 'history_event.dart';
part 'history_bloc.freezed.dart';

/// Блок с загрузкой истории операций для страницы с кошельком
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final WalletRepository _walletRepository;

  // Блок с загрузкой кошелька
  final WalletBloc _walletBloc;
  late final StreamSubscription _walletBlocSubscription;

  HistoryBloc(this._walletRepository, this._walletBloc) : super(const Initial()) {
    // Слушаем успешную загрузку кошелька и загружаем графики
    _walletBlocSubscription = _walletBloc.stream.listen((state) {
      if (state is GetWalletSuccess) {
        if (!state.isUpdate) {
          this.add(const GetHistory());
        }
      }
    });

    on<GetHistory>((event, emit) async {
      await getHistory(emit);
    });
  }

  @override
  Future<void> close() {
    _walletBlocSubscription.cancel();
    return super.close();
  }

  /// Получение графиков платежей
  Future<void> getHistory(Emitter<HistoryState> emit) async {
    emit(const Loading());
    final response = await _walletRepository.getOperations();
    if (response.isRight) {
      emit(GetHistorySuccess(response.right));
    } else {
      emit(GetHistoryError(response.left));
    }
  }
}
