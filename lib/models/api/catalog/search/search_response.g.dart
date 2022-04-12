// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResp _$$SearchRespFromJson(Map<String, dynamic> json) => _$SearchResp(
      (json['categories'] as List<dynamic>?)
          ?.map((e) =>
              SearchCategoryItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['brands'] as List<dynamic>?)
          ?.map((e) =>
              SearchBrandItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchRespToJson(_$SearchResp instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'brands': instance.brands,
    };
