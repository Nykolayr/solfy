// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OperationsResp _$$OperationsRespFromJson(Map<String, dynamic> json) =>
    _$OperationsResp(
      (json['groups'] as List<dynamic>?)
          ?.map((e) =>
              OperationsGroupItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['operations'] as List<dynamic>?)
          ?.map((e) => OperationsOperationItemResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OperationsRespToJson(_$OperationsResp instance) =>
    <String, dynamic>{
      'groups': instance.groups,
      'operations': instance.operations,
    };
