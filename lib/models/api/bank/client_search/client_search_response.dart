import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_client_address_response.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_client_data_response.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_client_family_data_response.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_client_income_response.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_client_job_info_response.dart';
import 'package:solfy_flutter/models/api/bank/client_search/client_search_client_properties_item_response.dart';

part 'client_search_response.freezed.dart';
part 'client_search_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ClientSearchResponse with _$ClientSearchResponse {
  const factory ClientSearchResponse({
    @JsonKey(name: "clientData") ClientSearchClientDataResponse? clientData,
    @JsonKey(name: "clientLivingAddress")
        ClientSearchClientAddressResponse? clientLivingAddress,
    @JsonKey(name: "clientRegistrationAddress")
        ClientSearchClientAddressResponse? clientRegistrationAddress,
    @JsonKey(name: "clientTemporaryAddress")
        ClientSearchClientAddressResponse? clientTemporaryAddress,
    @JsonKey(name: "clientIncome")
        ClientSearchClientIncomeResponse? clientIncome,
    @JsonKey(name: "clientFamilyData")
        ClientSearchClientFamilyDataResponse? clientFamilyData,
    @JsonKey(name: "clientJobInfo")
        ClientSearchClientJobInfoResponse? clientJobInfo,
    @JsonKey(name: "clientProperties")
        List<ClientSearchClientPropertiesItemResponse>? clientProperties,
    @JsonKey(name: "clientVehicles")
        List<ClientSearchClientPropertiesItemResponse>? clientVehicles,
    @JsonKey(name: "code_word") String? codeWord,
  }) = ClientSearchResp;

  factory ClientSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientSearchResponseFromJson(json);
}
