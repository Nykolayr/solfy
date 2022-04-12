// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_score_client_job_info_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientScoreClientJobInfoItemRequest
    _$ClientScoreClientJobInfoItemRequestFromJson(Map<String, dynamic> json) =>
        ClientScoreClientJobInfoItemRequest(
          employerName: json['employer_name'] as String?,
          employmentPositionCategory:
              json['employment_position_catgeory'] as int?,
          workExperience: json['work_experience'] as int?,
          workerNumber: json['worker_number'] as int?,
          typeActivity: json['type_activity'] as int?,
          typeFarm: json['type_farm'] as int?,
          lastWorkExperience: json['last_work_experience'] as int?,
          typeOrganization: json['type_organization'] as int?,
          employerId: json['employer_id'] as String?,
          typeBusiness: json['type_business'] as int?,
        );

Map<String, dynamic> _$ClientScoreClientJobInfoItemRequestToJson(
        ClientScoreClientJobInfoItemRequest instance) =>
    <String, dynamic>{
      'employer_name': instance.employerName,
      'employment_position_catgeory': instance.employmentPositionCategory,
      'work_experience': instance.workExperience,
      'worker_number': instance.workerNumber,
      'type_activity': instance.typeActivity,
      'type_farm': instance.typeFarm,
      'last_work_experience': instance.lastWorkExperience,
      'type_organization': instance.typeOrganization,
      'employer_id': instance.employerId,
      'type_business': instance.typeBusiness,
    };
