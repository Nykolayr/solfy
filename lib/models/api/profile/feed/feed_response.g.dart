// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedResp _$$FeedRespFromJson(Map<String, dynamic> json) => _$FeedResp(
      json['feed'] == null
          ? null
          : FeedFeedItemResponse.fromJson(json['feed'] as Map<String, dynamic>),
      json['promotions'] == null
          ? null
          : FeedPromotionsItemResponse.fromJson(
              json['promotions'] as Map<String, dynamic>),
      json['additional'] == null
          ? null
          : FeedAdditionalItemResponse.fromJson(
              json['additional'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeedRespToJson(_$FeedResp instance) =>
    <String, dynamic>{
      'feed': instance.feed,
      'promotions': instance.promotions,
      'additional': instance.additional,
    };
