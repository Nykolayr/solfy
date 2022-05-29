// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_get_wallet_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletGetWalletItemResponse _$WalletGetWalletItemResponseFromJson(
    Map<String, dynamic> json) {
  return WalletItem.fromJson(json);
}

/// @nodoc
class _$WalletGetWalletItemResponseTearOff {
  const _$WalletGetWalletItemResponseTearOff();

  WalletItem call(
      @JsonKey(name: "status")
          String? status,
      @JsonKey(name: "status_contents")
          WalletGetStatusContentsItemResponse? statusContents,
      @JsonKey(name: "limit")
          int? limit,
      @JsonKey(name: "available_balance")
          int? availableBalance,
      @JsonKey(name: "comfortable_payment")
          int? comfortablePayment,
      @JsonKey(name: "nearest_omp")
          int? nearestOmp,
      @JsonKey(name: "nearest_omp_date")
          String? nearestOmpDate,
      @JsonKey(name: "nearest_omp_status")
          String? nearest_omp_status,
      @JsonKey(name: "nearest_omp_description")
          String? nearest_omp_description,
      @JsonKey(name: "accounts")
          List<WalletGetAccountItemResponse>? accounts,
      @JsonKey(name: "cards")
          List<WalletGetCardItemResponse>? cards) {
    return WalletItem(
      status,
      statusContents,
      limit,
      availableBalance,
      comfortablePayment,
      nearestOmp,
      nearestOmpDate,
      nearest_omp_status,
      nearest_omp_description,
      accounts,
      cards,
    );
  }

  WalletGetWalletItemResponse fromJson(Map<String, Object> json) {
    return WalletGetWalletItemResponse.fromJson(json);
  }
}

/// @nodoc
const $WalletGetWalletItemResponse = _$WalletGetWalletItemResponseTearOff();

/// @nodoc
mixin _$WalletGetWalletItemResponse {
  /// Статус аккаунта
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;

  /// Детали статуса
  @JsonKey(name: "status_contents")
  WalletGetStatusContentsItemResponse? get statusContents =>
      throw _privateConstructorUsedError;

  /// Лимит
  @JsonKey(name: "limit")
  int? get limit => throw _privateConstructorUsedError;

  /// Доступный баланс
  @JsonKey(name: "available_balance")
  int? get availableBalance => throw _privateConstructorUsedError;

  /// Комфортный платеж
  @JsonKey(name: "comfortable_payment")
  int? get comfortablePayment => throw _privateConstructorUsedError;

  /// Ближайший платеж
  @JsonKey(name: "nearest_omp")
  int? get nearestOmp => throw _privateConstructorUsedError;

  /// Дата ближайшего платежа
  @JsonKey(name: "nearest_omp_date")
  String? get nearestOmpDate => throw _privateConstructorUsedError;

  /// Дата ближайшего платежа
  @JsonKey(name: "nearest_omp_status")
  String? get nearest_omp_status => throw _privateConstructorUsedError;

  /// Дата ближайшего платежа
  @JsonKey(name: "nearest_omp_description")
  String? get nearest_omp_description => throw _privateConstructorUsedError;

  /// Аккаунты
  @JsonKey(name: "accounts")
  List<WalletGetAccountItemResponse>? get accounts =>
      throw _privateConstructorUsedError;

  /// Карты
  @JsonKey(name: "cards")
  List<WalletGetCardItemResponse>? get cards =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletGetWalletItemResponseCopyWith<WalletGetWalletItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletGetWalletItemResponseCopyWith<$Res> {
  factory $WalletGetWalletItemResponseCopyWith(
          WalletGetWalletItemResponse value,
          $Res Function(WalletGetWalletItemResponse) then) =
      _$WalletGetWalletItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status")
          String? status,
      @JsonKey(name: "status_contents")
          WalletGetStatusContentsItemResponse? statusContents,
      @JsonKey(name: "limit")
          int? limit,
      @JsonKey(name: "available_balance")
          int? availableBalance,
      @JsonKey(name: "comfortable_payment")
          int? comfortablePayment,
      @JsonKey(name: "nearest_omp")
          int? nearestOmp,
      @JsonKey(name: "nearest_omp_date")
          String? nearestOmpDate,
      @JsonKey(name: "accounts")
          List<WalletGetAccountItemResponse>? accounts,
      @JsonKey(name: "cards")
          List<WalletGetCardItemResponse>? cards});

  $WalletGetStatusContentsItemResponseCopyWith<$Res>? get statusContents;
}

