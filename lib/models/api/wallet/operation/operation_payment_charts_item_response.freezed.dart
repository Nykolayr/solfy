// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'operation_payment_charts_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OperationPaymentChartsItemResponse _$OperationPaymentChartsItemResponseFromJson(
    Map<String, dynamic> json) {
  return PaymentCharts.fromJson(json);
}

/// @nodoc
class _$OperationPaymentChartsItemResponseTearOff {
  const _$OperationPaymentChartsItemResponseTearOff();

  PaymentCharts call(
      @JsonKey(name: "caption") String? caption,
      @JsonKey(name: "count") int? count,
      @JsonKey(name: "repaymented_count") int? repaymentedCount) {
    return PaymentCharts(
      caption,
      count,
      repaymentedCount,
    );
  }

  OperationPaymentChartsItemResponse fromJson(Map<String, Object> json) {
    return OperationPaymentChartsItemResponse.fromJson(json);
  }
}

/// @nodoc
const $OperationPaymentChartsItemResponse =
    _$OperationPaymentChartsItemResponseTearOff();

/// @nodoc
mixin _$OperationPaymentChartsItemResponse {
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: "repaymented_count")
  int? get repaymentedCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationPaymentChartsItemResponseCopyWith<
          OperationPaymentChartsItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationPaymentChartsItemResponseCopyWith<$Res> {
  factory $OperationPaymentChartsItemResponseCopyWith(
          OperationPaymentChartsItemResponse value,
          $Res Function(OperationPaymentChartsItemResponse) then) =
      _$OperationPaymentChartsItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "caption") String? caption,
      @JsonKey(name: "count") int? count,
      @JsonKey(name: "repaymented_count") int? repaymentedCount});
}

/// @nodoc
class _$OperationPaymentChartsItemResponseCopyWithImpl<$Res>
    implements $OperationPaymentChartsItemResponseCopyWith<$Res> {
  _$OperationPaymentChartsItemResponseCopyWithImpl(this._value, this._then);

  final OperationPaymentChartsItemResponse _value;
  // ignore: unused_field
  final $Res Function(OperationPaymentChartsItemResponse) _then;

  @override
  $Res call({
    Object? caption = freezed,
    Object? count = freezed,
    Object? repaymentedCount = freezed,
  }) {
    return _then(_value.copyWith(
      caption: caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      repaymentedCount: repaymentedCount == freezed
          ? _value.repaymentedCount
          : repaymentedCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class $PaymentChartsCopyWith<$Res>
    implements $OperationPaymentChartsItemResponseCopyWith<$Res> {
  factory $PaymentChartsCopyWith(
          PaymentCharts value, $Res Function(PaymentCharts) then) =
      _$PaymentChartsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "caption") String? caption,
      @JsonKey(name: "count") int? count,
      @JsonKey(name: "repaymented_count") int? repaymentedCount});
}

/// @nodoc
class _$PaymentChartsCopyWithImpl<$Res>
    extends _$OperationPaymentChartsItemResponseCopyWithImpl<$Res>
    implements $PaymentChartsCopyWith<$Res> {
  _$PaymentChartsCopyWithImpl(
      PaymentCharts _value, $Res Function(PaymentCharts) _then)
      : super(_value, (v) => _then(v as PaymentCharts));

  @override
  PaymentCharts get _value => super._value as PaymentCharts;

  @override
  $Res call({
    Object? caption = freezed,
    Object? count = freezed,
    Object? repaymentedCount = freezed,
  }) {
    return _then(PaymentCharts(
      caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      repaymentedCount == freezed
          ? _value.repaymentedCount
          : repaymentedCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentCharts implements PaymentCharts {
  const _$PaymentCharts(
      @JsonKey(name: "caption") this.caption,
      @JsonKey(name: "count") this.count,
      @JsonKey(name: "repaymented_count") this.repaymentedCount);

  factory _$PaymentCharts.fromJson(Map<String, dynamic> json) =>
      _$$PaymentChartsFromJson(json);

  @override
  @JsonKey(name: "caption")
  final String? caption;
  @override
  @JsonKey(name: "count")
  final int? count;
  @override
  @JsonKey(name: "repaymented_count")
  final int? repaymentedCount;

  @override
  String toString() {
    return 'OperationPaymentChartsItemResponse(caption: $caption, count: $count, repaymentedCount: $repaymentedCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaymentCharts &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.repaymentedCount, repaymentedCount) ||
                const DeepCollectionEquality()
                    .equals(other.repaymentedCount, repaymentedCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(repaymentedCount);

  @JsonKey(ignore: true)
  @override
  $PaymentChartsCopyWith<PaymentCharts> get copyWith =>
      _$PaymentChartsCopyWithImpl<PaymentCharts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentChartsToJson(this);
  }
}

abstract class PaymentCharts implements OperationPaymentChartsItemResponse {
  const factory PaymentCharts(
          @JsonKey(name: "caption") String? caption,
          @JsonKey(name: "count") int? count,
          @JsonKey(name: "repaymented_count") int? repaymentedCount) =
      _$PaymentCharts;

  factory PaymentCharts.fromJson(Map<String, dynamic> json) =
      _$PaymentCharts.fromJson;

  @override
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "repaymented_count")
  int? get repaymentedCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PaymentChartsCopyWith<PaymentCharts> get copyWith =>
      throw _privateConstructorUsedError;
}
