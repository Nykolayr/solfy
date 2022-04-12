part of 'questionnaire_bloc.dart';

/// Эвенты блока с логикой анкеты
@freezed
class QuestionnaireEvent with _$QuestionnaireEvent {
  /// Поиск анкеты
  const factory QuestionnaireEvent.clientSearch({
    String? series,
    String? number,
    String? pinFl,
  }) = ClientSearch;

  /// Отправка анкеты
  const factory QuestionnaireEvent.clientScore(String id) = ClientScore;

  /// Сохранение первого шага анкеты
  const factory QuestionnaireEvent.savePersonalData(
      Map<String, dynamic> data, ClientSearchResponse questionnaire) = SavePersonalData;

  /// Сохранение второго шага анкеты
  const factory QuestionnaireEvent.saveAddressData(Map<String, dynamic> data,
      ClientSearchResponse questionnaire, FactAddressSelector factSelector) = SaveAddressData;

  /// Сохранение третьего шага анкеты
  const factory QuestionnaireEvent.saveJobData(
      Map<String, dynamic> data, ClientSearchResponse questionnaire) = SaveJobData;

  /// Сохранение четвертого шага анкеты
  const factory QuestionnaireEvent.savePropertiesData(
    List<FormPropertyModel> properties,
    List<FormVehicleModel> vehicles,
    ClientSearchResponse questionnaire,
  ) = SavePropertiesData;

  /// Сброс анкеты
  const factory QuestionnaireEvent.reset() = Reset;
}
