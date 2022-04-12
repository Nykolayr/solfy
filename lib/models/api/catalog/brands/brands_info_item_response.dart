import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/brands/brands_geo_item_response.dart';

part 'brands_info_item_response.freezed.dart';
part 'brands_info_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class BrandsInfoItemResponse with _$BrandsInfoItemResponse {
  const factory BrandsInfoItemResponse(
    /// Общее количество магазинов
    @JsonKey(name: "total") String? total,

    /// Гео-информация
    @JsonKey(name: "geo") BrandsGeoItemResponse? geo,
  ) = InfoItem;

  factory BrandsInfoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandsInfoItemResponseFromJson(json);
}
