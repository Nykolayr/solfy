// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'operation_payment_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OperationPaymentItemResponse _$OperationPaymentItemResponseFromJson(
    Map<String, dynamic> json) {
  return PaymentItem.fromJson(json);
}

/// @nodoc
class _$OperationPaymentItemResponseTearOff {
  const _$OperationPaymentItemResponseTearOff();

  PaymentItem call(
      @JsonKey(name: "caption") String? caption,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "is_repaymented") bool? isRepaymented,
      @JsonKey(name: "is_current") bool? isCurrent) {
    return PaymentItem(
      caption,
      title,
      amount,
      isRepaymented,
      isCurrent,
    );
  }

  OperationPaymentItemResponse fromJson(Map<String, Object> json) {
    return OperationPaymentItemResponse.fromJson(json);
  }
}

/// @nodoc
const $OperationPaymentItemResponse = _$OperationPaymentItemResponseTearOff();

/// @nodoc
mixin _$OperationPaymentItemResponse {
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "is_repaymented")
  bool? get isRepaymented => throw _privateConstructorUsedError;
  @JsonKey(name: "is_current")
  bool? get isCurrent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationPaymentItemResponseCopyWith<OperationPaymentItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationPaymentItemResponseCopyWith<$Res> {
  factory $OperationPaymentItemResponseCopyWith(
          OperationPaymentItemResponse value,
          $Res Function(OperationPaymentItemResponse) then) =
      _$OperationPaymentItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "caption") String? caption,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "is_repaymented") bool? isRepaymented,
      @JsonKey(name: "is_current") bool? isCurrent});
}

/// @nodoc
class _$OperationPaymentItemResponseCopyWithImpl<$Res>
    implements $OperationPaymentItemResponseCopyWith<$Res> {
  _$OperationPaymentItemResponseCopyWithImpl(this._value, this._then);

  final OperationPaymentItemResponse _value;
  // ignore: unused_field
  final $Res Function(OperationPaymentItemResponse) _then;

  @override
  $Res call({
    Object? caption = freezed,
    Object? title = freezed,
    Object? amount = freezed,
    Object? isRepaymented = freezed,
    Object? isCurrent = freezed,
  }) {
    return _then(_value.copyWith(
      caption: caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      isRepaymented: isRepaymented == freezed
          ? _value.isRepaymented
          : isRepaymented // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCurrent: isCurrent == freezed
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class $PaymentItemCopyWith<$Res>
    implements $OperationPaymentItemResponseCopyWith<$Res> {
  factory $PaymentItemCopyWith(
          PaymentItem value, $Res Function(PaymentItem) then) =
      _$PaymentItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "caption") String? caption,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "is_repaymented") bool? isRepaymented,
      @JsonKey(name: "is_current") bool? isCurrent});
}

/// @nodoc
class _$PaymentItemCopyWithImpl<$Res>
    extends _$OperationPaymentItemResponseCopyWithImpl<$Res>
    implements $PaymentItemCopyWith<$Res> {
  _$PaymentItemCopyWithImpl(
      PaymentItem _value, $Res Function(PaymentItem) _then)
      : super(_value, (v) => _then(v as PaymentItem));

  @override
  PaymentItem get _value => super._value as PaymentItem;

  @override
  $Res call({
    Object? caption = freezed,
    Object? title = freezed,
    Object? amount = freezed,
    Object? isRepaymented = freezed,
    Object? isCurrent = freezed,
  }) {
    return _then(PaymentItem(
      caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      isRepaymented == freezed
          ? _value.isRepaymented
          : isRepaymented // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCurrent == freezed
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentItem implements PaymentItem {
  const _$PaymentItem(
      @JsonKey(name: "caption") this.caption,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "is_repaymented") this.isRepaymented,
      @JsonKey(name: "is_current") this.isCurrent);

  factory _$PaymentItem.fromJson(Map<String, dynamic> json) =>
      _$$PaymentItemFromJson(json);

  @override
  @JsonKey(name: "caption")
  final String? caption;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "amount")
  final String? amount;
  @override
  @JsonKey(name: "is_repaymented")
  final bool? isRepaymented;
  @override
  @JsonKey(name: "is_current")
  final bool? isCurrent;

  @override
  String toString() {
    return 'OperationPaymentItemResponse(caption: $caption, title: $title, amount: $amount, isRepaymented: $isRepaymented, isCurrent: $isCurrent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaymentItem &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.isRepaymented, isRepaymented) ||
                const DeepCollectionEquality()
                    .equals(other.isRepaymented, isRepaymented)) &&
            (identical(other.isCurrent, isCurrent) ||
                const DeepCollectionEquality()
                    .equals(other.isCurrent, isCurrent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(isRepaymented) ^
      const DeepCollectionEquality().hash(isCurrent);

  @JsonKey(ignore: true)
  @override
  $PaymentItemCopyWith<PaymentItem> get copyWith =>
      _$PaymentItemCopyWithImpl<PaymentItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentItemToJson(this);
  }
}

abstract class PaymentItem implements OperationPaymentItemResponse {
  const factory PaymentItem(
      @JsonKey(name: "caption") String? caption,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "is_repaymented") bool? isRepaymented,
      @JsonKey(name: "is_current") bool? isCurrent) = _$PaymentItem;

  factory PaymentItem.fromJson(Map<String, dynamic> json) =
      _$PaymentItem.fromJson;

  @override
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_repaymented")
  bool? get isRepaymented => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_current")
  bool? get isCurrent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PaymentItemCopyWith<PaymentItem> get copyWith =>
      throw _privateConstructorUsedError;
}
