// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'operation_operation_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OperationOperationItemResponse _$OperationOperationItemResponseFromJson(
    Map<String, dynamic> json) {
  return OperationItem.fromJson(json);
}

/// @nodoc
class _$OperationOperationItemResponseTearOff {
  const _$OperationOperationItemResponseTearOff();

  OperationItem call(
      {@JsonKey(name: "title")
          String? title,
      @JsonKey(name: "type")
          String? type,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "picture")
          String? picture,
      @JsonKey(name: "amount")
          String? amount,
      @JsonKey(name: "status")
          String? status,
      @JsonKey(name: "payments")
          List<OperationPaymentItemResponse>? payments,
      @JsonKey(name: "payments_chart")
          OperationPaymentChartsItemResponse? paymentsChart,
      @JsonKey(name: "brand")
          OperationBrandItemResponse? brand,
      @JsonKey(name: "shop")
          OperationShopItemResponse? shop,
      @JsonKey(name: "is_declined")
          bool? isDeclined}) {
    return OperationItem(
      title: title,
      type: type,
      date: date,
      picture: picture,
      amount: amount,
      status: status,
      payments: payments,
      paymentsChart: paymentsChart,
      brand: brand,
      shop: shop,
      isDeclined: isDeclined,
    );
  }

  OperationOperationItemResponse fromJson(Map<String, Object> json) {
    return OperationOperationItemResponse.fromJson(json);
  }
}

/// @nodoc
const $OperationOperationItemResponse =
    _$OperationOperationItemResponseTearOff();

/// @nodoc
mixin _$OperationOperationItemResponse {
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "picture")
  String? get picture => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "payments")
  List<OperationPaymentItemResponse>? get payments =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "payments_chart")
  OperationPaymentChartsItemResponse? get paymentsChart =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "brand")
  OperationBrandItemResponse? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: "shop")
  OperationShopItemResponse? get shop => throw _privateConstructorUsedError;
  @JsonKey(name: "is_declined")
  bool? get isDeclined => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationOperationItemResponseCopyWith<OperationOperationItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationOperationItemResponseCopyWith<$Res> {
  factory $OperationOperationItemResponseCopyWith(
          OperationOperationItemResponse value,
          $Res Function(OperationOperationItemResponse) then) =
      _$OperationOperationItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "title")
          String? title,
      @JsonKey(name: "type")
          String? type,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "picture")
          String? picture,
      @JsonKey(name: "amount")
          String? amount,
      @JsonKey(name: "status")
          String? status,
      @JsonKey(name: "payments")
          List<OperationPaymentItemResponse>? payments,
      @JsonKey(name: "payments_chart")
          OperationPaymentChartsItemResponse? paymentsChart,
      @JsonKey(name: "brand")
          OperationBrandItemResponse? brand,
      @JsonKey(name: "shop")
          OperationShopItemResponse? shop,
      @JsonKey(name: "is_declined")
          bool? isDeclined});

  $OperationPaymentChartsItemResponseCopyWith<$Res>? get paymentsChart;
  $OperationBrandItemResponseCopyWith<$Res>? get brand;
  $OperationShopItemResponseCopyWith<$Res>? get shop;
}

/// @nodoc
class _$OperationOperationItemResponseCopyWithImpl<$Res>
    implements $OperationOperationItemResponseCopyWith<$Res> {
  _$OperationOperationItemResponseCopyWithImpl(this._value, this._then);

  final OperationOperationItemResponse _value;
  // ignore: unused_field
  final $Res Function(OperationOperationItemResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? picture = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? payments = freezed,
    Object? paymentsChart = freezed,
    Object? brand = freezed,
    Object? shop = freezed,
    Object? isDeclined = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      payments: payments == freezed
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<OperationPaymentItemResponse>?,
      paymentsChart: paymentsChart == freezed
          ? _value.paymentsChart
          : paymentsChart // ignore: cast_nullable_to_non_nullable
              as OperationPaymentChartsItemResponse?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as OperationBrandItemResponse?,
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as OperationShopItemResponse?,
      isDeclined: isDeclined == freezed
          ? _value.isDeclined
          : isDeclined // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $OperationPaymentChartsItemResponseCopyWith<$Res>? get paymentsChart {
    if (_value.paymentsChart == null) {
      return null;
    }

    return $OperationPaymentChartsItemResponseCopyWith<$Res>(
        _value.paymentsChart!, (value) {
      return _then(_value.copyWith(paymentsChart: value));
    });
  }

  @override
  $OperationBrandItemResponseCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $OperationBrandItemResponseCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value));
    });
  }

  @override
  $OperationShopItemResponseCopyWith<$Res>? get shop {
    if (_value.shop == null) {
      return null;
    }

    return $OperationShopItemResponseCopyWith<$Res>(_value.shop!, (value) {
      return _then(_value.copyWith(shop: value));
    });
  }
}

