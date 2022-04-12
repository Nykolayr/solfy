import 'package:json_annotation/json_annotation.dart';

part 'sms_confirm_request.g.dart';

@JsonSerializable()
class SmsConfirmRequest {
  @JsonKey(name: "code")
  final String smsCode;
  SmsConfirmRequest(this.smsCode);

  Map<String, dynamic> toJson() => _$SmsConfirmRequestToJson(this);
}
