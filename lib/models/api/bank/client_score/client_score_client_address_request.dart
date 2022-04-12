import 'package:json_annotation/json_annotation.dart';

part 'client_score_client_address_request.g.dart';

@JsonSerializable()
class ClientScoreClientAddressRequest {
  @JsonKey(name: 'house_number')
  String? houseNumber;
  @JsonKey(name: 'district')
  int? district;
  @JsonKey(name: 'apartment_number')
  String? apartmentNumber;
  @JsonKey(name: 'locality')
  String? locality;
  @JsonKey(name: 'admin_area')
  int? adminArea;
  @JsonKey(name: 'street')
  String? street;
  @JsonKey(name: 'type_ownership')
  int? typeOwnership;
  ClientScoreClientAddressRequest({
    this.houseNumber,
    this.district,
    this.apartmentNumber,
    this.locality,
    this.adminArea,
    this.street,
    this.typeOwnership,
  });
  factory ClientScoreClientAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$ClientScoreClientAddressRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClientScoreClientAddressRequestToJson(this);
}
