part of 'pin_change_bloc.dart';

/// Эвенты блока с логикой смены пин-кода приложения
@freezed
class PinChangeState with _$PinChangeState {
  /// Начальный стейт
  const factory PinChangeState.initial() = Initial;

  /// Стейт начала загрузки
  const factory PinChangeState.loading() = Loading;

  /// Стейт окончания загрузки
  const factory PinChangeState.endLoading() = EndLoading;

  /// Стейт при сохранении первого введенного кода (нового)
  const factory PinChangeState.firstCodeSaved() = FirstCodeSaved;

  /// Стейт при несовпадении кодов при установке нового кода
  const factory PinChangeState.differentCodes() = DifferentCodes;

  /// Стейт при неуспешной проверке текущего кода приложения на валидность
  const factory PinChangeState.invalidCode({ErrorsResponse? errors}) = InvalidCode;

  /// Стейт при успешной проверке текущего кода приложения на валидность
  const factory PinChangeState.correctCode() = CorrectCode;

  /// Стейт при успешной установке нового кода
  const factory PinChangeState.setNewCodeSuccess() = SetNewCodeSuccess;

  /// Стейт при неуспешной установке нового кода
  const factory PinChangeState.setNewCodeError({ErrorsResponse? errors}) = SetNewCodeError;

  /// Стейт при успешном сбросе забытого кода
  const factory PinChangeState.pinForgotSuccess(PinForgotResp response) = PinForgotSuccess;

  /// Стейт при неуспешном сбросе забытого кода
  const factory PinChangeState.pinForgotError(ErrorsResponse errors) = PinForgotError;
}
