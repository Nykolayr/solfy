// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaqResp _$$FaqRespFromJson(Map<String, dynamic> json) => _$FaqResp(
      json['faq'] == null
          ? null
          : FaqItemResponse.fromJson(json['faq'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FaqRespToJson(_$FaqResp instance) => <String, dynamic>{
      'faq': instance.faq,
    };
