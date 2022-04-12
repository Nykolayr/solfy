// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_search_client_job_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientJobInfo _$$ClientJobInfoFromJson(Map<String, dynamic> json) =>
    _$ClientJobInfo(
      json['employer_name'] as String?,
      json['employment_position_category'] == null
          ? null
          : ValueObject.fromJson(
              json['employment_position_category'] as Map<String, dynamic>),
      json['work_experience'] == null
          ? null
          : ValueObject.fromJson(
              json['work_experience'] as Map<String, dynamic>),
      json['worker_number'] == null
          ? null
          : ValueObject.fromJson(json['worker_number'] as Map<String, dynamic>),
      json['type_activity'] == null
          ? null
          : ValueObject.fromJson(json['type_activity'] as Map<String, dynamic>),
      json['type_farm'] == null
          ? null
          : ValueObject.fromJson(json['type_farm'] as Map<String, dynamic>),
      json['last_work_experience'] == null
          ? null
          : ValueObject.fromJson(
              json['last_work_experience'] as Map<String, dynamic>),
      json['type_organization'] == null
          ? null
          : ValueObject.fromJson(
              json['type_organization'] as Map<String, dynamic>),
      json['employer_id'] as String?,
      json['type_business'] == null
          ? null
          : ValueObject.fromJson(json['type_business'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClientJobInfoToJson(_$ClientJobInfo instance) =>
    <String, dynamic>{
      'employer_name': instance.employerName,
      'employment_position_category': instance.employmentPositionCategory,
      'work_experience': instance.workExperience,
      'worker_number': instance.workerNumber,
      'type_activity': instance.typeActivity,
      'type_farm': instance.typeFarm,
      'last_work_experience': instance.lastWorkExperience,
      'type_organization': instance.typeOrganization,
      'employer_id': instance.employerId,
      'type_business': instance.typeBusiness,
    };
