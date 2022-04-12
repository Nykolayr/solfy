// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionaries_filial_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilialResponse _$$FilialResponseFromJson(Map<String, dynamic> json) =>
    _$FilialResponse(
      json['search'] as bool?,
      (json['items'] as List<dynamic>?)
          ?.map((e) => DictionariesFilialItemResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FilialResponseToJson(_$FilialResponse instance) =>
    <String, dynamic>{
      'search': instance.search,
      'items': instance.filials,
    };
