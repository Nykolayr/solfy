import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/points/points_point_item_response.dart';
import 'package:solfy_flutter/models/entities/catalog/point_item_view_model.dart';

part 'points_response.freezed.dart';
part 'points_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class PointsResponse with _$PointsResponse {
  const factory PointsResponse(
    /// Точки на карте
    @JsonKey(name: "points") List<PointsPointItemResponse>? points,
  ) = PointsResp;

  factory PointsResponse.fromJson(Map<String, dynamic> json) => _$PointsResponseFromJson(json);
}

extension PointsMapper on PointsResponse {
  List<PointItemViewModel> getPoints() {
    final points = this
        .points
        ?.map(
          (item) => PointItemViewModel(
            shopId: item.shopId,
            geo: GeoPointItem(
              latitude: item.geo?.latitude,
              longitude: item.geo?.longitude,
            ),
          ),
        )
        .toList();
    return points ?? [];
  }
}
