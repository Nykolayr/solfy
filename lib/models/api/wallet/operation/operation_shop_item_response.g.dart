// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_shop_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopItem _$$ShopItemFromJson(Map<String, dynamic> json) => _$ShopItem(
      json['address'] as String?,
      json['id'] as int?,
      json['site'] as String?,
      json['type'] as String?,
      json['geo'] == null
          ? null
          : OperationGeoItemResponse.fromJson(
              json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShopItemToJson(_$ShopItem instance) =>
    <String, dynamic>{
      'address': instance.address,
      'id': instance.id,
      'site': instance.site,
      'type': instance.type,
      'geo': instance.geo,
    };
