// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shops_info_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InfoItem _$$InfoItemFromJson(Map<String, dynamic> json) => _$InfoItem(
      json['total'] as String?,
      json['geo'] == null
          ? null
          : ShopsGeoItemResponse.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InfoItemToJson(_$InfoItem instance) =>
    <String, dynamic>{
      'total': instance.total,
      'geo': instance.geo,
    };
