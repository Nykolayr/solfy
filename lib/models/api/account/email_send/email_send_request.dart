import 'package:json_annotation/json_annotation.dart';

part 'email_send_request.g.dart';

@JsonSerializable()
class EmailSendRequest {
  @JsonKey(name: "email")
  final String email;
  EmailSendRequest(this.email);

  Map<String, dynamic> toJson() => _$EmailSendRequestToJson(this);
}
