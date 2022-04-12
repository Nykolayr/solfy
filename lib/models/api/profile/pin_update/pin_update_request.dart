import 'package:json_annotation/json_annotation.dart';

part 'pin_update_request.g.dart';

@JsonSerializable()
class PinUpdateRequest {
  @JsonKey(name: "pin")
  final String pin;

  @JsonKey(name: "new_pin")
  final String newPin;
  PinUpdateRequest(this.pin, this.newPin);

  Map<String, dynamic> toJson() => _$PinUpdateRequestToJson(this);
}
