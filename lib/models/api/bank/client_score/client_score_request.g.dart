// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'client_score_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientScoreRequest _$ClientScoreRequestFromJson(Map<String, dynamic> json) =>
    ClientScoreRequest(
      clientData: json['clientData'] == null
          ? null
          : ClientScoreClientDataItemRequest.fromJson(
              json['clientData'] as Map<String, dynamic>),
      clientLivingAddress: json['clientLivingAddress'] == null
          ? null
          : ClientScoreClientAddressRequest.fromJson(
              json['clientLivingAddress'] as Map<String, dynamic>),
      clientFamilyData: json['clientFamilyData'] == null
          ? null
          : ClientScoreClientFamilyDataItemRequest.fromJson(
              json['clientFamilyData'] as Map<String, dynamic>),
      clientJobInfo: json['clientJobInfo'] == null
          ? null
          : ClientScoreClientJobInfoItemRequest.fromJson(
              json['clientJobInfo'] as Map<String, dynamic>),
      clientProperties: (json['clientProperties'] as List<dynamic>?)
          ?.map((e) => ClientScoreClientPropertyItemRequest.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      clientVehicles: (json['clientVehicles'] as List<dynamic>?)
          ?.map((e) => ClientScoreClientPropertyItemRequest.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      clientRegistrationAddress: json['clientRegistrationAddress'] == null
          ? null
          : ClientScoreClientAddressRequest.fromJson(
              json['clientRegistrationAddress'] as Map<String, dynamic>),
      clientTemporaryAddress: json['clientTemporaryAddress'] == null
          ? null
          : ClientScoreClientAddressRequest.fromJson(
              json['clientTemporaryAddress'] as Map<String, dynamic>),
      clientIncome: json['clientIncome'] == null
          ? null
          : ClientScoreClientIncomeItemRequest.fromJson(
              json['clientIncome'] as Map<String, dynamic>),
      secretWord: json['secret_word'] as String?,
    );

Map<String, dynamic> _$ClientScoreRequestToJson(ClientScoreRequest instance) =>
    <String, dynamic>{
      'clientData': instance.clientData,
      'clientLivingAddress': instance.clientLivingAddress,
      'clientFamilyData': instance.clientFamilyData,
      'clientJobInfo': instance.clientJobInfo,
      'clientProperties': instance.clientProperties,
      'clientVehicles': instance.clientVehicles,
      'clientRegistrationAddress': instance.clientRegistrationAddress,
      'clientTemporaryAddress': instance.clientTemporaryAddress,
      'clientIncome': instance.clientIncome,
      'secret_word': instance.secretWord,
    };
