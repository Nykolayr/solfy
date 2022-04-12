import 'package:json_annotation/json_annotation.dart';

part 'report_request.g.dart';

@JsonSerializable()
class ReportRequest {
  @JsonKey(name: "email")
  final String email;

  @JsonKey(name: "message")
  final String message;
  ReportRequest(this.email, this.message);

  Map<String, dynamic> toJson() => _$ReportRequestToJson(this);
}
