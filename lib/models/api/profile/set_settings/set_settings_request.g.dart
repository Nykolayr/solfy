// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_settings_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetSettingsRequest _$SetSettingsRequestFromJson(Map<String, dynamic> json) =>
    SetSettingsRequest(
      SetSettingsSettingsItemRequest.fromJson(
          json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SetSettingsRequestToJson(SetSettingsRequest instance) =>
    <String, dynamic>{
      'settings': instance.settings,
    };
