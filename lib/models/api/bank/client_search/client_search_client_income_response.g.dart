// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_search_client_income_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientIncome _$$ClientIncomeFromJson(Map<String, dynamic> json) =>
    _$ClientIncome(
      json['add_income_amount'] as int?,
      json['loan_expenses'] as int?,
      json['add_income_source'] == null
          ? null
          : ValueObject.fromJson(
              json['add_income_source'] as Map<String, dynamic>),
      json['add_real_estate_type'] == null
          ? null
          : ValueObject.fromJson(
              json['add_real_estate_type'] as Map<String, dynamic>),
      json['add_type_ownership'] == null
          ? null
          : ValueObject.fromJson(
              json['add_type_ownership'] as Map<String, dynamic>),
      json['add_income'] == null
          ? null
          : ValueObject.fromJson(json['add_income'] as Map<String, dynamic>),
      json['monthly_income'] as int?,
      json['monthly_expenses'] as int?,
    );

Map<String, dynamic> _$$ClientIncomeToJson(_$ClientIncome instance) =>
    <String, dynamic>{
      'add_income_amount': instance.addIncomeAmount,
      'loan_expenses': instance.loanExpenses,
      'add_income_source': instance.addIncomeSource,
      'add_real_estate_type': instance.add_real_estate_type,
      'add_type_ownership': instance.add_type_ownership,
      'add_income': instance.addIncome,
      'monthly_income': instance.monthlyIncome,
      'monthly_expenses': instance.monthlyExpenses,
    };
