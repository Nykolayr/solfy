import 'package:json_annotation/json_annotation.dart';

import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_address_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_data_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_family_data_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_income_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_job_info_item_request.dart';
import 'package:solfy_flutter/models/api/bank/client_score/client_score_client_property_item_request.dart';

part 'client_score_request.g.dart';

@JsonSerializable()
class ClientScoreRequest {
  @JsonKey(name: 'clientData')
  ClientScoreClientDataItemRequest? clientData;

  @JsonKey(name: 'clientLivingAddress')
  ClientScoreClientAddressRequest? clientLivingAddress;

  @JsonKey(name: 'clientFamilyData')
  ClientScoreClientFamilyDataItemRequest? clientFamilyData;

  @JsonKey(name: 'clientJobInfo')
  ClientScoreClientJobInfoItemRequest? clientJobInfo;

  @JsonKey(name: 'clientProperties')
  List<ClientScoreClientPropertyItemRequest>? clientProperties;

  @JsonKey(name: 'clientVehicles')
  List<ClientScoreClientPropertyItemRequest>? clientVehicles;

  @JsonKey(name: 'clientRegistrationAddress')
  ClientScoreClientAddressRequest? clientRegistrationAddress;

  @JsonKey(name: 'clientTemporaryAddress')
  ClientScoreClientAddressRequest? clientTemporaryAddress;

  @JsonKey(name: 'clientIncome')
  ClientScoreClientIncomeItemRequest? clientIncome;

  @JsonKey(name: 'secret_word')
  String? secretWord;
  ClientScoreRequest({
    this.clientData,
    this.clientLivingAddress,
    this.clientFamilyData,
    this.clientJobInfo,
    this.clientProperties,
    this.clientVehicles,
    this.clientRegistrationAddress,
    this.clientTemporaryAddress,
    this.clientIncome,
    this.secretWord,
  });

  Map<String, dynamic> toJson() => _$ClientScoreRequestToJson(this);
}
