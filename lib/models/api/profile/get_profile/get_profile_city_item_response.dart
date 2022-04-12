import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_profile_city_item_response.freezed.dart';
part 'get_profile_city_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GetProfileCityItemResponse with _$GetProfileCityItemResponse {
  const factory GetProfileCityItemResponse(
    /// Идентификатор
    @JsonKey(name: "id") int? id,

    /// Значение
    @JsonKey(name: "name") String? value,
  ) = CityItem;

  factory GetProfileCityItemResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProfileCityItemResponseFromJson(json);
}
