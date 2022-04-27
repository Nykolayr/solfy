import 'package:freezed_annotation/freezed_annotation.dart';

part 'agreement_item_response.freezed.dart';
part 'agreement_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class AgreementItemResponse with _$AgreementItemResponse {
  const factory AgreementItemResponse(
    /// Текст соглашения
    @JsonKey(name: "text") String? text,
  ) = Agreement;

  factory AgreementItemResponse.fromJson(Map<String, dynamic> json) =>
      _$AgreementItemResponseFromJson(json);
}
