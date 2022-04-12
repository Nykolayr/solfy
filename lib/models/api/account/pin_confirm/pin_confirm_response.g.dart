// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_confirm_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PinConfirmResp _$$PinConfirmRespFromJson(Map<String, dynamic> json) =>
    _$PinConfirmResp(
      json['access_token'] as String?,
      json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$PinConfirmRespToJson(_$PinConfirmResp instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
