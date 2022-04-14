import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/bank/client_search/value_object_response.dart';

part 'client_search_client_family_data_response.freezed.dart';
part 'client_search_client_family_data_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ClientSearchClientFamilyDataResponse
    with _$ClientSearchClientFamilyDataResponse {
  const factory ClientSearchClientFamilyDataResponse(
    @JsonKey(name: "marital_status") ValueObject? maritalStatus,
    @JsonKey(name: "children") ValueObject? children,
    @JsonKey(name: "children_number") int? childrenNumber,
  ) = ClientFamilyData;

  factory ClientSearchClientFamilyDataResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ClientSearchClientFamilyDataResponseFromJson(json);
}
