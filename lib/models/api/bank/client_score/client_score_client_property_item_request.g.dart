// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_score_client_property_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientScoreClientPropertyItemRequest
    _$ClientScoreClientPropertyItemRequestFromJson(Map<String, dynamic> json) =>
        ClientScoreClientPropertyItemRequest(
          marketValueRealty: json['market_value_realty'] as int?,
          yearIssue: json['year_issue'] as int?,
          modelVehicle: json['model_vehicle'] as String?,
          regionProperty: json['region_property'] as int?,
          marketValueVehicle: json['market_value_vehicle'] as int?,
          typeProperty: json['type_property'] as int?,
          typeVehicle: json['type_vehicle'] as int?,
        );

Map<String, dynamic> _$ClientScoreClientPropertyItemRequestToJson(
        ClientScoreClientPropertyItemRequest instance) =>
    <String, dynamic>{
      'market_value_realty': instance.marketValueRealty,
      'year_issue': instance.yearIssue,
      'model_vehicle': instance.modelVehicle,
      'region_property': instance.regionProperty,
      'market_value_vehicle': instance.marketValueVehicle,
      'type_property': instance.typeProperty,
      'type_vehicle': instance.typeVehicle,
    };
