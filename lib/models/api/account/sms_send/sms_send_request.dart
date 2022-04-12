import 'package:json_annotation/json_annotation.dart';

part 'sms_send_request.g.dart';

@JsonSerializable()
class SmsSendRequest {
  @JsonKey(name: "phone")
  final String phoneNumber;
  SmsSendRequest(this.phoneNumber);

  Map<String, dynamic> toJson() => _$SmsSendRequestToJson(this);
}
