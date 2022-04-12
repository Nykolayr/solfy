import 'package:json_annotation/json_annotation.dart';

part 'set_settings_settings_item_request.g.dart';

@JsonSerializable()
class SetSettingsSettingsItemRequest {
  @JsonKey(name: "language")
  final String? language;

  @JsonKey(name: "city")
  final int? city;
  SetSettingsSettingsItemRequest({this.language, this.city});

  Map<String, dynamic> toJson() => _$SetSettingsSettingsItemRequestToJson(this);

  factory SetSettingsSettingsItemRequest.fromJson(Map<String, dynamic> json) =>
      _$SetSettingsSettingsItemRequestFromJson(json);
}
