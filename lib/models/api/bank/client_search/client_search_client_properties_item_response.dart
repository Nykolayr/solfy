import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/bank/client_search/value_object_response.dart';

part 'client_search_client_properties_item_response.freezed.dart';
part 'client_search_client_properties_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ClientSearchClientPropertiesItemResponse
    with _$ClientSearchClientPropertiesItemResponse {
  const factory ClientSearchClientPropertiesItemResponse({
    @JsonKey(name: "market_value_realty") int? marketValueRealty,
    @JsonKey(name: "year_issue") int? yearIssue,
    @JsonKey(name: "model_vehicle") String? modelVehicle,
    @JsonKey(name: "region_property") ValueObject? regionProperty,
    @JsonKey(name: "market_value_vehicle") int? marketValueVehicle,
    @JsonKey(name: "type_property") ValueObject? typeProperty,
    @JsonKey(name: "type_vehicle") ValueObject? typeVehicle,
  }) = ClientPropertiesItem;

  factory ClientSearchClientPropertiesItemResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ClientSearchClientPropertiesItemResponseFromJson(json);
}
