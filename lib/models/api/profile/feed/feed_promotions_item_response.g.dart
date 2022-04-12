// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_promotions_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionsItem _$$PromotionsItemFromJson(Map<String, dynamic> json) =>
    _$PromotionsItem(
      json['caption'] as String?,
      (json['brands'] as List<dynamic>?)
          ?.map((e) => FeedPromotionsBrandItemResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      (json['categories'] as List<dynamic>?)
          ?.map((e) => FeedPromotionsCategoryItemResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PromotionsItemToJson(_$PromotionsItem instance) =>
    <String, dynamic>{
      'caption': instance.caption,
      'brands': instance.brands,
      'categories': instance.categories,
    };
