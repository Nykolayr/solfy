import 'package:json_annotation/json_annotation.dart';

part 'refillment_request.g.dart';

@JsonSerializable()
class RefillmentRequest {
  @JsonKey(name: "amount")
  final String amount;
  RefillmentRequest(this.amount);

  Map<String, dynamic> toJson() => _$RefillmentRequestToJson(this);
}
