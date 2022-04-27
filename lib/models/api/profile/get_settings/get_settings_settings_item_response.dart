import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_settings_settings_item_response.freezed.dart';
part 'get_settings_settings_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GetSettingsSettingsItemResponse with _$GetSettingsSettingsItemResponse {
  const factory GetSettingsSettingsItemResponse(
    /// Язык
    @JsonKey(name: "language") String? language,

    /// Идентификатор города
    @JsonKey(name: "city") int? city,
  ) = SettingsItem;

  factory GetSettingsSettingsItemResponse.fromJson(Map<String, dynamic> json) =>
      _$GetSettingsSettingsItemResponseFromJson(json);
}
