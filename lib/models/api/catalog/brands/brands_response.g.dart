// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brands_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandsResp _$$BrandsRespFromJson(Map<String, dynamic> json) => _$BrandsResp(
      (json['brands'] as List<dynamic>?)
          ?.map((e) =>
              BrandsBrandItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['feeds'] as List<dynamic>?)
          ?.map(
              (e) => BrandsFeedItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['info'] == null
          ? null
          : BrandsInfoItemResponse.fromJson(
              json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrandsRespToJson(_$BrandsResp instance) =>
    <String, dynamic>{
      'brands': instance.brands,
      'feeds': instance.feeds,
      'info': instance.info,
    };
