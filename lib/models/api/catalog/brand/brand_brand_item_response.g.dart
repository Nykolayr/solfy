// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_brand_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandItem _$$BrandItemFromJson(Map<String, dynamic> json) => _$BrandItem(
      json['id'] as int?,
      json['name'] as String?,
      json['short_description'] as String?,
      json['description'] as String?,
      json['color'] as String?,
      json['site'] as String?,
      json['logo'] as String?,
      (json['phone'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['ranges'] as String?,
      json['ranges_minimal'] as int?,
      json['ranges_maximal'] as int?,
      json['is_promotional'] as bool?,
      json['conditions_count'] as int?,
      (json['conditions'] as List<dynamic>?)
          ?.map((e) =>
              BrandConditionItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BrandItemToJson(_$BrandItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'short_description': instance.shortDescription,
      'description': instance.description,
      'color': instance.color,
      'site': instance.site,
      'logo': instance.logo,
      'phone': instance.phones,
      'ranges': instance.ranges,
      'ranges_minimal': instance.rangesMinimal,
      'ranges_maximal': instance.rangesMaximal,
      'is_promotional': instance.isPromotional,
      'conditions_count': instance.conditionsCount,
      'conditions': instance.conditions,
    };
