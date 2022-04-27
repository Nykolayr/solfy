// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRequest _$SearchRequestFromJson(Map<String, dynamic> json) =>
    SearchRequest(
      query: json['query'] as String,
      placeId: json['geo[place_id]'] as String?,
      latitude: json['geo[latitude]'] as String?,
      longitude: json['geo[longitude]'] as String?,
    );

Map<String, dynamic> _$SearchRequestToJson(SearchRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('geo[place_id]', instance.placeId);
  writeNotNull('geo[longitude]', instance.longitude);
  writeNotNull('geo[latitude]', instance.latitude);
  val['query'] = instance.query;
  return val;
}
