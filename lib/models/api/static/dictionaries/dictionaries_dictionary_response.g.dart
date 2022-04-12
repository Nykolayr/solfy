// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionaries_dictionary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DictionaryResponse _$$DictionaryResponseFromJson(Map<String, dynamic> json) =>
    _$DictionaryResponse(
      json['search'] as bool?,
      (json['items'] as List<dynamic>?)
          ?.map((e) => DictionariesDictionaryItemResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DictionaryResponseToJson(
        _$DictionaryResponse instance) =>
    <String, dynamic>{
      'search': instance.search,
      'items': instance.dictionaryItems,
    };
