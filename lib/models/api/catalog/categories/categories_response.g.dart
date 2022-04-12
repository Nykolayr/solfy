// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesResp _$$CategoriesRespFromJson(Map<String, dynamic> json) =>
    _$CategoriesResp(
      (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoriesCategoryItemResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      (json['collections'] as List<dynamic>?)
          ?.map((e) => CategoriesCategoryItemResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      json['info'] == null
          ? null
          : CategoriesInfoItemResponse.fromJson(
              json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoriesRespToJson(_$CategoriesResp instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'collections': instance.collections,
      'info': instance.info,
    };
