// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProfileResp _$$GetProfileRespFromJson(Map<String, dynamic> json) =>
    _$GetProfileResp(
      json['profile'] == null
          ? null
          : GetProfileItemResponse.fromJson(
              json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetProfileRespToJson(_$GetProfileResp instance) =>
    <String, dynamic>{
      'profile': instance.profile,
    };
