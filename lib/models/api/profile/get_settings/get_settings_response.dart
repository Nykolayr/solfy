import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/profile/get_settings/get_settings_settings_item_response.dart';

part 'get_settings_response.freezed.dart';
part 'get_settings_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GetSettingsResponse with _$GetSettingsResponse {
  const factory GetSettingsResponse(
    /// Настройки
    @JsonKey(name: "settings") GetSettingsSettingsItemResponse? settings,
  ) = GetSettingsResp;

  factory GetSettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetSettingsResponseFromJson(json);
}
