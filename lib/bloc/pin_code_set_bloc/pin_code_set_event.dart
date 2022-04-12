part of 'pin_code_set_bloc.dart';

/// Эвенты блока с логикой установки пин-кода приложения
@freezed
class PinCodeSetEvent with _$PinCodeSetEvent {
  /// Установка пин-кода приложения
  const factory PinCodeSetEvent.pinSet(String pin) = PinSet;

  /// Определение следующего экрана приложения
  const factory PinCodeSetEvent.resolveNextScreen() = ResolveNextScreen;
}
