// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_search_client_income_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientSearchClientIncomeResponse _$ClientSearchClientIncomeResponseFromJson(
    Map<String, dynamic> json) {
  return ClientIncome.fromJson(json);
}

/// @nodoc
class _$ClientSearchClientIncomeResponseTearOff {
  const _$ClientSearchClientIncomeResponseTearOff();

  ClientIncome call(
      @JsonKey(name: "add_income_amount") int? addIncomeAmount,
      @JsonKey(name: "loan_expenses") int? loanExpenses,
      @JsonKey(name: "add_income_source") ValueObject? addIncomeSource,
      @JsonKey(name: "add_income") ValueObject? addIncome,
      @JsonKey(name: "monthly_income") int? monthlyIncome,
      @JsonKey(name: "monthly_expenses") int? monthlyExpenses) {
    return ClientIncome(
      addIncomeAmount,
      loanExpenses,
      addIncomeSource,
      addIncome,
      monthlyIncome,
      monthlyExpenses,
    );
  }

  ClientSearchClientIncomeResponse fromJson(Map<String, Object> json) {
    return ClientSearchClientIncomeResponse.fromJson(json);
  }
}

/// @nodoc
const $ClientSearchClientIncomeResponse =
    _$ClientSearchClientIncomeResponseTearOff();

/// @nodoc
mixin _$ClientSearchClientIncomeResponse {
  @JsonKey(name: "add_income_amount")
  int? get addIncomeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "loan_expenses")
  int? get loanExpenses => throw _privateConstructorUsedError;
  @JsonKey(name: "add_income_source")
  ValueObject? get addIncomeSource => throw _privateConstructorUsedError;
  @JsonKey(name: "add_income")
  ValueObject? get addIncome => throw _privateConstructorUsedError;
  @JsonKey(name: "monthly_income")
  int? get monthlyIncome => throw _privateConstructorUsedError;
  @JsonKey(name: "monthly_expenses")
  int? get monthlyExpenses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientSearchClientIncomeResponseCopyWith<ClientSearchClientIncomeResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientSearchClientIncomeResponseCopyWith<$Res> {
  factory $ClientSearchClientIncomeResponseCopyWith(
          ClientSearchClientIncomeResponse value,
          $Res Function(ClientSearchClientIncomeResponse) then) =
      _$ClientSearchClientIncomeResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "add_income_amount") int? addIncomeAmount,
      @JsonKey(name: "loan_expenses") int? loanExpenses,
      @JsonKey(name: "add_income_source") ValueObject? addIncomeSource,
      @JsonKey(name: "add_income") ValueObject? addIncome,
      @JsonKey(name: "monthly_income") int? monthlyIncome,
      @JsonKey(name: "monthly_expenses") int? monthlyExpenses});
}

