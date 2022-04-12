// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms_send_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SmsSendRequest _$SmsSendRequestFromJson(Map<String, dynamic> json) =>
    SmsSendRequest(
      json['phone'] as String,
    );

Map<String, dynamic> _$SmsSendRequestToJson(SmsSendRequest instance) =>
    <String, dynamic>{
      'phone': instance.phoneNumber,
    };
