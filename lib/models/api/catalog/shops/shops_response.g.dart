// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shops_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopsResp _$$ShopsRespFromJson(Map<String, dynamic> json) => _$ShopsResp(
      (json['shops'] as List<dynamic>?)
          ?.map(
              (e) => ShopsShopItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['info'] == null
          ? null
          : ShopsInfoItemResponse.fromJson(
              json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShopsRespToJson(_$ShopsResp instance) =>
    <String, dynamic>{
      'shops': instance.shops,
      'info': instance.info,
    };
