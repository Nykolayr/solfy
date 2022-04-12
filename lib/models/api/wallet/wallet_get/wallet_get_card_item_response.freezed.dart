// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_get_card_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletGetCardItemResponse _$WalletGetCardItemResponseFromJson(
    Map<String, dynamic> json) {
  return CardItem.fromJson(json);
}

/// @nodoc
class _$WalletGetCardItemResponseTearOff {
  const _$WalletGetCardItemResponseTearOff();

  CardItem call(
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "mask") String? mask,
      @JsonKey(name: "validity") String? validity) {
    return CardItem(
      id,
      mask,
      validity,
    );
  }

  WalletGetCardItemResponse fromJson(Map<String, Object> json) {
    return WalletGetCardItemResponse.fromJson(json);
  }
}

/// @nodoc
const $WalletGetCardItemResponse = _$WalletGetCardItemResponseTearOff();

/// @nodoc
mixin _$WalletGetCardItemResponse {
  /// Идентификатор
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;

  /// Номер карты
  @JsonKey(name: "mask")
  String? get mask => throw _privateConstructorUsedError;

  /// Срок действия карты
  @JsonKey(name: "validity")
  String? get validity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletGetCardItemResponseCopyWith<WalletGetCardItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletGetCardItemResponseCopyWith<$Res> {
  factory $WalletGetCardItemResponseCopyWith(WalletGetCardItemResponse value,
          $Res Function(WalletGetCardItemResponse) then) =
      _$WalletGetCardItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "mask") String? mask,
      @JsonKey(name: "validity") String? validity});
}

/// @nodoc
class _$WalletGetCardItemResponseCopyWithImpl<$Res>
    implements $WalletGetCardItemResponseCopyWith<$Res> {
  _$WalletGetCardItemResponseCopyWithImpl(this._value, this._then);

  final WalletGetCardItemResponse _value;
  // ignore: unused_field
  final $Res Function(WalletGetCardItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? mask = freezed,
    Object? validity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      mask: mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String?,
      validity: validity == freezed
          ? _value.validity
          : validity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $CardItemCopyWith<$Res>
    implements $WalletGetCardItemResponseCopyWith<$Res> {
  factory $CardItemCopyWith(CardItem value, $Res Function(CardItem) then) =
      _$CardItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "mask") String? mask,
      @JsonKey(name: "validity") String? validity});
}

/// @nodoc
class _$CardItemCopyWithImpl<$Res>
    extends _$WalletGetCardItemResponseCopyWithImpl<$Res>
    implements $CardItemCopyWith<$Res> {
  _$CardItemCopyWithImpl(CardItem _value, $Res Function(CardItem) _then)
      : super(_value, (v) => _then(v as CardItem));

  @override
  CardItem get _value => super._value as CardItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? mask = freezed,
    Object? validity = freezed,
  }) {
    return _then(CardItem(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String?,
      validity == freezed
          ? _value.validity
          : validity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardItem implements CardItem {
  const _$CardItem(
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "mask") this.mask,
      @JsonKey(name: "validity") this.validity);

  factory _$CardItem.fromJson(Map<String, dynamic> json) =>
      _$$CardItemFromJson(json);

  @override

  /// Идентификатор
  @JsonKey(name: "id")
  final String? id;
  @override

  /// Номер карты
  @JsonKey(name: "mask")
  final String? mask;
  @override

  /// Срок действия карты
  @JsonKey(name: "validity")
  final String? validity;

  @override
  String toString() {
    return 'WalletGetCardItemResponse(id: $id, mask: $mask, validity: $validity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CardItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.mask, mask) ||
                const DeepCollectionEquality().equals(other.mask, mask)) &&
            (identical(other.validity, validity) ||
                const DeepCollectionEquality()
                    .equals(other.validity, validity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(mask) ^
      const DeepCollectionEquality().hash(validity);

  @JsonKey(ignore: true)
  @override
  $CardItemCopyWith<CardItem> get copyWith =>
      _$CardItemCopyWithImpl<CardItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardItemToJson(this);
  }
}

abstract class CardItem implements WalletGetCardItemResponse {
  const factory CardItem(
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "mask") String? mask,
      @JsonKey(name: "validity") String? validity) = _$CardItem;

  factory CardItem.fromJson(Map<String, dynamic> json) = _$CardItem.fromJson;

  @override

  /// Идентификатор
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @override

  /// Номер карты
  @JsonKey(name: "mask")
  String? get mask => throw _privateConstructorUsedError;
  @override

  /// Срок действия карты
  @JsonKey(name: "validity")
  String? get validity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CardItemCopyWith<CardItem> get copyWith =>
      throw _privateConstructorUsedError;
}
