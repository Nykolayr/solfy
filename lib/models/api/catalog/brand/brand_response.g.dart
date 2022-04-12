// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandResp _$$BrandRespFromJson(Map<String, dynamic> json) => _$BrandResp(
      json['brand'] == null
          ? null
          : BrandBrandItemResponse.fromJson(
              json['brand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrandRespToJson(_$BrandResp instance) =>
    <String, dynamic>{
      'brand': instance.brand,
    };
