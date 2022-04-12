// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedules_schedule_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleItem _$$ScheduleItemFromJson(Map<String, dynamic> json) =>
    _$ScheduleItem(
      json['title'] as String?,
      json['caption'] as String?,
      json['amount'] as String?,
      json['amount_caption'] as String?,
      json['is_expired'] as bool?,
      (json['operations'] as List<dynamic>?)
          ?.map((e) => SchedulesOperationItemResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ScheduleItemToJson(_$ScheduleItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'caption': instance.caption,
      'amount': instance.amount,
      'amount_caption': instance.amountCaption,
      'is_expired': instance.isExpired,
      'operations': instance.operations,
    };
