// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_search_client_properties_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientPropertiesItem _$$ClientPropertiesItemFromJson(
        Map<String, dynamic> json) =>
    _$ClientPropertiesItem(
      marketValueRealty: json['market_value_realty'] as int?,
      yearIssue: json['year_issue'] as int?,
      modelVehicle: json['model_vehicle'] as String?,
      regionProperty: json['region_property'] == null
          ? null
          : ValueObject.fromJson(
              json['region_property'] as Map<String, dynamic>),
      marketValueVehicle: json['market_value_vehicle'] as int?,
      typeProperty: json['type_property'] == null
          ? null
          : ValueObject.fromJson(json['type_property'] as Map<String, dynamic>),
      typeVehicle: json['type_vehicle'] == null
          ? null
          : ValueObject.fromJson(json['type_vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClientPropertiesItemToJson(
        _$ClientPropertiesItem instance) =>
    <String, dynamic>{
      'market_value_realty': instance.marketValueRealty,
      'year_issue': instance.yearIssue,
      'model_vehicle': instance.modelVehicle,
      'region_property': instance.regionProperty,
      'market_value_vehicle': instance.marketValueVehicle,
      'type_property': instance.typeProperty,
      'type_vehicle': instance.typeVehicle,
    };
