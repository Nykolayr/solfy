import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_city_response.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_country_item_response.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_district_response.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_region_response.dart';

part 'geo_response.freezed.dart';
part 'geo_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GeoResponse with _$GeoResponse {
  const factory GeoResponse(
    /// Страны из гео-словаря
    @JsonKey(name: "countries") List<GeoCountryItemResponse>? countryItems,

    /// Города из гео-словаря
    @JsonKey(name: "cities") List<GeoCityResponse>? cities,

    /// Районы из гео-словаря
    @JsonKey(name: "districts") List<GeoDistrictResponse>? districts,

    /// Регионы из гео-словаря
    @JsonKey(name: "regions") List<GeoRegionResponse>? regions,
  ) = GeoSuccessResponse;

  factory GeoResponse.fromJson(Map<String, dynamic> json) => _$GeoResponseFromJson(json);
}

extension FindByRegionName on GeoSuccessResponse {
  /// Поиск районов по названию региона
  List<GeoDistrictResponse> findDistrictsByRegionName(String regionName) {
    final regionId = this.regions?.firstWhere((element) => element.name == regionName).id;
    if (regionId == null) {
      return [];
    } else {
      final districts = this.districts?.where((element) => element.regionId == regionId).toList();
      return districts ?? [];
    }
  }
}
