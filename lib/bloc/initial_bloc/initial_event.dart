part of 'initial_bloc.dart';

/// Эвенты блока с логикой энтрипоинта приложения
@freezed
class InitialEvent with _$InitialEvent {
  /// Получить статический контент с сервера
  const factory InitialEvent.getStaticContent() = GetStaticContent;

  /// Понять, какой начальный экран показать пользователю
  const factory InitialEvent.resolveFirstScreen() = ResolveFirstScreen;
}
