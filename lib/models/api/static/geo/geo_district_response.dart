import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geo_district_response.freezed.dart';
part 'geo_district_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GeoDistrictResponse with _$GeoDistrictResponse {
  const factory GeoDistrictResponse({
    /// Идентификатор района
    @JsonKey(name: "id") int? id,

    /// Название района
    @JsonKey(name: "name") String? name,

    /// Идентификатор страны
    @JsonKey(name: "country_id") int? countryId,

    /// Идентификатор региона
    @JsonKey(name: "region_id") int? regionId,
  }) = District;

  factory GeoDistrictResponse.fromJson(Map<String, dynamic> json) =>
      _$GeoDistrictResponseFromJson(json);
}
