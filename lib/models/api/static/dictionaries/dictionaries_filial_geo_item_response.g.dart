// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionaries_filial_geo_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilialGeo _$$FilialGeoFromJson(Map<String, dynamic> json) => _$FilialGeo(
      json['region_id'] as int?,
      (json['longitude'] as num?)?.toDouble(),
      (json['latitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$FilialGeoToJson(_$FilialGeo instance) =>
    <String, dynamic>{
      'region_id': instance.regionId,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
