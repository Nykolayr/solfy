import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/points/points_geo_item_response.dart';

part 'points_point_item_response.freezed.dart';
part 'points_point_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class PointsPointItemResponse with _$PointsPointItemResponse {
  const factory PointsPointItemResponse(
    /// Идентификатор магазина
    @JsonKey(name: "shop_id") int? shopId,

    /// Координаты магазина
    @JsonKey(name: "geo") PointsGeoItemResponse? geo,
  ) = PointItem;

  factory PointsPointItemResponse.fromJson(Map<String, dynamic> json) =>
      _$PointsPointItemResponseFromJson(json);
}
