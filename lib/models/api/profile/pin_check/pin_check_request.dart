import 'package:json_annotation/json_annotation.dart';

part 'pin_check_request.g.dart';

@JsonSerializable()
class PinCheckRequest {
  @JsonKey(name: "pin")
  final String pin;
  PinCheckRequest(this.pin);

  Map<String, dynamic> toJson() => _$PinCheckRequestToJson(this);
}
