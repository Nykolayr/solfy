import 'package:json_annotation/json_annotation.dart';

part 'comfortable_payment_update_request.g.dart';

@JsonSerializable()
class ComfortablePaymentUpdateRequest {
  @JsonKey(name: "value")
  final String value;
  ComfortablePaymentUpdateRequest(this.value);

  Map<String, dynamic> toJson() => _$ComfortablePaymentUpdateRequestToJson(this);
}
