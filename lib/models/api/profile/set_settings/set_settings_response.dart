import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'set_settings_response.freezed.dart';
part 'set_settings_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class SetSettingsResponse with _$SetSettingsResponse {
  const factory SetSettingsResponse(
    /// Успешно ли сменили настройки
    @JsonKey(name: "valid") bool? valid,
  ) = SetSettingsResp;

  factory SetSettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$SetSettingsResponseFromJson(json);
}
