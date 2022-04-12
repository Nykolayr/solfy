import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'points_geo_item_response.freezed.dart';
part 'points_geo_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class PointsGeoItemResponse with _$PointsGeoItemResponse {
  const factory PointsGeoItemResponse(
    @JsonKey(name: "longitude") double? longitude,
    @JsonKey(name: "latitude") double? latitude,
  ) = GeoItem;

  factory PointsGeoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$PointsGeoItemResponseFromJson(json);
}
