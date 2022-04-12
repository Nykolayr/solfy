// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilterRequest _$FilterRequestFromJson(Map<String, dynamic> json) =>
    FilterRequest(
      placeId: json['geo[place_id]'] as String?,
      latitude: json['geo[latitude]'] as String?,
      longitude: json['geo[longitude]'] as String?,
      brandId: json['brand_id'] as int?,
      categoryId: json['category_id'] as int?,
      sort: json['sort'] as String?,
      type: json['type'] as String?,
      term: json['term'] as int?,
      worktime: json['worktime'] as String?,
    );

Map<String, dynamic> _$FilterRequestToJson(FilterRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('geo[place_id]', instance.placeId);
  writeNotNull('geo[longitude]', instance.longitude);
  writeNotNull('geo[latitude]', instance.latitude);
  writeNotNull('category_id', instance.categoryId);
  writeNotNull('brand_id', instance.brandId);
  writeNotNull('type', instance.type);
  writeNotNull('worktime', instance.worktime);
  writeNotNull('sort', instance.sort);
  writeNotNull('term', instance.term);
  return val;
}
