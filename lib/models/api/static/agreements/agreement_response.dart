import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/static/agreements/agreement_item_response.dart';

part 'agreement_response.freezed.dart';
part 'agreement_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class AgreementResponse with _$AgreementResponse {
  const factory AgreementResponse(
    /// Соглашение
    @JsonKey(name: "agreement") AgreementItemResponse? agreement,
  ) = AgreementSuccessResponse;

  factory AgreementResponse.fromJson(Map<String, dynamic> json) =>
      _$AgreementResponseFromJson(json);
}
