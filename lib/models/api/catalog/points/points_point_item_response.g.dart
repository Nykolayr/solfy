// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'points_point_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointItem _$$PointItemFromJson(Map<String, dynamic> json) => _$PointItem(
      json['shop_id'] as int?,
      json['geo'] == null
          ? null
          : PointsGeoItemResponse.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PointItemToJson(_$PointItem instance) =>
    <String, dynamic>{
      'shop_id': instance.shopId,
      'geo': instance.geo,
    };
