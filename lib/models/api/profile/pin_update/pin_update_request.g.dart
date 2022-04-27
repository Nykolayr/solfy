// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'pin_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PinUpdateRequest _$PinUpdateRequestFromJson(Map<String, dynamic> json) =>
    PinUpdateRequest(
      json['pin'] as String,
      json['new_pin'] as String,
    );

Map<String, dynamic> _$PinUpdateRequestToJson(PinUpdateRequest instance) =>
    <String, dynamic>{
      'pin': instance.pin,
      'new_pin': instance.newPin,
    };
