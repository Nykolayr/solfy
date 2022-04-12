// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_operation_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OperationItem _$$OperationItemFromJson(Map<String, dynamic> json) =>
    _$OperationItem(
      title: json['title'] as String?,
      type: json['type'] as String?,
      date: json['date'] as String?,
      picture: json['picture'] as String?,
      amount: json['amount'] as String?,
      status: json['status'] as String?,
      payments: (json['payments'] as List<dynamic>?)
          ?.map((e) =>
              OperationPaymentItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentsChart: json['payments_chart'] == null
          ? null
          : OperationPaymentChartsItemResponse.fromJson(
              json['payments_chart'] as Map<String, dynamic>),
      brand: json['brand'] == null
          ? null
          : OperationBrandItemResponse.fromJson(
              json['brand'] as Map<String, dynamic>),
      shop: json['shop'] == null
          ? null
          : OperationShopItemResponse.fromJson(
              json['shop'] as Map<String, dynamic>),
      isDeclined: json['is_declined'] as bool?,
    );

Map<String, dynamic> _$$OperationItemToJson(_$OperationItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'date': instance.date,
      'picture': instance.picture,
      'amount': instance.amount,
      'status': instance.status,
      'payments': instance.payments,
      'payments_chart': instance.paymentsChart,
      'brand': instance.brand,
      'shop': instance.shop,
      'is_declined': instance.isDeclined,
    };
