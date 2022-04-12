// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedules_operation_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OperationItem _$$OperationItemFromJson(Map<String, dynamic> json) =>
    _$OperationItem(
      json['id'] as String?,
      json['title'] as String?,
      json['type'] as String?,
      json['caption'] as String?,
      json['date'] as String?,
      json['date_timestamp'] as int?,
      json['group_id'] as String?,
      json['picture'] as String?,
      json['amount'] as String?,
      json['is_declined'] as bool?,
    );

Map<String, dynamic> _$$OperationItemToJson(_$OperationItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'caption': instance.caption,
      'date': instance.date,
      'date_timestamp': instance.dateTimestamp,
      'group_id': instance.groupId,
      'picture': instance.picture,
      'amount': instance.amount,
      'is_declined': instance.isDeclined,
    };
