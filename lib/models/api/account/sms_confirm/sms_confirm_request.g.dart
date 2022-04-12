// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms_confirm_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SmsConfirmRequest _$SmsConfirmRequestFromJson(Map<String, dynamic> json) =>
    SmsConfirmRequest(
      json['code'] as String,
    );

Map<String, dynamic> _$SmsConfirmRequestToJson(SmsConfirmRequest instance) =>
    <String, dynamic>{
      'code': instance.smsCode,
    };
