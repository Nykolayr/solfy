// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_get_account_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountItem _$$AccountItemFromJson(Map<String, dynamic> json) =>
    _$AccountItem(
      json['id'] as String?,
      json['type'] as String?,
      json['balance'] as int?,
    );

Map<String, dynamic> _$$AccountItemToJson(_$AccountItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'balance': instance.balance,
    };
