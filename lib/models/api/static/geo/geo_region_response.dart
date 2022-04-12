import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geo_region_response.freezed.dart';
part 'geo_region_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GeoRegionResponse with _$GeoRegionResponse {
  const factory GeoRegionResponse({
    /// Идентификатор региона
    @JsonKey(name: "id") int? id,

    /// Название региона
    @JsonKey(name: "name") String? name,

    /// Идентификатор страны
    @JsonKey(name: "country_id") int? countryId,
  }) = Region;

  factory GeoRegionResponse.fromJson(Map<String, dynamic> json) =>
      _$GeoRegionResponseFromJson(json);
}
