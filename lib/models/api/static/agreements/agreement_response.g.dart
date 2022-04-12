// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agreement_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgreementSuccessResponse _$$AgreementSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    _$AgreementSuccessResponse(
      json['agreement'] == null
          ? null
          : AgreementItemResponse.fromJson(
              json['agreement'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AgreementSuccessResponseToJson(
        _$AgreementSuccessResponse instance) =>
    <String, dynamic>{
      'agreement': instance.agreement,
    };
