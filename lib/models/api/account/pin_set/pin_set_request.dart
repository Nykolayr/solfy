import 'package:json_annotation/json_annotation.dart';

part 'pin_set_request.g.dart';

@JsonSerializable()
class PinSetRequest {
  @JsonKey(name: "pin")
  final String pin;
  PinSetRequest(this.pin);

  Map<String, dynamic> toJson() => _$PinSetRequestToJson(this);
}
