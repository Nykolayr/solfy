// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_city_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$City _$$CityFromJson(Map<String, dynamic> json) => _$City(
      json['id'] as int?,
      json['name'] as String?,
      json['country_id'] as int?,
      json['district_id'] as int?,
      json['region_id'] as int?,
    );

Map<String, dynamic> _$$CityToJson(_$City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country_id': instance.countryId,
      'district_id': instance.districtId,
      'region_id': instance.regionId,
    };
