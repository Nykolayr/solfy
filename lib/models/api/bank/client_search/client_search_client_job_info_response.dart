import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/bank/client_search/value_object_response.dart';

part 'client_search_client_job_info_response.freezed.dart';
part 'client_search_client_job_info_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ClientSearchClientJobInfoResponse with _$ClientSearchClientJobInfoResponse {
  const factory ClientSearchClientJobInfoResponse(
    @JsonKey(name: "employer_name") String? employerName,
    @JsonKey(name: "employment_position_category") ValueObject? employmentPositionCategory,
    @JsonKey(name: "work_experience") ValueObject? workExperience,
    @JsonKey(name: "worker_number") ValueObject? workerNumber,
    @JsonKey(name: "type_activity") ValueObject? typeActivity,
    @JsonKey(name: "type_farm") ValueObject? typeFarm,
    @JsonKey(name: "last_work_experience") ValueObject? lastWorkExperience,
    @JsonKey(name: "type_organization") ValueObject? typeOrganization,
    @JsonKey(name: "employer_id") String? employerId,
    @JsonKey(name: "type_business") ValueObject? typeBusiness,
  ) = ClientJobInfo;

  factory ClientSearchClientJobInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientSearchClientJobInfoResponseFromJson(json);
}