/// @nodoc
abstract class $OperationItemCopyWith<$Res>
    implements $OperationOperationItemResponseCopyWith<$Res> {
  factory $OperationItemCopyWith(
          OperationItem value, $Res Function(OperationItem) then) =
      _$OperationItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "title")
          String? title,
      @JsonKey(name: "type")
          String? type,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "picture")
          String? picture,
      @JsonKey(name: "amount")
          String? amount,
      @JsonKey(name: "status")
          String? status,
      @JsonKey(name: "payments")
          List<OperationPaymentItemResponse>? payments,
      @JsonKey(name: "payments_chart")
          OperationPaymentChartsItemResponse? paymentsChart,
      @JsonKey(name: "brand")
          OperationBrandItemResponse? brand,
      @JsonKey(name: "shop")
          OperationShopItemResponse? shop,
      @JsonKey(name: "is_declined")
          bool? isDeclined});

  @override
  $OperationPaymentChartsItemResponseCopyWith<$Res>? get paymentsChart;
  @override
  $OperationBrandItemResponseCopyWith<$Res>? get brand;
  @override
  $OperationShopItemResponseCopyWith<$Res>? get shop;
}

/// @nodoc
class _$OperationItemCopyWithImpl<$Res>
    extends _$OperationOperationItemResponseCopyWithImpl<$Res>
    implements $OperationItemCopyWith<$Res> {
  _$OperationItemCopyWithImpl(
      OperationItem _value, $Res Function(OperationItem) _then)
      : super(_value, (v) => _then(v as OperationItem));

  @override
  OperationItem get _value => super._value as OperationItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? picture = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? payments = freezed,
    Object? paymentsChart = freezed,
    Object? brand = freezed,
    Object? shop = freezed,
    Object? isDeclined = freezed,
  }) {
    return _then(OperationItem(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      payments: payments == freezed
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<OperationPaymentItemResponse>?,
      paymentsChart: paymentsChart == freezed
          ? _value.paymentsChart
          : paymentsChart // ignore: cast_nullable_to_non_nullable
              as OperationPaymentChartsItemResponse?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as OperationBrandItemResponse?,
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as OperationShopItemResponse?,
      isDeclined: isDeclined == freezed
          ? _value.isDeclined
          : isDeclined // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperationItem implements OperationItem {
  const _$OperationItem(
      {@JsonKey(name: "title") this.title,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "picture") this.picture,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "payments") this.payments,
      @JsonKey(name: "payments_chart") this.paymentsChart,
      @JsonKey(name: "brand") this.brand,
      @JsonKey(name: "shop") this.shop,
      @JsonKey(name: "is_declined") this.isDeclined});

  factory _$OperationItem.fromJson(Map<String, dynamic> json) =>
      _$$OperationItemFromJson(json);

  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "picture")
  final String? picture;
  @override
  @JsonKey(name: "amount")
  final String? amount;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "payments")
  final List<OperationPaymentItemResponse>? payments;
  @override
  @JsonKey(name: "payments_chart")
  final OperationPaymentChartsItemResponse? paymentsChart;
  @override
  @JsonKey(name: "brand")
  final OperationBrandItemResponse? brand;
  @override
  @JsonKey(name: "shop")
  final OperationShopItemResponse? shop;
  @override
  @JsonKey(name: "is_declined")
  final bool? isDeclined;

  @override
  String toString() {
    return 'OperationOperationItemResponse(title: $title, type: $type, date: $date, picture: $picture, amount: $amount, status: $status, payments: $payments, paymentsChart: $paymentsChart, brand: $brand, shop: $shop, isDeclined: $isDeclined)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OperationItem &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.payments, payments) ||
                const DeepCollectionEquality()
                    .equals(other.payments, payments)) &&
            (identical(other.paymentsChart, paymentsChart) ||
                const DeepCollectionEquality()
                    .equals(other.paymentsChart, paymentsChart)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.shop, shop) ||
                const DeepCollectionEquality().equals(other.shop, shop)) &&
            (identical(other.isDeclined, isDeclined) ||
                const DeepCollectionEquality()
                    .equals(other.isDeclined, isDeclined)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(payments) ^
      const DeepCollectionEquality().hash(paymentsChart) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(shop) ^
      const DeepCollectionEquality().hash(isDeclined);

  @JsonKey(ignore: true)
  @override
  $OperationItemCopyWith<OperationItem> get copyWith =>
      _$OperationItemCopyWithImpl<OperationItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperationItemToJson(this);
  }
}

abstract class OperationItem implements OperationOperationItemResponse {
  const factory OperationItem(
      {@JsonKey(name: "title")
          String? title,
      @JsonKey(name: "type")
          String? type,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "picture")
          String? picture,
      @JsonKey(name: "amount")
          String? amount,
      @JsonKey(name: "status")
          String? status,
      @JsonKey(name: "payments")
          List<OperationPaymentItemResponse>? payments,
      @JsonKey(name: "payments_chart")
          OperationPaymentChartsItemResponse? paymentsChart,
      @JsonKey(name: "brand")
          OperationBrandItemResponse? brand,
      @JsonKey(name: "shop")
          OperationShopItemResponse? shop,
      @JsonKey(name: "is_declined")
          bool? isDeclined}) = _$OperationItem;

  factory OperationItem.fromJson(Map<String, dynamic> json) =
      _$OperationItem.fromJson;

  @override
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "picture")
  String? get picture => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payments")
  List<OperationPaymentItemResponse>? get payments =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payments_chart")
  OperationPaymentChartsItemResponse? get paymentsChart =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "brand")
  OperationBrandItemResponse? get brand => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "shop")
  OperationShopItemResponse? get shop => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_declined")
  bool? get isDeclined => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $OperationItemCopyWith<OperationItem> get copyWith =>
      throw _privateConstructorUsedError;
}
