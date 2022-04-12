// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shops_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopsResponse _$ShopsResponseFromJson(Map<String, dynamic> json) {
  return ShopsResp.fromJson(json);
}

/// @nodoc
class _$ShopsResponseTearOff {
  const _$ShopsResponseTearOff();

  ShopsResp call(@JsonKey(name: "shops") List<ShopsShopItemResponse>? shops,
      @JsonKey(name: "info") ShopsInfoItemResponse? info) {
    return ShopsResp(
      shops,
      info,
    );
  }

  ShopsResponse fromJson(Map<String, Object> json) {
    return ShopsResponse.fromJson(json);
  }
}

/// @nodoc
const $ShopsResponse = _$ShopsResponseTearOff();

/// @nodoc
mixin _$ShopsResponse {
  /// Магазины
  @JsonKey(name: "shops")
  List<ShopsShopItemResponse>? get shops => throw _privateConstructorUsedError;

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  ShopsInfoItemResponse? get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopsResponseCopyWith<ShopsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopsResponseCopyWith<$Res> {
  factory $ShopsResponseCopyWith(
          ShopsResponse value, $Res Function(ShopsResponse) then) =
      _$ShopsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "shops") List<ShopsShopItemResponse>? shops,
      @JsonKey(name: "info") ShopsInfoItemResponse? info});

  $ShopsInfoItemResponseCopyWith<$Res>? get info;
}

/// @nodoc
class _$ShopsResponseCopyWithImpl<$Res>
    implements $ShopsResponseCopyWith<$Res> {
  _$ShopsResponseCopyWithImpl(this._value, this._then);

  final ShopsResponse _value;
  // ignore: unused_field
  final $Res Function(ShopsResponse) _then;

  @override
  $Res call({
    Object? shops = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      shops: shops == freezed
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopsShopItemResponse>?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ShopsInfoItemResponse?,
    ));
  }

  @override
  $ShopsInfoItemResponseCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $ShopsInfoItemResponseCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class $ShopsRespCopyWith<$Res>
    implements $ShopsResponseCopyWith<$Res> {
  factory $ShopsRespCopyWith(ShopsResp value, $Res Function(ShopsResp) then) =
      _$ShopsRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "shops") List<ShopsShopItemResponse>? shops,
      @JsonKey(name: "info") ShopsInfoItemResponse? info});

  @override
  $ShopsInfoItemResponseCopyWith<$Res>? get info;
}

/// @nodoc
class _$ShopsRespCopyWithImpl<$Res> extends _$ShopsResponseCopyWithImpl<$Res>
    implements $ShopsRespCopyWith<$Res> {
  _$ShopsRespCopyWithImpl(ShopsResp _value, $Res Function(ShopsResp) _then)
      : super(_value, (v) => _then(v as ShopsResp));

  @override
  ShopsResp get _value => super._value as ShopsResp;

  @override
  $Res call({
    Object? shops = freezed,
    Object? info = freezed,
  }) {
    return _then(ShopsResp(
      shops == freezed
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopsShopItemResponse>?,
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ShopsInfoItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopsResp implements ShopsResp {
  const _$ShopsResp(
      @JsonKey(name: "shops") this.shops, @JsonKey(name: "info") this.info);

  factory _$ShopsResp.fromJson(Map<String, dynamic> json) =>
      _$$ShopsRespFromJson(json);

  @override

  /// Магазины
  @JsonKey(name: "shops")
  final List<ShopsShopItemResponse>? shops;
  @override

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  final ShopsInfoItemResponse? info;

  @override
  String toString() {
    return 'ShopsResponse(shops: $shops, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShopsResp &&
            (identical(other.shops, shops) ||
                const DeepCollectionEquality().equals(other.shops, shops)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(shops) ^
      const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $ShopsRespCopyWith<ShopsResp> get copyWith =>
      _$ShopsRespCopyWithImpl<ShopsResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopsRespToJson(this);
  }
}

abstract class ShopsResp implements ShopsResponse {
  const factory ShopsResp(
      @JsonKey(name: "shops") List<ShopsShopItemResponse>? shops,
      @JsonKey(name: "info") ShopsInfoItemResponse? info) = _$ShopsResp;

  factory ShopsResp.fromJson(Map<String, dynamic> json) = _$ShopsResp.fromJson;

  @override

  /// Магазины
  @JsonKey(name: "shops")
  List<ShopsShopItemResponse>? get shops => throw _privateConstructorUsedError;
  @override

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  ShopsInfoItemResponse? get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShopsRespCopyWith<ShopsResp> get copyWith =>
      throw _privateConstructorUsedError;
}
