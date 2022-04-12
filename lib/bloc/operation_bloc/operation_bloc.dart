import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/wallet/operation/operation_response.dart';
import 'package:solfy_flutter/repository/wallet_repository.dart';

part 'operation_state.dart';
part 'operation_event.dart';
part 'operation_bloc.freezed.dart';

/// Блок с логикой получения операции по идентификатору
class OperationBloc extends Bloc<OperationEvent, OperationState> {
  final WalletRepository _walletRepository;

  OperationBloc(this._walletRepository) : super(const Initial()) {
    on<GetOperation>((event, emit) async {
      await getOperation(emit, event.id);
    });
  }

  /// Получение операции по [id]
  Future<void> getOperation(Emitter<OperationState> emit, String id) async {
    emit(const OperationLoading());
    final response = await _walletRepository.getOperation(id);
    emit(const OperationEndLoading());
    if (response.isRight) {
      emit(GetOperationSuccess(response.right));
    } else {
      emit(GetOperationError(response.left));
    }
  }
}
