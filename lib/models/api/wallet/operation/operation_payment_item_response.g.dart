// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_payment_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentItem _$$PaymentItemFromJson(Map<String, dynamic> json) =>
    _$PaymentItem(
      json['caption'] as String?,
      json['title'] as String?,
      json['amount'] as String?,
      json['is_repaymented'] as bool?,
      json['is_current'] as bool?,
    );

Map<String, dynamic> _$$PaymentItemToJson(_$PaymentItem instance) =>
    <String, dynamic>{
      'caption': instance.caption,
      'title': instance.title,
      'amount': instance.amount,
      'is_repaymented': instance.isRepaymented,
      'is_current': instance.isCurrent,
    };
