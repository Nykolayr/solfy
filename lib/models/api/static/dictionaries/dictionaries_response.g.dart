// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionaries_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DictionariesSuccessResponse _$$DictionariesSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    _$DictionariesSuccessResponse(
      json['filial_code'] == null
          ? null
          : DictionariesFilialResponse.fromJson(
              json['filial_code'] as Map<String, dynamic>),
      json['add_income'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['add_income'] as Map<String, dynamic>),
      json['add_income_source'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['add_income_source'] as Map<String, dynamic>),
      json['admin_area'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['admin_area'] as Map<String, dynamic>),
      json['agency_document'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['agency_document'] as Map<String, dynamic>),
      json['children'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['children'] as Map<String, dynamic>),
      json['country_birth'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['country_birth'] as Map<String, dynamic>),
      json['district'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['district'] as Map<String, dynamic>),
      json['doc_type'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['doc_type'] as Map<String, dynamic>),
      json['education'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['education'] as Map<String, dynamic>),
      json['employment_position_category'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['employment_position_category'] as Map<String, dynamic>),
      json['gender'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['gender'] as Map<String, dynamic>),
      json['last_work_experience'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['last_work_experience'] as Map<String, dynamic>),
      json['marital_status'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['marital_status'] as Map<String, dynamic>),
      json['region_property'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['region_property'] as Map<String, dynamic>),
      json['residence_country'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['residence_country'] as Map<String, dynamic>),
      json['residency'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['residency'] as Map<String, dynamic>),
      json['type_activity'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['type_activity'] as Map<String, dynamic>),
      json['type_business'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['type_business'] as Map<String, dynamic>),
      json['type_farm'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['type_farm'] as Map<String, dynamic>),
      json['type_organization'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['type_organization'] as Map<String, dynamic>),
      json['type_property'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['type_property'] as Map<String, dynamic>),
      json['type_ownership'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['type_ownership'] as Map<String, dynamic>),
      json['type_vehicle'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['type_vehicle'] as Map<String, dynamic>),
      json['type_workexperience'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['type_workexperience'] as Map<String, dynamic>),
      json['worker_number'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['worker_number'] as Map<String, dynamic>),
      json['work_experience'] == null
          ? null
          : DictionariesDictionaryResponse.fromJson(
              json['work_experience'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DictionariesSuccessResponseToJson(
        _$DictionariesSuccessResponse instance) =>
    <String, dynamic>{
      'filial_code': instance.filialCode,
      'add_income': instance.addIncome,
      'add_income_source': instance.addIncomeSource,
      'admin_area': instance.adminArea,
      'agency_document': instance.agencyDocument,
      'children': instance.children,
      'country_birth': instance.countryBirth,
      'district': instance.district,
      'doc_type': instance.docType,
      'education': instance.education,
      'employment_position_category': instance.employmentPositionCategory,
      'gender': instance.gender,
      'last_work_experience': instance.lastWorkExperience,
      'marital_status': instance.maritalStatus,
      'region_property': instance.regionProperty,
      'residence_country': instance.residenceCountry,
      'residency': instance.residency,
      'type_activity': instance.typeActivity,
      'type_business': instance.typeBusiness,
      'type_farm': instance.typeFarm,
      'type_organization': instance.typeOrganization,
      'type_property': instance.typeProperty,
      'type_ownership': instance.typeOwnership,
      'type_vehicle': instance.typeVehicle,
      'type_workexperience': instance.typeWorkExperience,
      'worker_number': instance.workerNumber,
      'work_experience': instance.workExperience,
    };
