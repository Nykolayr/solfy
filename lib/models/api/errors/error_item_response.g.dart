// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Error _$$ErrorFromJson(Map<String, dynamic> json) => _$Error(
      json['code'] as String?,
      json['title'] as String?,
      json['message'] as String?,
      json['target'] as String?,
      json['status'] as int?,
      json['type'] as String?,
    );

Map<String, dynamic> _$$ErrorToJson(_$Error instance) => <String, dynamic>{
      'code': instance.code,
      'title': instance.title,
      'message': instance.message,
      'target': instance.target,
      'status': instance.status,
      'type': instance.type,
    };
