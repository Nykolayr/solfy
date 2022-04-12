import 'package:json_annotation/json_annotation.dart';

part 'client_score_client_job_info_item_request.g.dart';

@JsonSerializable()
class ClientScoreClientJobInfoItemRequest {
  @JsonKey(name: 'employer_name')
  String? employerName;

  /// Очепятка в сваггере тоже
  @JsonKey(name: 'employment_position_catgeory')
  int? employmentPositionCategory;
  @JsonKey(name: 'work_experience')
  int? workExperience;
  @JsonKey(name: 'worker_number')
  int? workerNumber;
  @JsonKey(name: 'type_activity')
  int? typeActivity;
  @JsonKey(name: 'type_farm')
  int? typeFarm;
  @JsonKey(name: 'last_work_experience')
  int? lastWorkExperience;
  @JsonKey(name: 'type_organization')
  int? typeOrganization;
  @JsonKey(name: 'employer_id')
  String? employerId;
  @JsonKey(name: 'type_business')
  int? typeBusiness;
  ClientScoreClientJobInfoItemRequest({
    this.employerName,
    this.employmentPositionCategory,
    this.workExperience,
    this.workerNumber,
    this.typeActivity,
    this.typeFarm,
    this.lastWorkExperience,
    this.typeOrganization,
    this.employerId,
    this.typeBusiness,
  });
  factory ClientScoreClientJobInfoItemRequest.fromJson(Map<String, dynamic> json) =>
      _$ClientScoreClientJobInfoItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClientScoreClientJobInfoItemRequestToJson(this);
}
