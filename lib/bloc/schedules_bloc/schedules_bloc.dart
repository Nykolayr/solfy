import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/bloc/wallet_bloc/wallet_bloc.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/wallet/schedules/schedules_response.dart';
import 'package:solfy_flutter/repository/wallet_repository.dart';

part 'schedules_state.dart';
part 'schedules_event.dart';
part 'schedules_bloc.freezed.dart';

/// Блок с логикой загрузки графиков из страницы с кошельком
class SchedulesBloc extends Bloc<SchedulesEvent, SchedulesState> {
  final WalletRepository _walletRepository;

  /// Блок с загрузкой кошелька
  final WalletBloc _walletBloc;
  late final StreamSubscription _walletBlocSubscription;

  SchedulesBloc(this._walletRepository, this._walletBloc) : super(const Initial()) {
    // Слушаем успешную загрузку кошелька и загружаем графики
    _walletBlocSubscription = _walletBloc.stream.listen((state) {
      if (state is GetWalletSuccess) {
        if (!state.isUpdate) {
          this.add(const GetSchedules());
        }
      }
    });

    on<GetSchedules>((event, emit) async {
      await getSchedules(emit);
    });
  }

  @override
  Future<void> close() {
    _walletBlocSubscription.cancel();
    return super.close();
  }

  /// Получение графиков платежей
  Future<void> getSchedules(Emitter<SchedulesState> emit) async {
    emit(const Loading());
    final response = await _walletRepository.getSchedules();
    if (response.isRight) {
      emit(GetSchedulesSuccess(response.right));
    } else {
      emit(GetSchedulesError(response.left));
    }
  }
}
