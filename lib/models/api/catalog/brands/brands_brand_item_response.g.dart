// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brands_brand_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandItem _$$BrandItemFromJson(Map<String, dynamic> json) => _$BrandItem(
      json['id'] as int?,
      json['name'] as String?,
      json['short_description'] as String?,
      json['color'] as String?,
      json['logo'] as String?,
      json['ranges'] as String?,
      json['ranges_minimal'] as int?,
      json['ranges_maximal'] as int?,
      json['is_promotional'] as bool?,
      json['conditions_count'] as int?,
      (json['conditions'] as List<dynamic>?)
          ?.map((e) =>
              BrandConditionItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['distance'] as int?,
      json['nearest_shop'] == null
          ? null
          : BrandsBrandNearestShopItemResponse.fromJson(
              json['nearest_shop'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrandItemToJson(_$BrandItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'short_description': instance.shortDescription,
      'color': instance.color,
      'logo': instance.logo,
      'ranges': instance.ranges,
      'ranges_minimal': instance.rangesMinimal,
      'ranges_maximal': instance.rangesMaximal,
      'is_promotional': instance.isPromotional,
      'conditions_count': instance.conditionsCount,
      'conditions': instance.conditions,
      'distance': instance.distance,
      'nearest_shop': instance.nearestShopGeo,
    };
