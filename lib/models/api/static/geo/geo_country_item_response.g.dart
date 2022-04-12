// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_country_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryItem _$$CountryItemFromJson(Map<String, dynamic> json) =>
    _$CountryItem(
      json['caption'] as String?,
      (json['items'] as List<dynamic>?)
          ?.map((e) => GeoCountryResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CountryItemToJson(_$CountryItem instance) =>
    <String, dynamic>{
      'caption': instance.caption,
      'items': instance.countries,
    };
