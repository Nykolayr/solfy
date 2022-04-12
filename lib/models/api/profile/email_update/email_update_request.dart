import 'package:json_annotation/json_annotation.dart';

part 'email_update_request.g.dart';

@JsonSerializable()
class EmailUpdateRequest {
  @JsonKey(name: "email")
  final String email;
  EmailUpdateRequest(this.email);

  Map<String, dynamic> toJson() => _$EmailUpdateRequestToJson(this);
}
