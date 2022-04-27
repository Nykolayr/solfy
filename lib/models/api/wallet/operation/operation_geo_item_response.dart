import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation_geo_item_response.freezed.dart';
part 'operation_geo_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class OperationGeoItemResponse with _$OperationGeoItemResponse {
  const factory OperationGeoItemResponse(
    @JsonKey(name: "latitude") double? latitude,
    @JsonKey(name: "longitude") double? longitude,
  ) = GeoItem;

  factory OperationGeoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OperationGeoItemResponseFromJson(json);
}
