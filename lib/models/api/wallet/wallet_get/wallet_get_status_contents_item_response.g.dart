// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_get_status_contents_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatusContentsItem _$$StatusContentsItemFromJson(Map<String, dynamic> json) =>
    _$StatusContentsItem(
      json['title'] as String?,
      json['description'] as String?,
      json['addition'] as String?,
      json['insurance_premium'] as String?,
    );

Map<String, dynamic> _$$StatusContentsItemToJson(
        _$StatusContentsItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'addition': instance.addition,
      'insurance_premium': instance.insurance_premium,
    };
