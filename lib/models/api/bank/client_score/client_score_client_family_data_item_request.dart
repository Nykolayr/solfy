import 'package:json_annotation/json_annotation.dart';

part 'client_score_client_family_data_item_request.g.dart';

@JsonSerializable()
class ClientScoreClientFamilyDataItemRequest {
  @JsonKey(name: 'marital_status')
  int? maritalStatus;
  @JsonKey(name: 'children')
  int? children;
  @JsonKey(name: 'children_number')
  int? childrenNumber;
  ClientScoreClientFamilyDataItemRequest({
    this.maritalStatus,
    this.children,
    this.childrenNumber,
  });
  factory ClientScoreClientFamilyDataItemRequest.fromJson(Map<String, dynamic> json) =>
      _$ClientScoreClientFamilyDataItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClientScoreClientFamilyDataItemRequestToJson(this);
}
