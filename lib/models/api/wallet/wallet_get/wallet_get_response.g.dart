// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_get_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletGetResp _$$WalletGetRespFromJson(Map<String, dynamic> json) =>
    _$WalletGetResp(
      json['wallet'] == null
          ? null
          : WalletGetWalletItemResponse.fromJson(
              json['wallet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WalletGetRespToJson(_$WalletGetResp instance) =>
    <String, dynamic>{
      'wallet': instance.wallet,
    };
