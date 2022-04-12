// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feeds_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedsResp _$$FeedsRespFromJson(Map<String, dynamic> json) => _$FeedsResp(
      (json['feeds'] as List<dynamic>?)
          ?.map(
              (e) => FeedsFeedItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FeedsRespToJson(_$FeedsResp instance) =>
    <String, dynamic>{
      'feeds': instance.feeds,
    };
