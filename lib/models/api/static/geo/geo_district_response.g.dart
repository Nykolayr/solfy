// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_district_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$District _$$DistrictFromJson(Map<String, dynamic> json) => _$District(
      id: json['id'] as int?,
      name: json['name'] as String?,
      countryId: json['country_id'] as int?,
      regionId: json['region_id'] as int?,
    );

Map<String, dynamic> _$$DistrictToJson(_$District instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country_id': instance.countryId,
      'region_id': instance.regionId,
    };
