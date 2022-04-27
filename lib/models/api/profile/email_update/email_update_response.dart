import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_update_response.freezed.dart';
part 'email_update_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class EmailUpdateResponse with _$EmailUpdateResponse {
  const factory EmailUpdateResponse(
    /// Смогли ли сменить email
    @JsonKey(name: "valid") bool? valid,
  ) = EmailUpdateResp;

  factory EmailUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$EmailUpdateResponseFromJson(json);
}
