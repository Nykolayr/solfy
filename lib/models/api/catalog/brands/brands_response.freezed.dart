// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brands_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandsResponse _$BrandsResponseFromJson(Map<String, dynamic> json) {
  return BrandsResp.fromJson(json);
}

/// @nodoc
class _$BrandsResponseTearOff {
  const _$BrandsResponseTearOff();

  BrandsResp call(
      @JsonKey(name: "brands") List<BrandsBrandItemResponse>? brands,
      @JsonKey(name: "feeds") List<BrandsFeedItemResponse>? feeds,
      @JsonKey(name: "info") BrandsInfoItemResponse? info) {
    return BrandsResp(
      brands,
      feeds,
      info,
    );
  }

  BrandsResponse fromJson(Map<String, Object> json) {
    return BrandsResponse.fromJson(json);
  }
}

/// @nodoc
const $BrandsResponse = _$BrandsResponseTearOff();

/// @nodoc
mixin _$BrandsResponse {
  /// Бренды
  @JsonKey(name: "brands")
  List<BrandsBrandItemResponse>? get brands =>
      throw _privateConstructorUsedError;

  /// Новости
  @JsonKey(name: "feeds")
  List<BrandsFeedItemResponse>? get feeds => throw _privateConstructorUsedError;

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  BrandsInfoItemResponse? get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandsResponseCopyWith<BrandsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsResponseCopyWith<$Res> {
  factory $BrandsResponseCopyWith(
          BrandsResponse value, $Res Function(BrandsResponse) then) =
      _$BrandsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "brands") List<BrandsBrandItemResponse>? brands,
      @JsonKey(name: "feeds") List<BrandsFeedItemResponse>? feeds,
      @JsonKey(name: "info") BrandsInfoItemResponse? info});

  $BrandsInfoItemResponseCopyWith<$Res>? get info;
}

/// @nodoc
class _$BrandsResponseCopyWithImpl<$Res>
    implements $BrandsResponseCopyWith<$Res> {
  _$BrandsResponseCopyWithImpl(this._value, this._then);

  final BrandsResponse _value;
  // ignore: unused_field
  final $Res Function(BrandsResponse) _then;

  @override
  $Res call({
    Object? brands = freezed,
    Object? feeds = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      brands: brands == freezed
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandsBrandItemResponse>?,
      feeds: feeds == freezed
          ? _value.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<BrandsFeedItemResponse>?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BrandsInfoItemResponse?,
    ));
  }

  @override
  $BrandsInfoItemResponseCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $BrandsInfoItemResponseCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class $BrandsRespCopyWith<$Res>
    implements $BrandsResponseCopyWith<$Res> {
  factory $BrandsRespCopyWith(
          BrandsResp value, $Res Function(BrandsResp) then) =
      _$BrandsRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "brands") List<BrandsBrandItemResponse>? brands,
      @JsonKey(name: "feeds") List<BrandsFeedItemResponse>? feeds,
      @JsonKey(name: "info") BrandsInfoItemResponse? info});

  @override
  $BrandsInfoItemResponseCopyWith<$Res>? get info;
}

/// @nodoc
class _$BrandsRespCopyWithImpl<$Res> extends _$BrandsResponseCopyWithImpl<$Res>
    implements $BrandsRespCopyWith<$Res> {
  _$BrandsRespCopyWithImpl(BrandsResp _value, $Res Function(BrandsResp) _then)
      : super(_value, (v) => _then(v as BrandsResp));

  @override
  BrandsResp get _value => super._value as BrandsResp;

  @override
  $Res call({
    Object? brands = freezed,
    Object? feeds = freezed,
    Object? info = freezed,
  }) {
    return _then(BrandsResp(
      brands == freezed
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandsBrandItemResponse>?,
      feeds == freezed
          ? _value.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<BrandsFeedItemResponse>?,
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BrandsInfoItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandsResp implements BrandsResp {
  const _$BrandsResp(@JsonKey(name: "brands") this.brands,
      @JsonKey(name: "feeds") this.feeds, @JsonKey(name: "info") this.info);

  factory _$BrandsResp.fromJson(Map<String, dynamic> json) =>
      _$$BrandsRespFromJson(json);

  @override

  /// Бренды
  @JsonKey(name: "brands")
  final List<BrandsBrandItemResponse>? brands;
  @override

  /// Новости
  @JsonKey(name: "feeds")
  final List<BrandsFeedItemResponse>? feeds;
  @override

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  final BrandsInfoItemResponse? info;

  @override
  String toString() {
    return 'BrandsResponse(brands: $brands, feeds: $feeds, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BrandsResp &&
            (identical(other.brands, brands) ||
                const DeepCollectionEquality().equals(other.brands, brands)) &&
            (identical(other.feeds, feeds) ||
                const DeepCollectionEquality().equals(other.feeds, feeds)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(brands) ^
      const DeepCollectionEquality().hash(feeds) ^
      const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $BrandsRespCopyWith<BrandsResp> get copyWith =>
      _$BrandsRespCopyWithImpl<BrandsResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandsRespToJson(this);
  }
}

abstract class BrandsResp implements BrandsResponse {
  const factory BrandsResp(
      @JsonKey(name: "brands") List<BrandsBrandItemResponse>? brands,
      @JsonKey(name: "feeds") List<BrandsFeedItemResponse>? feeds,
      @JsonKey(name: "info") BrandsInfoItemResponse? info) = _$BrandsResp;

  factory BrandsResp.fromJson(Map<String, dynamic> json) =
      _$BrandsResp.fromJson;

  @override

  /// Бренды
  @JsonKey(name: "brands")
  List<BrandsBrandItemResponse>? get brands =>
      throw _privateConstructorUsedError;
  @override

  /// Новости
  @JsonKey(name: "feeds")
  List<BrandsFeedItemResponse>? get feeds => throw _privateConstructorUsedError;
  @override

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  BrandsInfoItemResponse? get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BrandsRespCopyWith<BrandsResp> get copyWith =>
      throw _privateConstructorUsedError;
}
