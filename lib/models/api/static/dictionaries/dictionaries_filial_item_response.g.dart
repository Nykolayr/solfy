// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionaries_filial_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Filial _$$FilialFromJson(Map<String, dynamic> json) => _$Filial(
      json['id'] as int?,
      json['value'] as String?,
      json['hint'] as String?,
      json['geo'] == null
          ? null
          : DictionariesFilialGeoItemResponse.fromJson(
              json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FilialToJson(_$Filial instance) => <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'hint': instance.hint,
      'geo': instance.geo,
    };
