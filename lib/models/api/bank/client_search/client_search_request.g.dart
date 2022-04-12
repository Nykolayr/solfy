// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientSearchRequest _$ClientSearchRequestFromJson(Map<String, dynamic> json) =>
    ClientSearchRequest(
      json['verified_phone_number'] as String,
      json['document_type'] as Map<String, dynamic>,
      json['document_series'] as String,
      json['document_number'] as String,
      json['pinfl'] as String,
      json['eula_acceptance'] as bool,
    );

Map<String, dynamic> _$ClientSearchRequestToJson(
        ClientSearchRequest instance) =>
    <String, dynamic>{
      'verified_phone_number': instance.verifiedPhoneNumber,
      'document_type': instance.documentType,
      'document_series': instance.documentSeries,
      'document_number': instance.documentNumber,
      'pinfl': instance.pinfl,
      'eula_acceptance': instance.eulaAcceptance,
    };
