import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/bank/client_search/value_object_response.dart';

part 'client_search_client_data_response.freezed.dart';
part 'client_search_client_data_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ClientSearchClientDataResponse with _$ClientSearchClientDataResponse {
  const factory ClientSearchClientDataResponse(
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "country_birth") ValueObject? countryBirth,
    @JsonKey(name: "code_filial") String? codeFilial,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "doc_type") ValueObject? docType,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "doc_end_date") String? docEndDate,
    @JsonKey(name: "pnfl") String? pnfl,
    @JsonKey(name: "inn") String? inn,
    @JsonKey(name: "client_id") String? clientId,
    @JsonKey(name: "residence_county") ValueObject? residenceCountry,
    @JsonKey(name: "mobile_phone1") String? mobilePhone,
    @JsonKey(name: "doc_number") String? docNumber,
    @JsonKey(name: "location_birth") String? locationBirth,
    @JsonKey(name: "client_code") String? clientCode,
    @JsonKey(name: "admin_area_document") ValueObject? adminAreaDocument,
    @JsonKey(name: "doc_series") String? docSeries,
    @JsonKey(name: "gender") ValueObject? gender,
    @JsonKey(name: "doc_issue_date") String? docIssueDate,
    @JsonKey(name: "agency_document") String? agencyDocument,
    @JsonKey(name: "date_of_birth") String? dateOfBirth,
    @JsonKey(name: "middle_name") String? middleName,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "residency") ValueObject? residency,
    @JsonKey(name: "education") ValueObject? education,
    @JsonKey(name: "citizenship") int? citizenship,
  ) = ClientData;

  factory ClientSearchClientDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientSearchClientDataResponseFromJson(json);
}
