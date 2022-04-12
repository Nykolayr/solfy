import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/profile/set_settings/set_settings_settings_item_request.dart';

part 'set_settings_request.g.dart';

@JsonSerializable()
class SetSettingsRequest {
  @JsonKey(name: "settings")
  final SetSettingsSettingsItemRequest settings;
  SetSettingsRequest(this.settings);

  Map<String, dynamic> toJson() => _$SetSettingsRequestToJson(this);
}
