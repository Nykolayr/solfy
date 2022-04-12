import 'package:json_annotation/json_annotation.dart';

part 'pin_confirm_request.g.dart';

@JsonSerializable()
class PinConfirmRequest {
  @JsonKey(name: "pin")
  final String pin;
  PinConfirmRequest(this.pin);

  Map<String, dynamic> toJson() => _$PinConfirmRequestToJson(this);
}
