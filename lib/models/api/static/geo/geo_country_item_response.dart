import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_country_response.dart';

part 'geo_country_item_response.freezed.dart';
part 'geo_country_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GeoCountryItemResponse with _$GeoCountryItemResponse {
  const factory GeoCountryItemResponse(
    /// Буква, с которой начинаются страны
    @JsonKey(name: "caption") String? caption,

    /// Страны с первой буквой [caption]
    @JsonKey(name: "items") List<GeoCountryResponse>? countries,
  ) = CountryItem;

  factory GeoCountryItemResponse.fromJson(Map<String, dynamic> json) =>
      _$GeoCountryItemResponseFromJson(json);
}
