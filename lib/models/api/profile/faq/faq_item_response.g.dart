// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaqItem _$$FaqItemFromJson(Map<String, dynamic> json) => _$FaqItem(
      (json['groups'] as List<dynamic>?)
          ?.map((e) => FaqGroupItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['entities'] as List<dynamic>?)
          ?.map((e) =>
              FaqQuestionItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FaqItemToJson(_$FaqItem instance) => <String, dynamic>{
      'groups': instance.groups,
      'entities': instance.questions,
    };
