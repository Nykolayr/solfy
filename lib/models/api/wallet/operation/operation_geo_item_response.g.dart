// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_geo_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeoItem _$$GeoItemFromJson(Map<String, dynamic> json) => _$GeoItem(
      (json['latitude'] as num?)?.toDouble(),
      (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$GeoItemToJson(_$GeoItem instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
