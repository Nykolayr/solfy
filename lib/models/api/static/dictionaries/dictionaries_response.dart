import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/static/dictionaries/dictionaries_dictionary_response.dart';
import 'package:solfy_flutter/models/api/static/dictionaries/dictionaries_filial_response.dart';

part 'dictionaries_response.freezed.dart';
part 'dictionaries_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class DictionariesResponse with _$DictionariesResponse {
  const factory DictionariesResponse(
    /// Справочник: "Филиалы"
    @JsonKey(name: "filial_code") DictionariesFilialResponse? filialCode,

    /// Справочник: "Наличие дополнительного дохода"
    @JsonKey(name: "add_income") DictionariesDictionaryResponse? addIncome,

    /// Справочник: "Источник дополнительного дохода"
    @JsonKey(name: "add_income_source") DictionariesDictionaryResponse? addIncomeSource,

    /// Справочник: "Регион/область"
    @JsonKey(name: "admin_area") DictionariesDictionaryResponse? adminArea,

    /// Справочник: "Кем выдан документ (ИИБ)"
    @JsonKey(name: "agency_document") DictionariesDictionaryResponse? agencyDocument,

    /// Справочник: "Есть ли дети"
    @JsonKey(name: "children") DictionariesDictionaryResponse? children,

    /// Справочник: "Страна рождения"
    @JsonKey(name: "country_birth") DictionariesDictionaryResponse? countryBirth,

    /// Справочник: "Районы"
    @JsonKey(name: "district") DictionariesDictionaryResponse? district,

    /// Справочник: "Вид документа"
    @JsonKey(name: "doc_type") DictionariesDictionaryResponse? docType,

    /// Справочник: "Степень образования"
    @JsonKey(name: "education") DictionariesDictionaryResponse? education,

    /// Справочник: "Категория занимаемой должности"
    @JsonKey(name: "employment_position_category")
        DictionariesDictionaryResponse? employmentPositionCategory,

    /// Справочник: "Пол"
    @JsonKey(name: "gender") DictionariesDictionaryResponse? gender,

    /// Справочник: "Последний опыт работы"
    @JsonKey(name: "last_work_experience") DictionariesDictionaryResponse? lastWorkExperience,

    /// Справочник: "Семейное положение"
    @JsonKey(name: "marital_status") DictionariesDictionaryResponse? maritalStatus,

    /// Справочник: "Регион/Область"
    @JsonKey(name: "region_property") DictionariesDictionaryResponse? regionProperty,

    /// Справочник: "Гражданином какой страны является клиент"
    @JsonKey(name: "residence_country") DictionariesDictionaryResponse? residenceCountry,

    /// Справочник: "Резиденство"
    @JsonKey(name: "residency") DictionariesDictionaryResponse? residency,

    /// Справочник: "Основной вид деятельности"
    @JsonKey(name: "type_activity") DictionariesDictionaryResponse? typeActivity,

    /// Справочник: "Вид деятельности"
    @JsonKey(name: "type_business") DictionariesDictionaryResponse? typeBusiness,

    /// Справочник: "Вид деятельности"
    @JsonKey(name: "type_farm") DictionariesDictionaryResponse? typeFarm,

    /// Справочник: "Вид деятельности"
    @JsonKey(name: "type_organization") DictionariesDictionaryResponse? typeOrganization,

    /// Справочник: "Вид недвижимости"
    @JsonKey(name: "type_property") DictionariesDictionaryResponse? typeProperty,

    /// Справочник: "Вид владения"
    @JsonKey(name: "type_ownership") DictionariesDictionaryResponse? typeOwnership,

    /// Справочник: "Вид транспорта"
    @JsonKey(name: "type_vehicle") DictionariesDictionaryResponse? typeVehicle,

    /// Справочник: "Срок деятельности"
    @JsonKey(name: "type_workexperience") DictionariesDictionaryResponse? typeWorkExperience,

    /// Справочник: "Количество работников"
    @JsonKey(name: "worker_number") DictionariesDictionaryResponse? workerNumber,

    /// Справочник: "Срок деятельности"
    @JsonKey(name: "work_experience") DictionariesDictionaryResponse? workExperience,
  ) = DictionariesSuccessResponse;

  factory DictionariesResponse.fromJson(Map<String, dynamic> json) =>
      _$DictionariesResponseFromJson(json);
}
