import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_score_response.freezed.dart';
part 'client_score_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ClientScoreResponse with _$ClientScoreResponse {
  const factory ClientScoreResponse(
    /// Смогли ли отправить анкету
    @JsonKey(name: "valid") bool? valid,
  ) = ClientScoreResp;

  factory ClientScoreResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientScoreResponseFromJson(json);
}
