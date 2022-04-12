// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_shop_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopItem _$$ShopItemFromJson(Map<String, dynamic> json) => _$ShopItem(
      json['id'] as int?,
      json['geo'] == null
          ? null
          : ShopGeoItemResponse.fromJson(json['geo'] as Map<String, dynamic>),
      json['brand'] == null
          ? null
          : ShopBrandItemResponse.fromJson(
              json['brand'] as Map<String, dynamic>),
      json['short_description'] as String?,
      json['logo'] as String?,
      json['address'] as String?,
      (json['work_time'] as List<dynamic>?)
          ?.map((e) =>
              ShopWorktimeItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['site'] as String?,
      json['type'] as String?,
      (json['phones'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['ranges'] as String?,
      json['ranges_minimal'] as int?,
      json['ranges_maximal'] as int?,
      json['is_promotional'] as bool?,
      json['conditions_count'] as int?,
      (json['conditions'] as List<dynamic>?)
          ?.map((e) =>
              ShopConditionItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShopItemToJson(_$ShopItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'geo': instance.geo,
      'brand': instance.brand,
      'short_description': instance.shortDescription,
      'logo': instance.logo,
      'address': instance.address,
      'work_time': instance.workTime,
      'site': instance.site,
      'type': instance.type,
      'phones': instance.phones,
      'ranges': instance.ranges,
      'ranges_minimal': instance.rangesMinimal,
      'ranges_maximal': instance.rangesMaximal,
      'is_promotional': instance.isPromotional,
      'conditions_count': instance.conditionsCount,
      'conditions': instance.conditions,
    };
