// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopResp _$$ShopRespFromJson(Map<String, dynamic> json) => _$ShopResp(
      json['shop'] == null
          ? null
          : ShopShopItemResponse.fromJson(json['shop'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShopRespToJson(_$ShopResp instance) =>
    <String, dynamic>{
      'shop': instance.shop,
    };
