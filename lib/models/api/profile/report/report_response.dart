import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'report_response.freezed.dart';
part 'report_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ReportResponse with _$ReportResponse {
  const factory ReportResponse(
    /// Успешно ли отправили письмо
    @JsonKey(name: "valid") bool? valid,
  ) = ReportResp;

  factory ReportResponse.fromJson(Map<String, dynamic> json) => _$ReportResponseFromJson(json);
}
