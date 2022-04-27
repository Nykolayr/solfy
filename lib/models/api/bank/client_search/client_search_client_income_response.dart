import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/bank/client_search/value_object_response.dart';

part 'client_search_client_income_response.freezed.dart';
part 'client_search_client_income_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ClientSearchClientIncomeResponse with _$ClientSearchClientIncomeResponse {
  const factory ClientSearchClientIncomeResponse(
    @JsonKey(name: "add_income_amount") int? addIncomeAmount,
    @JsonKey(name: "loan_expenses") int? loanExpenses,
    @JsonKey(name: "add_income_source") ValueObject? addIncomeSource,
    @JsonKey(name: "add_real_estate_type") ValueObject? add_real_estate_type,
    @JsonKey(name: "add_type_ownership") ValueObject? add_type_ownership,
    @JsonKey(name: "add_income") ValueObject? addIncome,
    @JsonKey(name: "monthly_income") int? monthlyIncome,
    @JsonKey(name: "monthly_expenses") int? monthlyExpenses,
  ) = ClientIncome;

  factory ClientSearchClientIncomeResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ClientSearchClientIncomeResponseFromJson(json);
}
