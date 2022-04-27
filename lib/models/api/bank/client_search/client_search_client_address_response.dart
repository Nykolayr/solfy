import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/bank/client_search/value_object_response.dart';

part 'client_search_client_address_response.freezed.dart';
part 'client_search_client_address_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ClientSearchClientAddressResponse
    with _$ClientSearchClientAddressResponse {
  const factory ClientSearchClientAddressResponse(
    @JsonKey(name: "house_number") String? houseNumber,
    @JsonKey(name: "district") ValueObject? district,
    @JsonKey(name: "apartment_number") String? apartmentNumber,
    @JsonKey(name: "locality") String? locality,
    @JsonKey(name: "admin_area") ValueObject? adminArea,
    @JsonKey(name: "street") String? street,
    @JsonKey(name: "type_ownership") ValueObject? typeOwnership,
  ) = ClientAddress;

  factory ClientSearchClientAddressResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ClientSearchClientAddressResponseFromJson(json);
}
