// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedules_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchedulesResp _$$SchedulesRespFromJson(Map<String, dynamic> json) =>
    _$SchedulesResp(
      (json['schedules'] as List<dynamic>?)
          ?.map((e) =>
              SchedulesScheduleItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SchedulesRespToJson(_$SchedulesResp instance) =>
    <String, dynamic>{
      'schedules': instance.schedules,
    };
