// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shops_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopsViewModelTearOff {
  const _$ShopsViewModelTearOff();

  Shops call(@JsonKey(name: "shops") List<ShopViewModel> shops,
      @JsonKey(name: "info") CatalogInfoViewModel info) {
    return Shops(
      shops,
      info,
    );
  }
}

/// @nodoc
const $ShopsViewModel = _$ShopsViewModelTearOff();

/// @nodoc
mixin _$ShopsViewModel {
  /// Магазины
  @JsonKey(name: "shops")
  List<ShopViewModel> get shops => throw _privateConstructorUsedError;

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  CatalogInfoViewModel get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopsViewModelCopyWith<ShopsViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopsViewModelCopyWith<$Res> {
  factory $ShopsViewModelCopyWith(
          ShopsViewModel value, $Res Function(ShopsViewModel) then) =
      _$ShopsViewModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "shops") List<ShopViewModel> shops,
      @JsonKey(name: "info") CatalogInfoViewModel info});

  $CatalogInfoViewModelCopyWith<$Res> get info;
}

/// @nodoc
class _$ShopsViewModelCopyWithImpl<$Res>
    implements $ShopsViewModelCopyWith<$Res> {
  _$ShopsViewModelCopyWithImpl(this._value, this._then);

  final ShopsViewModel _value;
  // ignore: unused_field
  final $Res Function(ShopsViewModel) _then;

  @override
  $Res call({
    Object? shops = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      shops: shops == freezed
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopViewModel>,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CatalogInfoViewModel,
    ));
  }

  @override
  $CatalogInfoViewModelCopyWith<$Res> get info {
    return $CatalogInfoViewModelCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class $ShopsCopyWith<$Res> implements $ShopsViewModelCopyWith<$Res> {
  factory $ShopsCopyWith(Shops value, $Res Function(Shops) then) =
      _$ShopsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "shops") List<ShopViewModel> shops,
      @JsonKey(name: "info") CatalogInfoViewModel info});

  @override
  $CatalogInfoViewModelCopyWith<$Res> get info;
}

/// @nodoc
class _$ShopsCopyWithImpl<$Res> extends _$ShopsViewModelCopyWithImpl<$Res>
    implements $ShopsCopyWith<$Res> {
  _$ShopsCopyWithImpl(Shops _value, $Res Function(Shops) _then)
      : super(_value, (v) => _then(v as Shops));

  @override
  Shops get _value => super._value as Shops;

  @override
  $Res call({
    Object? shops = freezed,
    Object? info = freezed,
  }) {
    return _then(Shops(
      shops == freezed
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopViewModel>,
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CatalogInfoViewModel,
    ));
  }
}

/// @nodoc

class _$Shops implements Shops {
  const _$Shops(
      @JsonKey(name: "shops") this.shops, @JsonKey(name: "info") this.info);

  @override

  /// Магазины
  @JsonKey(name: "shops")
  final List<ShopViewModel> shops;
  @override

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  final CatalogInfoViewModel info;

  @override
  String toString() {
    return 'ShopsViewModel(shops: $shops, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Shops &&
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
  $ShopsCopyWith<Shops> get copyWith =>
      _$ShopsCopyWithImpl<Shops>(this, _$identity);
}

abstract class Shops implements ShopsViewModel {
  const factory Shops(@JsonKey(name: "shops") List<ShopViewModel> shops,
      @JsonKey(name: "info") CatalogInfoViewModel info) = _$Shops;

  @override

  /// Магазины
  @JsonKey(name: "shops")
  List<ShopViewModel> get shops => throw _privateConstructorUsedError;
  @override

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  CatalogInfoViewModel get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShopsCopyWith<Shops> get copyWith => throw _privateConstructorUsedError;
}
