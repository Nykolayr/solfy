// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'categories_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesRequest _$CategoriesRequestFromJson(Map<String, dynamic> json) =>
    CategoriesRequest(
      placeId: json['geo[place_id]'] as String?,
      latitude: json['geo[latitude]'] as String?,
      longitude: json['geo[longitude]'] as String?,
    );

Map<String, dynamic> _$CategoriesRequestToJson(CategoriesRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('geo[place_id]', instance.placeId);
  writeNotNull('geo[longitude]', instance.longitude);
  writeNotNull('geo[latitude]', instance.latitude);
  return val;
}
