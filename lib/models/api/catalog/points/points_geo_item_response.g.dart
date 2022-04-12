// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'points_geo_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeoItem _$$GeoItemFromJson(Map<String, dynamic> json) => _$GeoItem(
      (json['longitude'] as num?)?.toDouble(),
      (json['latitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$GeoItemToJson(_$GeoItem instance) => <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
