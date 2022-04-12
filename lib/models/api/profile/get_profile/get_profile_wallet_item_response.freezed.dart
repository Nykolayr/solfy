// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_profile_wallet_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetProfileWalletItemResponse _$GetProfileWalletItemResponseFromJson(
    Map<String, dynamic> json) {
  return WalletItem.fromJson(json);
}

/// @nodoc
class _$GetProfileWalletItemResponseTearOff {
  const _$GetProfileWalletItemResponseTearOff();

  WalletItem call(
      @JsonKey(name: "status")
          String? status,
      @JsonKey(name: "status_contents")
          GetProfileStatusContentsItemResponse? statusContents,
      @JsonKey(name: "cards")
          List<GetProfileCardItemResponse>? cards) {
    return WalletItem(
      status,
      statusContents,
      cards,
    );
  }

  GetProfileWalletItemResponse fromJson(Map<String, Object> json) {
    return GetProfileWalletItemResponse.fromJson(json);
  }
}

/// @nodoc
const $GetProfileWalletItemResponse = _$GetProfileWalletItemResponseTearOff();

/// @nodoc
mixin _$GetProfileWalletItemResponse {
  /// Статус аккаунта
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;

  /// Детали статуса
  @JsonKey(name: "status_contents")
  GetProfileStatusContentsItemResponse? get statusContents =>
      throw _privateConstructorUsedError;

  /// Привязанные карты
  @JsonKey(name: "cards")
  List<GetProfileCardItemResponse>? get cards =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProfileWalletItemResponseCopyWith<GetProfileWalletItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileWalletItemResponseCopyWith<$Res> {
  factory $GetProfileWalletItemResponseCopyWith(
          GetProfileWalletItemResponse value,
          $Res Function(GetProfileWalletItemResponse) then) =
      _$GetProfileWalletItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status")
          String? status,
      @JsonKey(name: "status_contents")
          GetProfileStatusContentsItemResponse? statusContents,
      @JsonKey(name: "cards")
          List<GetProfileCardItemResponse>? cards});

  $GetProfileStatusContentsItemResponseCopyWith<$Res>? get statusContents;
}

/// @nodoc
class _$GetProfileWalletItemResponseCopyWithImpl<$Res>
    implements $GetProfileWalletItemResponseCopyWith<$Res> {
  _$GetProfileWalletItemResponseCopyWithImpl(this._value, this._then);

  final GetProfileWalletItemResponse _value;
  // ignore: unused_field
  final $Res Function(GetProfileWalletItemResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? statusContents = freezed,
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
              as GetProfileStatusContentsItemResponse?,
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<GetProfileCardItemResponse>?,
    ));
  }

  @override
  $GetProfileStatusContentsItemResponseCopyWith<$Res>? get statusContents {
    if (_value.statusContents == null) {
      return null;
    }

    return $GetProfileStatusContentsItemResponseCopyWith<$Res>(
        _value.statusContents!, (value) {
      return _then(_value.copyWith(statusContents: value));
    });
  }
}

/// @nodoc
abstract class $WalletItemCopyWith<$Res>
    implements $GetProfileWalletItemResponseCopyWith<$Res> {
  factory $WalletItemCopyWith(
          WalletItem value, $Res Function(WalletItem) then) =
      _$WalletItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status")
          String? status,
      @JsonKey(name: "status_contents")
          GetProfileStatusContentsItemResponse? statusContents,
      @JsonKey(name: "cards")
          List<GetProfileCardItemResponse>? cards});

  @override
  $GetProfileStatusContentsItemResponseCopyWith<$Res>? get statusContents;
}

/// @nodoc
class _$WalletItemCopyWithImpl<$Res>
    extends _$GetProfileWalletItemResponseCopyWithImpl<$Res>
    implements $WalletItemCopyWith<$Res> {
  _$WalletItemCopyWithImpl(WalletItem _value, $Res Function(WalletItem) _then)
      : super(_value, (v) => _then(v as WalletItem));

  @override
  WalletItem get _value => super._value as WalletItem;

  @override
  $Res call({
    Object? status = freezed,
    Object? statusContents = freezed,
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
              as GetProfileStatusContentsItemResponse?,
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<GetProfileCardItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletItem implements WalletItem {
  const _$WalletItem(
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "status_contents") this.statusContents,
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
  final GetProfileStatusContentsItemResponse? statusContents;
  @override

  /// Привязанные карты
  @JsonKey(name: "cards")
  final List<GetProfileCardItemResponse>? cards;

  @override
  String toString() {
    return 'GetProfileWalletItemResponse(status: $status, statusContents: $statusContents, cards: $cards)';
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
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(statusContents) ^
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

abstract class WalletItem implements GetProfileWalletItemResponse {
  const factory WalletItem(
      @JsonKey(name: "status")
          String? status,
      @JsonKey(name: "status_contents")
          GetProfileStatusContentsItemResponse? statusContents,
      @JsonKey(name: "cards")
          List<GetProfileCardItemResponse>? cards) = _$WalletItem;

  factory WalletItem.fromJson(Map<String, dynamic> json) =
      _$WalletItem.fromJson;

  @override

  /// Статус аккаунта
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @override

  /// Детали статуса
  @JsonKey(name: "status_contents")
  GetProfileStatusContentsItemResponse? get statusContents =>
      throw _privateConstructorUsedError;
  @override

  /// Привязанные карты
  @JsonKey(name: "cards")
  List<GetProfileCardItemResponse>? get cards =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $WalletItemCopyWith<WalletItem> get copyWith =>
      throw _privateConstructorUsedError;
}