/// @nodoc
class _$ClientSearchClientIncomeResponseCopyWithImpl<$Res>
    implements $ClientSearchClientIncomeResponseCopyWith<$Res> {
  _$ClientSearchClientIncomeResponseCopyWithImpl(this._value, this._then);

  final ClientSearchClientIncomeResponse _value;
  // ignore: unused_field
  final $Res Function(ClientSearchClientIncomeResponse) _then;

  @override
  $Res call({
    Object? addIncomeAmount = freezed,
    Object? loanExpenses = freezed,
    Object? addIncomeSource = freezed,
    Object? addIncome = freezed,
    Object? monthlyIncome = freezed,
    Object? monthlyExpenses = freezed,
  }) {
    return _then(_value.copyWith(
      addIncomeAmount: addIncomeAmount == freezed
          ? _value.addIncomeAmount
          : addIncomeAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      loanExpenses: loanExpenses == freezed
          ? _value.loanExpenses
          : loanExpenses // ignore: cast_nullable_to_non_nullable
              as int?,
      addIncomeSource: addIncomeSource == freezed
          ? _value.addIncomeSource
          : addIncomeSource // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      addIncome: addIncome == freezed
          ? _value.addIncome
          : addIncome // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      monthlyIncome: monthlyIncome == freezed
          ? _value.monthlyIncome
          : monthlyIncome // ignore: cast_nullable_to_non_nullable
              as int?,
      monthlyExpenses: monthlyExpenses == freezed
          ? _value.monthlyExpenses
          : monthlyExpenses // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class $ClientIncomeCopyWith<$Res>
    implements $ClientSearchClientIncomeResponseCopyWith<$Res> {
  factory $ClientIncomeCopyWith(
          ClientIncome value, $Res Function(ClientIncome) then) =
      _$ClientIncomeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "add_income_amount") int? addIncomeAmount,
      @JsonKey(name: "loan_expenses") int? loanExpenses,
      @JsonKey(name: "add_income_source") ValueObject? addIncomeSource,
      @JsonKey(name: "add_income") ValueObject? addIncome,
      @JsonKey(name: "monthly_income") int? monthlyIncome,
      @JsonKey(name: "monthly_expenses") int? monthlyExpenses});
}

/// @nodoc
class _$ClientIncomeCopyWithImpl<$Res>
    extends _$ClientSearchClientIncomeResponseCopyWithImpl<$Res>
    implements $ClientIncomeCopyWith<$Res> {
  _$ClientIncomeCopyWithImpl(
      ClientIncome _value, $Res Function(ClientIncome) _then)
      : super(_value, (v) => _then(v as ClientIncome));

  @override
  ClientIncome get _value => super._value as ClientIncome;

  @override
  $Res call({
    Object? addIncomeAmount = freezed,
    Object? loanExpenses = freezed,
    Object? addIncomeSource = freezed,
    Object? addIncome = freezed,
    Object? monthlyIncome = freezed,
    Object? monthlyExpenses = freezed,
  }) {
    return _then(ClientIncome(
      addIncomeAmount == freezed
          ? _value.addIncomeAmount
          : addIncomeAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      loanExpenses == freezed
          ? _value.loanExpenses
          : loanExpenses // ignore: cast_nullable_to_non_nullable
              as int?,
      addIncomeSource == freezed
          ? _value.addIncomeSource
          : addIncomeSource // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      addIncome == freezed
          ? _value.addIncome
          : addIncome // ignore: cast_nullable_to_non_nullable
              as ValueObject?,
      monthlyIncome == freezed
          ? _value.monthlyIncome
          : monthlyIncome // ignore: cast_nullable_to_non_nullable
              as int?,
      monthlyExpenses == freezed
          ? _value.monthlyExpenses
          : monthlyExpenses // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientIncome implements ClientIncome {
  const _$ClientIncome(
      @JsonKey(name: "add_income_amount") this.addIncomeAmount,
      @JsonKey(name: "loan_expenses") this.loanExpenses,
      @JsonKey(name: "add_income_source") this.addIncomeSource,
      @JsonKey(name: "add_income") this.addIncome,
      @JsonKey(name: "monthly_income") this.monthlyIncome,
      @JsonKey(name: "monthly_expenses") this.monthlyExpenses);

  factory _$ClientIncome.fromJson(Map<String, dynamic> json) =>
      _$$ClientIncomeFromJson(json);

  @override
  @JsonKey(name: "add_income_amount")
  final int? addIncomeAmount;
  @override
  @JsonKey(name: "loan_expenses")
  final int? loanExpenses;
  @override
  @JsonKey(name: "add_income_source")
  final ValueObject? addIncomeSource;
  @override
  @JsonKey(name: "add_income")
  final ValueObject? addIncome;
  @override
  @JsonKey(name: "monthly_income")
  final int? monthlyIncome;
  @override
  @JsonKey(name: "monthly_expenses")
  final int? monthlyExpenses;

  @override
  String toString() {
    return 'ClientSearchClientIncomeResponse(addIncomeAmount: $addIncomeAmount, loanExpenses: $loanExpenses, addIncomeSource: $addIncomeSource, addIncome: $addIncome, monthlyIncome: $monthlyIncome, monthlyExpenses: $monthlyExpenses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClientIncome &&
            (identical(other.addIncomeAmount, addIncomeAmount) ||
                const DeepCollectionEquality()
                    .equals(other.addIncomeAmount, addIncomeAmount)) &&
            (identical(other.loanExpenses, loanExpenses) ||
                const DeepCollectionEquality()
                    .equals(other.loanExpenses, loanExpenses)) &&
            (identical(other.addIncomeSource, addIncomeSource) ||
                const DeepCollectionEquality()
                    .equals(other.addIncomeSource, addIncomeSource)) &&
            (identical(other.addIncome, addIncome) ||
                const DeepCollectionEquality()
                    .equals(other.addIncome, addIncome)) &&
            (identical(other.monthlyIncome, monthlyIncome) ||
                const DeepCollectionEquality()
                    .equals(other.monthlyIncome, monthlyIncome)) &&
            (identical(other.monthlyExpenses, monthlyExpenses) ||
                const DeepCollectionEquality()
                    .equals(other.monthlyExpenses, monthlyExpenses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addIncomeAmount) ^
      const DeepCollectionEquality().hash(loanExpenses) ^
      const DeepCollectionEquality().hash(addIncomeSource) ^
      const DeepCollectionEquality().hash(addIncome) ^
      const DeepCollectionEquality().hash(monthlyIncome) ^
      const DeepCollectionEquality().hash(monthlyExpenses);

  @JsonKey(ignore: true)
  @override
  $ClientIncomeCopyWith<ClientIncome> get copyWith =>
      _$ClientIncomeCopyWithImpl<ClientIncome>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientIncomeToJson(this);
  }
}

abstract class ClientIncome implements ClientSearchClientIncomeResponse {
  const factory ClientIncome(
      @JsonKey(name: "add_income_amount") int? addIncomeAmount,
      @JsonKey(name: "loan_expenses") int? loanExpenses,
      @JsonKey(name: "add_income_source") ValueObject? addIncomeSource,
      @JsonKey(name: "add_income") ValueObject? addIncome,
      @JsonKey(name: "monthly_income") int? monthlyIncome,
      @JsonKey(name: "monthly_expenses") int? monthlyExpenses) = _$ClientIncome;

  factory ClientIncome.fromJson(Map<String, dynamic> json) =
      _$ClientIncome.fromJson;

  @override
  @JsonKey(name: "add_income_amount")
  int? get addIncomeAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "loan_expenses")
  int? get loanExpenses => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "add_income_source")
  ValueObject? get addIncomeSource => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "add_income")
  ValueObject? get addIncome => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "monthly_income")
  int? get monthlyIncome => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "monthly_expenses")
  int? get monthlyExpenses => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ClientIncomeCopyWith<ClientIncome> get copyWith =>
      throw _privateConstructorUsedError;
}
