// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_search_client_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientData _$$ClientDataFromJson(Map<String, dynamic> json) => _$ClientData(
      json['last_name'] as String?,
      json['country_birth'] == null
          ? null
          : ValueObject.fromJson(json['country_birth'] as Map<String, dynamic>),
      json['code_filial'] as String?,
      json['first_name'] as String?,
      json['doc_type'] == null
          ? null
          : ValueObject.fromJson(json['doc_type'] as Map<String, dynamic>),
      json['email'] as String?,
      json['doc_end_date'] as String?,
      json['pnfl'] as String?,
      json['inn'] as String?,
      json['client_id'] as String?,
      json['residence_county'] == null
          ? null
          : ValueObject.fromJson(
              json['residence_county'] as Map<String, dynamic>),
      json['mobile_phone1'] as String?,
      json['doc_number'] as String?,
      json['location_birth'] as String?,
      json['client_code'] as String?,
      json['admin_area_document'] as String?,
      json['doc_series'] as String?,
      json['gender'] == null
          ? null
          : ValueObject.fromJson(json['gender'] as Map<String, dynamic>),
      json['doc_issue_date'] as String?,
      json['agency_document'] == null
          ? null
          : json['agency_document'] as String,
      json['date_of_birth'] as String?,
      json['middle_name'] as String?,
      json['status'] as String?,
      json['residency'] == null
          ? null
          : ValueObject.fromJson(json['residency'] as Map<String, dynamic>),
      json['education'] == null
          ? null
          : ValueObject.fromJson(json['education'] as Map<String, dynamic>),
      json['citizenship'] as int?,
    );

Map<String, dynamic> _$$ClientDataToJson(_$ClientData instance) =>
    <String, dynamic>{
      'last_name': instance.lastName,
      'country_birth': instance.countryBirth,
      'code_filial': instance.codeFilial,
      'first_name': instance.firstName,
      'doc_type': instance.docType,
      'email': instance.email,
      'doc_end_date': instance.docEndDate,
      'pnfl': instance.pnfl,
      'inn': instance.inn,
      'client_id': instance.clientId,
      'residence_county': instance.residenceCountry,
      'mobile_phone1': instance.mobilePhone,
      'doc_number': instance.docNumber,
      'location_birth': instance.locationBirth,
      'client_code': instance.clientCode,
      'admin_area_document': instance.adminAreaDocument,
      'doc_series': instance.docSeries,
      'gender': instance.gender,
      'doc_issue_date': instance.docIssueDate,
      'agency_document': instance.agencyDocument,
      'date_of_birth': instance.dateOfBirth,
      'middle_name': instance.middleName,
      'status': instance.status,
      'residency': instance.residency,
      'education': instance.education,
      'citizenship': instance.citizenship,
    };
