import 'package:json_annotation/json_annotation.dart';

part 'client_search_request.g.dart';

@JsonSerializable()
class ClientSearchRequest {
  @JsonKey(name: "verified_phone_number")
  final String verifiedPhoneNumber;

  @JsonKey(name: "document_type")
  final Map<String, dynamic> documentType;

  @JsonKey(name: "document_series")
  final String documentSeries;

  @JsonKey(name: "document_number")
  final String documentNumber;

  @JsonKey(name: "pinfl")
  final String pinfl;

  @JsonKey(name: "eula_acceptance")
  final bool eulaAcceptance;
  ClientSearchRequest(
    this.verifiedPhoneNumber,
    this.documentType,
    this.documentSeries,
    this.documentNumber,
    this.pinfl,
    this.eulaAcceptance,
  );

  Map<String, dynamic> toJson() => _$ClientSearchRequestToJson(this);
}
