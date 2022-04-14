// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientSearchResp _$$ClientSearchRespFromJson(Map<String, dynamic> json) {
  print('console 3333 _result.data = json = $json');
  return _$ClientSearchResp(
    clientData: json['clientData'] == null
        ? null
        : ClientSearchClientDataResponse.fromJson(
            json['clientData'] as Map<String, dynamic>),
    clientLivingAddress: json['clientLivingAddress'] == null
        ? null
        : ClientSearchClientAddressResponse.fromJson(
            json['clientLivingAddress'] as Map<String, dynamic>),
    clientRegistrationAddress: json['clientRegistrationAddress'] == null
        ? null
        : ClientSearchClientAddressResponse.fromJson(
            json['clientRegistrationAddress'] as Map<String, dynamic>),
    clientTemporaryAddress: json['clientTemporaryAddress'] == null
        ? null
        : ClientSearchClientAddressResponse.fromJson(
            json['clientTemporaryAddress'] as Map<String, dynamic>),
    clientIncome: json['clientIncome'] == null
        ? null
        : ClientSearchClientIncomeResponse.fromJson(
            json['clientIncome'] as Map<String, dynamic>),
    clientFamilyData: json['clientFamilyData'] == null
        ? null
        : ClientSearchClientFamilyDataResponse.fromJson(
            json['clientFamilyData'] as Map<String, dynamic>),
    clientJobInfo: json['clientJobInfo'] == null
        ? null
        : ClientSearchClientJobInfoResponse.fromJson(
            json['clientJobInfo'] as Map<String, dynamic>),
    clientProperties: (json['clientProperties'] as List<dynamic>?)
        ?.map((e) => ClientSearchClientPropertiesItemResponse.fromJson(
            e as Map<String, dynamic>))
        .toList(),
    clientVehicles: (json['clientVehicles'] as List<dynamic>?)
        ?.map((e) => ClientSearchClientPropertiesItemResponse.fromJson(
            e as Map<String, dynamic>))
        .toList(),
    codeWord: json['code_word'] as String?,
  );
}

Map<String, dynamic> _$$ClientSearchRespToJson(_$ClientSearchResp instance) =>
    <String, dynamic>{
      'clientData': instance.clientData,
      'clientLivingAddress': instance.clientLivingAddress,
      'clientRegistrationAddress': instance.clientRegistrationAddress,
      'clientTemporaryAddress': instance.clientTemporaryAddress,
      'clientIncome': instance.clientIncome,
      'clientFamilyData': instance.clientFamilyData,
      'clientJobInfo': instance.clientJobInfo,
      'clientProperties': instance.clientProperties,
      'clientVehicles': instance.clientVehicles,
      'code_word': instance.codeWord,
    };
