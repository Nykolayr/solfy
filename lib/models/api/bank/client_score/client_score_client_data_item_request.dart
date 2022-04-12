import 'package:json_annotation/json_annotation.dart';

part 'client_score_client_data_item_request.g.dart';

@JsonSerializable()
class ClientScoreClientDataItemRequest {
  @JsonKey(name: 'last_name')
  String? lastName;
  @JsonKey(name: 'country_birth')
  int? countryBirth;
  @JsonKey(name: 'code_filial')
  String? codeFilial;
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'doc_type')
  int? docType;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'doc_end_date')
  String? docEndDate;
  @JsonKey(name: 'pnfl')
  String? pnfl;
  @JsonKey(name: 'inn')
  String? inn;
  @JsonKey(name: 'client_id')
  String? clientId;
  @JsonKey(name: 'residence_country')
  int? residenceCountry;
  @JsonKey(name: 'mobile_phone1')
  String? mobilePhone;
  @JsonKey(name: 'doc_number')
  String? docNumber;
  @JsonKey(name: 'location_birth')
  String? locationBirth;
  @JsonKey(name: 'client_code')
  String? clientCode;
  @JsonKey(name: 'admin_area_document')
  int? adminAreaDocument;
  @JsonKey(name: 'doc_series')
  String? docSeries;
  @JsonKey(name: 'gender')
  int? gender;
  @JsonKey(name: 'doc_issue_date')
  String? docIssueDate;
  @JsonKey(name: 'agency_document')
  int? agencyDocument;
  @JsonKey(name: 'date_of_birth')
  String? dateOfBirth;
  @JsonKey(name: 'middle_name')
  String? middleName;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'residency')
  int? residency;
  @JsonKey(name: 'education')
  int? education;
  @JsonKey(name: 'citizenship')
  int? citizenship;
  ClientScoreClientDataItemRequest({
    this.lastName,
    this.countryBirth,
    this.codeFilial,
    this.firstName,
    this.docType,
    this.email,
    this.docEndDate,
    this.pnfl,
    this.inn,
    this.clientId,
    this.residenceCountry,
    this.mobilePhone,
    this.docNumber,
    this.locationBirth,
    this.clientCode,
    this.adminAreaDocument,
    this.docSeries,
    this.gender,
    this.docIssueDate,
    this.agencyDocument,
    this.dateOfBirth,
    this.middleName,
    this.status,
    this.residency,
    this.education,
    this.citizenship,
  });
  factory ClientScoreClientDataItemRequest.fromJson(Map<String, dynamic> json) =>
      _$ClientScoreClientDataItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClientScoreClientDataItemRequestToJson(this);
}
