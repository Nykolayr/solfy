// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_get_account_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletGetAccountItemResponse _$WalletGetAccountItemResponseFromJson(
    Map<String, dynamic> json) {
  return AccountItem.fromJson(json);
}

/// @nodoc
class _$WalletGetAccountItemResponseTearOff {
  const _$WalletGetAccountItemResponseTearOff();

  AccountItem call(
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "balance") int? balance) {
    return AccountItem(
      id,
      type,
      balance,
    );
  }

  WalletGetAccountItemResponse fromJson(Map<String, Object> json) {
    return WalletGetAccountItemResponse.fromJson(json);
  }
}

/// @nodoc
const $WalletGetAccountItemResponse = _$WalletGetAccountItemResponseTearOff();

/// @nodoc
mixin _$WalletGetAccountItemResponse {
  /// Идентификатор
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;

  /// Тип
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  /// Баланс
  @JsonKey(name: "balance")
  int? get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletGetAccountItemResponseCopyWith<WalletGetAccountItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletGetAccountItemResponseCopyWith<$Res> {
  factory $WalletGetAccountItemResponseCopyWith(
          WalletGetAccountItemResponse value,
          $Res Function(WalletGetAccountItemResponse) then) =
      _$WalletGetAccountItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "balance") int? balance});
}

/// @nodoc
class _$WalletGetAccountItemResponseCopyWithImpl<$Res>
    implements $WalletGetAccountItemResponseCopyWith<$Res> {
  _$WalletGetAccountItemResponseCopyWithImpl(this._value, this._then);

  final WalletGetAccountItemResponse _value;
  // ignore: unused_field
  final $Res Function(WalletGetAccountItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? balance = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class $AccountItemCopyWith<$Res>
    implements $WalletGetAccountItemResponseCopyWith<$Res> {
  factory $AccountItemCopyWith(
          AccountItem value, $Res Function(AccountItem) then) =
      _$AccountItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "balance") int? balance});
}

/// @nodoc
class _$AccountItemCopyWithImpl<$Res>
    extends _$WalletGetAccountItemResponseCopyWithImpl<$Res>
    implements $AccountItemCopyWith<$Res> {
  _$AccountItemCopyWithImpl(
      AccountItem _value, $Res Function(AccountItem) _then)
      : super(_value, (v) => _then(v as AccountItem));

  @override
  AccountItem get _value => super._value as AccountItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? balance = freezed,
  }) {
    return _then(AccountItem(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountItem implements AccountItem {
  const _$AccountItem(@JsonKey(name: "id") this.id,
      @JsonKey(name: "type") this.type, @JsonKey(name: "balance") this.balance);

  factory _$AccountItem.fromJson(Map<String, dynamic> json) =>
      _$$AccountItemFromJson(json);

  @override

  /// Идентификатор
  @JsonKey(name: "id")
  final String? id;
  @override

  /// Тип
  @JsonKey(name: "type")
  final String? type;
  @override

  /// Баланс
  @JsonKey(name: "balance")
  final int? balance;

  @override
  String toString() {
    return 'WalletGetAccountItemResponse(id: $id, type: $type, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality().equals(other.balance, balance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(balance);

  @JsonKey(ignore: true)
  @override
  $AccountItemCopyWith<AccountItem> get copyWith =>
      _$AccountItemCopyWithImpl<AccountItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountItemToJson(this);
  }
}

abstract class AccountItem implements WalletGetAccountItemResponse {
  const factory AccountItem(
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "balance") int? balance) = _$AccountItem;

  factory AccountItem.fromJson(Map<String, dynamic> json) =
      _$AccountItem.fromJson;

  @override

  /// Идентификатор
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @override

  /// Тип
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @override

  /// Баланс
  @JsonKey(name: "balance")
  int? get balance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AccountItemCopyWith<AccountItem> get copyWith =>
      throw _privateConstructorUsedError;
}
