import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geo_city_response.freezed.dart';
part 'geo_city_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GeoCityResponse with _$GeoCityResponse {
  const factory GeoCityResponse(
    /// Идентификатор города
    @JsonKey(name: "id") int? id,

    /// Название города
    @JsonKey(name: "name") String? name,

    /// Идентификатор страны
    @JsonKey(name: "country_id") int? countryId,

    /// Идентификатор района
    @JsonKey(name: "district_id") int? districtId,

    /// Идентификатор региона
    @JsonKey(name: "region_id") int? regionId,
  ) = City;

  factory GeoCityResponse.fromJson(Map<String, dynamic> json) => _$GeoCityResponseFromJson(json);
}
