// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_wallet_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletItem _$$WalletItemFromJson(Map<String, dynamic> json) => _$WalletItem(
      json['status'] as String?,
      json['status_contents'] == null
          ? null
          : GetProfileStatusContentsItemResponse.fromJson(
              json['status_contents'] as Map<String, dynamic>),
      (json['cards'] as List<dynamic>?)
          ?.map((e) =>
              GetProfileCardItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WalletItemToJson(_$WalletItem instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_contents': instance.statusContents,
      'cards': instance.cards,
    };