/// @nodoc
class _$WalletGetWalletItemResponseCopyWithImpl<$Res>
    implements $WalletGetWalletItemResponseCopyWith<$Res> {
  _$WalletGetWalletItemResponseCopyWithImpl(this._value, this._then);

  final WalletGetWalletItemResponse _value;
  // ignore: unused_field
  final $Res Function(WalletGetWalletItemResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? statusContents = freezed,
    Object? limit = freezed,
    Object? availableBalance = freezed,
    Object? comfortablePayment = freezed,
    Object? nearestOmp = freezed,
    Object? nearestOmpDate = freezed,
    Object? accounts = freezed,
    Object? cards = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusContents: statusContents == freezed
          ? _value.statusContents
          : statusContents // ignore: cast_nullable_to_non_nullable
              as WalletGetStatusContentsItemResponse?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      availableBalance: availableBalance == freezed
          ? _value.availableBalance
          : availableBalance // ignore: cast_nullable_to_non_nullable
              as int?,
      comfortablePayment: comfortablePayment == freezed
          ? _value.comfortablePayment
          : comfortablePayment // ignore: cast_nullable_to_non_nullable
              as int?,
      nearestOmp: nearestOmp == freezed
          ? _value.nearestOmp
          : nearestOmp // ignore: cast_nullable_to_non_nullable
              as int?,
      nearestOmpDate: nearestOmpDate == freezed
          ? _value.nearestOmpDate
          : nearestOmpDate // ignore: cast_nullable_to_non_nullable
              as String?,
      accounts: accounts == freezed
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<WalletGetAccountItemResponse>?,
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<WalletGetCardItemResponse>?,
    ));
  }

  @override
  $WalletGetStatusContentsItemResponseCopyWith<$Res>? get statusContents {
    if (_value.statusContents == null) {
      return null;
    }

    return $WalletGetStatusContentsItemResponseCopyWith<$Res>(
        _value.statusContents!, (value) {
      return _then(_value.copyWith(statusContents: value));
    });
  }
}

/// @nodoc
abstract class $WalletItemCopyWith<$Res>
    implements $WalletGetWalletItemResponseCopyWith<$Res> {
  factory $WalletItemCopyWith(
          WalletItem value, $Res Function(WalletItem) then) =
      _$WalletItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status")
          String? status,
      @JsonKey(name: "status_contents")
          WalletGetStatusContentsItemResponse? statusContents,
      @JsonKey(name: "limit")
          int? limit,
      @JsonKey(name: "available_balance")
          int? availableBalance,
      @JsonKey(name: "comfortable_payment")
          int? comfortablePayment,
      @JsonKey(name: "nearest_omp")
          int? nearestOmp,
      @JsonKey(name: "nearest_omp_date")
          String? nearestOmpDate,
      @JsonKey(name: "accounts")
          List<WalletGetAccountItemResponse>? accounts,
      @JsonKey(name: "cards")
          List<WalletGetCardItemResponse>? cards});

  @override
  $WalletGetStatusContentsItemResponseCopyWith<$Res>? get statusContents;
}

