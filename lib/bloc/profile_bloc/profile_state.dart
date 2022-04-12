part of 'profile_bloc.dart';

/// Стейты блока с логикой загрузки профиля
@freezed
class ProfileState with _$ProfileState {
  /// Начальный стейт
  const factory ProfileState.initial() = Initial;

  /// Стейт загрузки
  const factory ProfileState.loading() = Loading;

  /// Стейт при успешной загрузке профиля
  ///
  /// [profile] - профиль
  ///
  /// [isMyLocationEnabled] - включен ли режим "Рядом со мной"
  ///
  /// [isBiometricEnabled] - включена ли авторизация по биометрии
  const factory ProfileState.getProfileSuccess({
    required GetProfileItemResponse profile,
    required bool isMyLocationEnabled,
    required bool isBiometricEnabled,
  }) = GetProfileSuccess;

  /// Стейт при неуспешной загрузке профиля
  const factory ProfileState.getProfileError(ErrorsResponse errors) = GetProfileError;
}
