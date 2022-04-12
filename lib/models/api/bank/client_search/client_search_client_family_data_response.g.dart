// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_search_client_family_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientFamilyData _$$ClientFamilyDataFromJson(Map<String, dynamic> json) =>
    _$ClientFamilyData(
      json['marital_status'] == null
          ? null
          : ValueObject.fromJson(
              json['marital_status'] as Map<String, dynamic>),
      json['children'] == null
          ? null
          : ValueObject.fromJson(json['children'] as Map<String, dynamic>),
      json['children_number'] as int?,
    );

Map<String, dynamic> _$$ClientFamilyDataToJson(_$ClientFamilyData instance) =>
    <String, dynamic>{
      'marital_status': instance.maritalStatus,
      'children': instance.children,
      'children_number': instance.childrenNumber,
    };
