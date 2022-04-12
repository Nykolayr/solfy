import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/profile/get_profile/get_profile_item_response.dart';

part 'get_profile_response.freezed.dart';
part 'get_profile_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GetProfileResponse with _$GetProfileResponse {
  const factory GetProfileResponse(
    /// Профиль
    @JsonKey(name: "profile") GetProfileItemResponse? profile,
  ) = GetProfileResp;

  factory GetProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProfileResponseFromJson(json);
}
