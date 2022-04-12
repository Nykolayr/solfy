// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_score_client_income_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientScoreClientIncomeItemRequest _$ClientScoreClientIncomeItemRequestFromJson(
        Map<String, dynamic> json) =>
    ClientScoreClientIncomeItemRequest(
      addIncomeAmount: json['add_income_amount'] as int?,
      loanExpenses: json['loan_expenses'] as int?,
      addIncomeSource: json['add_income_source'] as int?,
      addIncome: json['add_income'] as int?,
      monthlyIncome: json['monthly_income'] as int?,
      monthlyExpenses: json['monthly_expenses'] as int?,
    );

Map<String, dynamic> _$ClientScoreClientIncomeItemRequestToJson(
        ClientScoreClientIncomeItemRequest instance) =>
    <String, dynamic>{
      'add_income_amount': instance.addIncomeAmount,
      'loan_expenses': instance.loanExpenses,
      'add_income_source': instance.addIncomeSource,
      'add_income': instance.addIncome,
      'monthly_income': instance.monthlyIncome,
      'monthly_expenses': instance.monthlyExpenses,
    };
