// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_settings_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetSettingsResp _$$GetSettingsRespFromJson(Map<String, dynamic> json) =>
    _$GetSettingsResp(
      json['settings'] == null
          ? null
          : GetSettingsSettingsItemResponse.fromJson(
              json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetSettingsRespToJson(_$GetSettingsResp instance) =>
    <String, dynamic>{
      'settings': instance.settings,
    };
