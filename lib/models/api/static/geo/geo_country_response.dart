import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_country_response.freezed.dart';
part 'geo_country_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GeoCountryResponse with _$GeoCountryResponse {
  const factory GeoCountryResponse(
    /// Идентификатор страны
    @JsonKey(name: "id") int? id,

    /// Название страны
    @JsonKey(name: "name") String? name,
  ) = Country;

  factory GeoCountryResponse.fromJson(Map<String, dynamic> json) =>
      _$GeoCountryResponseFromJson(json);
}
