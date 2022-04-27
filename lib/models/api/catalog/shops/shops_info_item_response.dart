import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/shops/shops_geo_item_response.dart';

part 'shops_info_item_response.freezed.dart';
part 'shops_info_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ShopsInfoItemResponse with _$ShopsInfoItemResponse {
  const factory ShopsInfoItemResponse(
    /// Общее количество магазинов
    @JsonKey(name: "total") String? total,

    /// Гео-информация
    @JsonKey(name: "geo") ShopsGeoItemResponse? geo,
  ) = InfoItem;

  factory ShopsInfoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopsInfoItemResponseFromJson(json);
}
