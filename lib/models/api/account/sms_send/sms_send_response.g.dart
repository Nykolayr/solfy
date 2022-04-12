// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms_send_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SmsSendResp _$$SmsSendRespFromJson(Map<String, dynamic> json) =>
    _$SmsSendResp(
      json['session_token'] as String?,
      json['session_id'] as String?,
      json['target'] as String?,
      json['message'] as String?,
    );

Map<String, dynamic> _$$SmsSendRespToJson(_$SmsSendResp instance) =>
    <String, dynamic>{
      'session_token': instance.sessionToken,
      'session_id': instance.sessionId,
      'target': instance.target,
      'message': instance.message,
    };
