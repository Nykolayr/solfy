// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_additional_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdditionalItem _$$AdditionalItemFromJson(Map<String, dynamic> json) =>
    _$AdditionalItem(
      json['caption'] as String?,
      (json['feeds'] as List<dynamic>?)
          ?.map((e) => FeedAdditionalFeedItemResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AdditionalItemToJson(_$AdditionalItem instance) =>
    <String, dynamic>{
      'caption': instance.caption,
      'feeds': instance.feeds,
    };
