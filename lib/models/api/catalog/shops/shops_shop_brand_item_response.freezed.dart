// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shops_shop_brand_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopsShopBrandItemResponse _$ShopsShopBrandItemResponseFromJson(
    Map<String, dynamic> json) {
  return BrandItem.fromJson(json);
}

/// @nodoc
class _$ShopsShopBrandItemResponseTearOff {
  const _$ShopsShopBrandItemResponseTearOff();

  BrandItem call(
      @JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name) {
    return BrandItem(
      id,
      name,
    );
  }

  ShopsShopBrandItemResponse fromJson(Map<String, Object> json) {
    return ShopsShopBrandItemResponse.fromJson(json);
  }
}

/// @nodoc
const $ShopsShopBrandItemResponse = _$ShopsShopBrandItemResponseTearOff();

/// @nodoc
mixin _$ShopsShopBrandItemResponse {
  /// Идентификатор бренда
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Название бренда
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopsShopBrandItemResponseCopyWith<ShopsShopBrandItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopsShopBrandItemResponseCopyWith<$Res> {
  factory $ShopsShopBrandItemResponseCopyWith(ShopsShopBrandItemResponse value,
          $Res Function(ShopsShopBrandItemResponse) then) =
      _$ShopsShopBrandItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name});
}

/// @nodoc
class _$ShopsShopBrandItemResponseCopyWithImpl<$Res>
    implements $ShopsShopBrandItemResponseCopyWith<$Res> {
  _$ShopsShopBrandItemResponseCopyWithImpl(this._value, this._then);

  final ShopsShopBrandItemResponse _value;
  // ignore: unused_field
  final $Res Function(ShopsShopBrandItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $BrandItemCopyWith<$Res>
    implements $ShopsShopBrandItemResponseCopyWith<$Res> {
  factory $BrandItemCopyWith(BrandItem value, $Res Function(BrandItem) then) =
      _$BrandItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name});
}

/// @nodoc
class _$BrandItemCopyWithImpl<$Res>
    extends _$ShopsShopBrandItemResponseCopyWithImpl<$Res>
    implements $BrandItemCopyWith<$Res> {
  _$BrandItemCopyWithImpl(BrandItem _value, $Res Function(BrandItem) _then)
      : super(_value, (v) => _then(v as BrandItem));

  @override
  BrandItem get _value => super._value as BrandItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(BrandItem(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandItem implements BrandItem {
  const _$BrandItem(
      @JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name);

  factory _$BrandItem.fromJson(Map<String, dynamic> json) =>
      _$$BrandItemFromJson(json);

  @override

  /// Идентификатор бренда
  @JsonKey(name: "id")
  final int? id;
  @override

  /// Название бренда
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'ShopsShopBrandItemResponse(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BrandItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $BrandItemCopyWith<BrandItem> get copyWith =>
      _$BrandItemCopyWithImpl<BrandItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandItemToJson(this);
  }
}

abstract class BrandItem implements ShopsShopBrandItemResponse {
  const factory BrandItem(
          @JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name) =
      _$BrandItem;

  factory BrandItem.fromJson(Map<String, dynamic> json) = _$BrandItem.fromJson;

  @override

  /// Идентификатор бренда
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override

  /// Название бренда
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BrandItemCopyWith<BrandItem> get copyWith =>
      throw _privateConstructorUsedError;
}
