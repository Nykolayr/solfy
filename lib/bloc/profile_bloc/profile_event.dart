part of 'profile_bloc.dart';

/// Эвенты блока с логикой загрузки профиля
@freezed
class ProfileEvent with _$ProfileEvent {
  /// Получить профиль
  const factory ProfileEvent.getProfile(
      {@Default(false) bool cacheResponseIfExist, @Default(false) bool isUpdateEvent}) = GetProfile;

  /// Выключить биометрию
  const factory ProfileEvent.disableBiometric() = DisableBiometric;

  /// Включить биометрию
  const factory ProfileEvent.enableBiometric() = EnableBiometric;
}
