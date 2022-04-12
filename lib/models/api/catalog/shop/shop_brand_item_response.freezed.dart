// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_brand_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopBrandItemResponse _$ShopBrandItemResponseFromJson(
    Map<String, dynamic> json) {
  return BrandItem.fromJson(json);
}

/// @nodoc
class _$ShopBrandItemResponseTearOff {
  const _$ShopBrandItemResponseTearOff();

  BrandItem call(
      @JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name) {
    return BrandItem(
      id,
      name,
    );
  }

  ShopBrandItemResponse fromJson(Map<String, Object> json) {
    return ShopBrandItemResponse.fromJson(json);
  }
}

/// @nodoc
const $ShopBrandItemResponse = _$ShopBrandItemResponseTearOff();

/// @nodoc
mixin _$ShopBrandItemResponse {
  /// Идентификатор бренда
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Название бренда
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopBrandItemResponseCopyWith<ShopBrandItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopBrandItemResponseCopyWith<$Res> {
  factory $ShopBrandItemResponseCopyWith(ShopBrandItemResponse value,
          $Res Function(ShopBrandItemResponse) then) =
      _$ShopBrandItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name});
}

/// @nodoc
class _$ShopBrandItemResponseCopyWithImpl<$Res>
    implements $ShopBrandItemResponseCopyWith<$Res> {
  _$ShopBrandItemResponseCopyWithImpl(this._value, this._then);

  final ShopBrandItemResponse _value;
  // ignore: unused_field
  final $Res Function(ShopBrandItemResponse) _then;

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
    implements $ShopBrandItemResponseCopyWith<$Res> {
  factory $BrandItemCopyWith(BrandItem value, $Res Function(BrandItem) then) =
      _$BrandItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name});
}

/// @nodoc
class _$BrandItemCopyWithImpl<$Res>
    extends _$ShopBrandItemResponseCopyWithImpl<$Res>
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
    return 'ShopBrandItemResponse(id: $id, name: $name)';
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

abstract class BrandItem implements ShopBrandItemResponse {
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
