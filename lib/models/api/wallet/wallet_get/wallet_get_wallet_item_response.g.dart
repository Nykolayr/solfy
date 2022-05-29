// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_get_wallet_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletItem _$$WalletItemFromJson(Map<String, dynamic> json) => _$WalletItem(
      json['status'] as String?,
      json['status_contents'] == null
          ? null
          : WalletGetStatusContentsItemResponse.fromJson(
              json['status_contents'] as Map<String, dynamic>),
      json['limit'] as int?,
      json['available_balance'] as int?,
      json['comfortable_payment'] as int?,
      json['nearest_omp'] as int?,
      json['nearest_omp_date'] as String?,
      json['nearest_omp_status'] as String?,
      json['nearest_omp_description'] as String?,
      (json['accounts'] as List<dynamic>?)
          ?.map((e) =>
              WalletGetAccountItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['cards'] as List<dynamic>?)
          ?.map((e) =>
              WalletGetCardItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WalletItemToJson(_$WalletItem instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_contents': instance.statusContents,
      'limit': instance.limit,
      'available_balance': instance.availableBalance,
      'comfortable_payment': instance.comfortablePayment,
      'nearest_omp': instance.nearestOmp,
      'nearest_omp_date': instance.nearestOmpDate,
      'nearest_omp_status': instance.nearest_omp_status,
      'nearest_omp_description': instance.nearest_omp_description,
      'accounts': instance.accounts,
      'cards': instance.cards,
    };
