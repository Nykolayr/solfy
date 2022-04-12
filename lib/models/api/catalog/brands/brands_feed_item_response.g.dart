// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brands_feed_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedItem _$$FeedItemFromJson(Map<String, dynamic> json) => _$FeedItem(
      json['id'] as int?,
      json['brand_logo'] as String?,
      json['image'] as String?,
      json['title'] as String?,
      json['short_description'] as String?,
    );

Map<String, dynamic> _$$FeedItemToJson(_$FeedItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand_logo': instance.brandLogo,
      'image': instance.image,
      'title': instance.title,
      'short_description': instance.shortDescription,
    };