/// @nodoc
class _$WalletItemCopyWithImpl<$Res>
    extends _$WalletGetWalletItemResponseCopyWithImpl<$Res>
    implements $WalletItemCopyWith<$Res> {
  _$WalletItemCopyWithImpl(WalletItem _value, $Res Function(WalletItem) _then)
      : super(_value, (v) => _then(v as WalletItem));

  @override
  WalletItem get _value => super._value as WalletItem;

  @override
  $Res call({
    Object? status = freezed,
    Object? statusContents = freezed,
    Object? limit = freezed,
    Object? availableBalance = freezed,
    Object? comfortablePayment = freezed,
    Object? nearestOmp = freezed,
    Object? nearestOmpDate = freezed,
    Object? nearest_omp_status = freezed,
    Object? nearest_omp_description = freezed,
    Object? accounts = freezed,
    Object? cards = freezed,
  }) {
    return _then(WalletItem(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusContents == freezed
          ? _value.statusContents
          : statusContents // ignore: cast_nullable_to_non_nullable
              as WalletGetStatusContentsItemResponse?,
      limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      availableBalance == freezed
          ? _value.availableBalance
          : availableBalance // ignore: cast_nullable_to_non_nullable
              as int?,
      comfortablePayment == freezed
          ? _value.comfortablePayment
          : comfortablePayment // ignore: cast_nullable_to_non_nullable
              as int?,
      nearestOmp == freezed
          ? _value.nearestOmp
          : nearestOmp // ignore: cast_nullable_to_non_nullable
              as int?,
      nearestOmpDate == freezed
          ? _value.nearestOmpDate
          : nearestOmpDate // ignore: cast_nullable_to_non_nullable
              as String?,
      nearest_omp_status == freezed
          ? _value.nearest_omp_status
          : nearest_omp_status // ignore: cast_nullable_to_non_nullable
              as String?,
      nearest_omp_description == freezed
          ? _value.nearest_omp_description
          : nearest_omp_description // ignore: cast_nullable_to_non_nullable
              as String?,
      accounts == freezed
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<WalletGetAccountItemResponse>?,
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<WalletGetCardItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletItem implements WalletItem {
  const _$WalletItem(
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "status_contents") this.statusContents,
      @JsonKey(name: "limit") this.limit,
      @JsonKey(name: "available_balance") this.availableBalance,
      @JsonKey(name: "comfortable_payment") this.comfortablePayment,
      @JsonKey(name: "nearest_omp") this.nearestOmp,
      @JsonKey(name: "nearest_omp_date") this.nearestOmpDate,
      @JsonKey(name: "nearest_omp_status") this.nearest_omp_status,
      @JsonKey(name: "nearest_omp_description") this.nearest_omp_description,
      @JsonKey(name: "accounts") this.accounts,
      @JsonKey(name: "cards") this.cards);

  factory _$WalletItem.fromJson(Map<String, dynamic> json) =>
      _$$WalletItemFromJson(json);

  @override

  /// Статус аккаунта
  @JsonKey(name: "status")
  final String? status;
  @override

  /// Детали статуса
  @JsonKey(name: "status_contents")
  final WalletGetStatusContentsItemResponse? statusContents;
  @override

  /// Лимит
  @JsonKey(name: "limit")
  final int? limit;
  @override

  /// Доступный баланс
  @JsonKey(name: "available_balance")
  final int? availableBalance;
  @override

  /// Комфортный платеж
  @JsonKey(name: "comfortable_payment")
  final int? comfortablePayment;
  @override

  /// Ближайший платеж
  @JsonKey(name: "nearest_omp")
  final int? nearestOmp;
  @override

  /// Дата ближайшего платежа
  @JsonKey(name: "nearest_omp_date")
  final String? nearestOmpDate;
  @override

  /// Дата ближайшего платежа
  @JsonKey(name: "nearest_omp_status")
  final String? nearest_omp_status;
  @override

  /// Дата ближайшего платежа
  @JsonKey(name: "nearest_omp_description")
  final String? nearest_omp_description;
  @override

  /// Аккаунты
  @JsonKey(name: "accounts")
  final List<WalletGetAccountItemResponse>? accounts;
  @override

  /// Карты
  @JsonKey(name: "cards")
  final List<WalletGetCardItemResponse>? cards;

  @override
  String toString() {
    return 'WalletGetWalletItemResponse(status: $status, statusContents: $statusContents, limit: $limit, availableBalance: $availableBalance, comfortablePayment: $comfortablePayment, nearestOmp: $nearestOmp, nearestOmpDate: $nearestOmpDate, accounts: $accounts, cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WalletItem &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.statusContents, statusContents) ||
                const DeepCollectionEquality()
                    .equals(other.statusContents, statusContents)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.availableBalance, availableBalance) ||
                const DeepCollectionEquality()
                    .equals(other.availableBalance, availableBalance)) &&
            (identical(other.comfortablePayment, comfortablePayment) ||
                const DeepCollectionEquality()
                    .equals(other.comfortablePayment, comfortablePayment)) &&
            (identical(other.nearestOmp, nearestOmp) ||
                const DeepCollectionEquality()
                    .equals(other.nearestOmp, nearestOmp)) &&
            (identical(other.nearestOmpDate, nearestOmpDate) ||
                const DeepCollectionEquality()
                    .equals(other.nearestOmpDate, nearestOmpDate)) &&
            (identical(other.accounts, accounts) ||
                const DeepCollectionEquality()
                    .equals(other.accounts, accounts)) &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(statusContents) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(availableBalance) ^
      const DeepCollectionEquality().hash(comfortablePayment) ^
      const DeepCollectionEquality().hash(nearestOmp) ^
      const DeepCollectionEquality().hash(nearestOmpDate) ^
      const DeepCollectionEquality().hash(accounts) ^
      const DeepCollectionEquality().hash(cards);

  @JsonKey(ignore: true)
  @override
  $WalletItemCopyWith<WalletItem> get copyWith =>
      _$WalletItemCopyWithImpl<WalletItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletItemToJson(this);
  }
}

abstract class WalletItem implements WalletGetWalletItemResponse {
  const factory WalletItem(
      @JsonKey(name: "status")
          String? status,
      @JsonKey(name: "status_contents")
          WalletGetStatusContentsItemResponse? statusContents,
      @JsonKey(name: "limit")
          int? limit,
      @JsonKey(name: "available_balance")
          int? availableBalance,
      @JsonKey(name: "comfortable_payment")
          int? comfortablePayment,
      @JsonKey(name: "nearest_omp")
          int? nearestOmp,
      @JsonKey(name: "nearest_omp_date")
          String? nearestOmpDate,
      @JsonKey(name: "nearest_omp_status")
          String? nearest_omp_status,
      @JsonKey(name: "nearest_omp_description")
          String? nearest_omp_description,
      @JsonKey(name: "accounts")
          List<WalletGetAccountItemResponse>? accounts,
      @JsonKey(name: "cards")
          List<WalletGetCardItemResponse>? cards) = _$WalletItem;

  factory WalletItem.fromJson(Map<String, dynamic> json) =
      _$WalletItem.fromJson;

  @override

  /// Статус аккаунта
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @override

  /// Детали статуса
  @JsonKey(name: "status_contents")
  WalletGetStatusContentsItemResponse? get statusContents =>
      throw _privateConstructorUsedError;
  @override

  /// Лимит
  @JsonKey(name: "limit")
  int? get limit => throw _privateConstructorUsedError;
  @override

  /// Доступный баланс
  @JsonKey(name: "available_balance")
  int? get availableBalance => throw _privateConstructorUsedError;
  @override

  /// Комфортный платеж
  @JsonKey(name: "comfortable_payment")
  int? get comfortablePayment => throw _privateConstructorUsedError;
  @override

  /// Ближайший платеж
  @JsonKey(name: "nearest_omp")
  int? get nearestOmp => throw _privateConstructorUsedError;
  @override

  /// Дата ближайшего платежа
  @JsonKey(name: "nearest_omp_date")
  String? get nearestOmpDate => throw _privateConstructorUsedError;
  @override

  /// Дата ближайшего платежа
  @JsonKey(name: "nearest_omp_status")
  String? get nearest_omp_status => throw _privateConstructorUsedError;
  @override

  /// Дата ближайшего платежа
  @JsonKey(name: "nearest_omp_description")
  String? get nearest_omp_description => throw _privateConstructorUsedError;
  @override

  /// Аккаунты
  @JsonKey(name: "accounts")
  List<WalletGetAccountItemResponse>? get accounts =>
      throw _privateConstructorUsedError;
  @override

  /// Карты
  @JsonKey(name: "cards")
  List<WalletGetCardItemResponse>? get cards =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $WalletItemCopyWith<WalletItem> get copyWith =>
      throw _privateConstructorUsedError;
}
