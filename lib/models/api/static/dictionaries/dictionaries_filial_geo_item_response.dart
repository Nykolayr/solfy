import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionaries_filial_geo_item_response.freezed.dart';
part 'dictionaries_filial_geo_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class DictionariesFilialGeoItemResponse with _$DictionariesFilialGeoItemResponse {
  const factory DictionariesFilialGeoItemResponse(
    /// Идентификатор региона
    @JsonKey(name: "region_id") int? regionId,

    /// Долгота
    @JsonKey(name: "longitude") double? longitude,

    /// Широта
    @JsonKey(name: "latitude") double? latitude,
  ) = FilialGeo;

  factory DictionariesFilialGeoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$DictionariesFilialGeoItemResponseFromJson(json);
}
