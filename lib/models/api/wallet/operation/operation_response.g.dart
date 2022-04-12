// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OperationResp _$$OperationRespFromJson(Map<String, dynamic> json) =>
    _$OperationResp(
      json['operation'] == null
          ? null
          : OperationOperationItemResponse.fromJson(
              json['operation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OperationRespToJson(_$OperationResp instance) =>
    <String, dynamic>{
      'operation': instance.operation,
    };
