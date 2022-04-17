// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_score_client_data_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientScoreClientDataItemRequest _$ClientScoreClientDataItemRequestFromJson(
        Map<String, dynamic> json) =>
    ClientScoreClientDataItemRequest(
      lastName: json['last_name'] as String?,
      countryBirth: json['country_birth'] as int?,
      codeFilial: json['code_filial'] as String?,
      firstName: json['first_name'] as String?,
      docType: json['doc_type'] as int?,
      email: json['email'] as String?,
      docEndDate: json['doc_end_date'] as String?,
      pnfl: json['pnfl'] as String?,
      inn: json['inn'] as String?,
      clientId: json['client_id'] as String?,
      residenceCountry: json['residence_country'] as int?,
      mobilePhone: json['mobile_phone1'] as String?,
      docNumber: json['doc_number'] as String?,
      locationBirth: json['location_birth'] as String?,
      clientCode: json['client_code'] as String?,
      adminAreaDocument: json['admin_area_document'] as String?,
      docSeries: json['doc_series'] as String?,
      gender: json['gender'] as int?,
      docIssueDate: json['doc_issue_date'] as String?,
      agencyDocument: json['agency_document'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      middleName: json['middle_name'] as String?,
      status: json['status'] as String?,
      residency: json['residency'] as int?,
      education: json['education'] as int?,
      citizenship: json['citizenship'] as int?,
    );

Map<String, dynamic> _$ClientScoreClientDataItemRequestToJson(
        ClientScoreClientDataItemRequest instance) =>
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
      'residence_country': instance.residenceCountry,
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
