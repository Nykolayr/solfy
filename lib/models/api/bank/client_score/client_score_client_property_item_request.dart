import 'package:json_annotation/json_annotation.dart';

part 'client_score_client_property_item_request.g.dart';

@JsonSerializable()
class ClientScoreClientPropertyItemRequest {
  @JsonKey(name: 'market_value_realty')
  int? marketValueRealty;
  @JsonKey(name: 'year_issue')
  int? yearIssue;
  @JsonKey(name: 'model_vehicle')
  String? modelVehicle;
  @JsonKey(name: 'region_property')
  int? regionProperty;
  @JsonKey(name: 'market_value_vehicle')
  int? marketValueVehicle;
  @JsonKey(name: 'type_property')
  int? typeProperty;
  @JsonKey(name: 'type_vehicle')
  int? typeVehicle;
  ClientScoreClientPropertyItemRequest({
    this.marketValueRealty,
    this.yearIssue,
    this.modelVehicle,
    this.regionProperty,
    this.marketValueVehicle,
    this.typeProperty,
    this.typeVehicle,
  });
  factory ClientScoreClientPropertyItemRequest.fromJson(Map<String, dynamic> json) =>
      _$ClientScoreClientPropertyItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClientScoreClientPropertyItemRequestToJson(this);
}
