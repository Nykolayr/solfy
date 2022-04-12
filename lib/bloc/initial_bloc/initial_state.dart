part of 'initial_bloc.dart';

/// Стейты блока с логикой энтрипоинта приложения
@freezed
class InitialState with _$InitialState {
  /// Состояние при инициализации блока
  const factory InitialState.initial() = Initial;

  /// Состояние загрузки данных
  const factory InitialState.loading() = Loading;

  /// Состояние при успешной загрузке данных
  const factory InitialState.successDownload() = SuccessDownload;

  /// Состояние с ошибкой при загрузке данных
  const factory InitialState.unsuccessDownload(ErrorsResponse errors) = UnsuccessDownload;

  /// Мы успешно получили токен пользователя и можем перейти на экран авторизации
  const factory InitialState.signIn() = SignIn;

  /// Токен не получен, поэтому перенаправляем пользователя на экран регистрации
  const factory InitialState.signUp(Locale? locale) = SignUp;

  /// Токен не получен, поэтому перенаправляем пользователя на экран регистрации
  const factory InitialState.pickLanguage() = PickLanguage;
}
