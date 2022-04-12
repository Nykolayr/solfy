// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_score_client_family_data_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientScoreClientFamilyDataItemRequest
    _$ClientScoreClientFamilyDataItemRequestFromJson(
            Map<String, dynamic> json) =>
        ClientScoreClientFamilyDataItemRequest(
          maritalStatus: json['marital_status'] as int?,
          children: json['children'] as int?,
          childrenNumber: json['children_number'] as int?,
        );

Map<String, dynamic> _$ClientScoreClientFamilyDataItemRequestToJson(
        ClientScoreClientFamilyDataItemRequest instance) =>
    <String, dynamic>{
      'marital_status': instance.maritalStatus,
      'children': instance.children,
      'children_number': instance.childrenNumber,
    };
