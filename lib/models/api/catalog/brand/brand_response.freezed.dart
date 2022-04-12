// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brand_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandResponse _$BrandResponseFromJson(Map<String, dynamic> json) {
  return BrandResp.fromJson(json);
}

/// @nodoc
class _$BrandResponseTearOff {
  const _$BrandResponseTearOff();

  BrandResp call(@JsonKey(name: "brand") BrandBrandItemResponse? brand) {
    return BrandResp(
      brand,
    );
  }

  BrandResponse fromJson(Map<String, Object> json) {
    return BrandResponse.fromJson(json);
  }
}

/// @nodoc
const $BrandResponse = _$BrandResponseTearOff();

/// @nodoc
mixin _$BrandResponse {
  /// Бренд
  @JsonKey(name: "brand")
  BrandBrandItemResponse? get brand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandResponseCopyWith<BrandResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandResponseCopyWith<$Res> {
  factory $BrandResponseCopyWith(
          BrandResponse value, $Res Function(BrandResponse) then) =
      _$BrandResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "brand") BrandBrandItemResponse? brand});

  $BrandBrandItemResponseCopyWith<$Res>? get brand;
}

/// @nodoc
class _$BrandResponseCopyWithImpl<$Res>
    implements $BrandResponseCopyWith<$Res> {
  _$BrandResponseCopyWithImpl(this._value, this._then);

  final BrandResponse _value;
  // ignore: unused_field
  final $Res Function(BrandResponse) _then;

  @override
  $Res call({
    Object? brand = freezed,
  }) {
    return _then(_value.copyWith(
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandBrandItemResponse?,
    ));
  }

  @override
  $BrandBrandItemResponseCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandBrandItemResponseCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value));
    });
  }
}

/// @nodoc
abstract class $BrandRespCopyWith<$Res>
    implements $BrandResponseCopyWith<$Res> {
  factory $BrandRespCopyWith(BrandResp value, $Res Function(BrandResp) then) =
      _$BrandRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "brand") BrandBrandItemResponse? brand});

  @override
  $BrandBrandItemResponseCopyWith<$Res>? get brand;
}

/// @nodoc
class _$BrandRespCopyWithImpl<$Res> extends _$BrandResponseCopyWithImpl<$Res>
    implements $BrandRespCopyWith<$Res> {
  _$BrandRespCopyWithImpl(BrandResp _value, $Res Function(BrandResp) _then)
      : super(_value, (v) => _then(v as BrandResp));

  @override
  BrandResp get _value => super._value as BrandResp;

  @override
  $Res call({
    Object? brand = freezed,
  }) {
    return _then(BrandResp(
      brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandBrandItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandResp implements BrandResp {
  const _$BrandResp(@JsonKey(name: "brand") this.brand);

  factory _$BrandResp.fromJson(Map<String, dynamic> json) =>
      _$$BrandRespFromJson(json);

  @override

  /// Бренд
  @JsonKey(name: "brand")
  final BrandBrandItemResponse? brand;

  @override
  String toString() {
    return 'BrandResponse(brand: $brand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BrandResp &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(brand);

  @JsonKey(ignore: true)
  @override
  $BrandRespCopyWith<BrandResp> get copyWith =>
      _$BrandRespCopyWithImpl<BrandResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandRespToJson(this);
  }
}

abstract class BrandResp implements BrandResponse {
  const factory BrandResp(
      @JsonKey(name: "brand") BrandBrandItemResponse? brand) = _$BrandResp;

  factory BrandResp.fromJson(Map<String, dynamic> json) = _$BrandResp.fromJson;

  @override

  /// Бренд
  @JsonKey(name: "brand")
  BrandBrandItemResponse? get brand => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BrandRespCopyWith<BrandResp> get copyWith =>
      throw _privateConstructorUsedError;
}
