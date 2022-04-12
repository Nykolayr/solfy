import 'package:json_annotation/json_annotation.dart';

part 'client_score_client_income_item_request.g.dart';

@JsonSerializable()
class ClientScoreClientIncomeItemRequest {
  @JsonKey(name: 'add_income_amount')
  int? addIncomeAmount;
  @JsonKey(name: 'loan_expenses')
  int? loanExpenses;
  @JsonKey(name: 'add_income_source')
  int? addIncomeSource;
  @JsonKey(name: 'add_income')
  int? addIncome;
  @JsonKey(name: 'monthly_income')
  int? monthlyIncome;
  @JsonKey(name: 'monthly_expenses')
  int? monthlyExpenses;
  ClientScoreClientIncomeItemRequest({
    this.addIncomeAmount,
    this.loanExpenses,
    this.addIncomeSource,
    this.addIncome,
    this.monthlyIncome,
    this.monthlyExpenses,
  });
  factory ClientScoreClientIncomeItemRequest.fromJson(Map<String, dynamic> json) =>
      _$ClientScoreClientIncomeItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClientScoreClientIncomeItemRequestToJson(this);
}
