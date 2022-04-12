// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeoSuccessResponse _$$GeoSuccessResponseFromJson(Map<String, dynamic> json) =>
    _$GeoSuccessResponse(
      (json['countries'] as List<dynamic>?)
          ?.map(
              (e) => GeoCountryItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['cities'] as List<dynamic>?)
          ?.map((e) => GeoCityResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['districts'] as List<dynamic>?)
          ?.map((e) => GeoDistrictResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['regions'] as List<dynamic>?)
          ?.map((e) => GeoRegionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GeoSuccessResponseToJson(
        _$GeoSuccessResponse instance) =>
    <String, dynamic>{
      'countries': instance.countryItems,
      'cities': instance.cities,
      'districts': instance.districts,
      'regions': instance.regions,
    };
