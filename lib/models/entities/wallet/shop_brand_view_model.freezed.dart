// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_brand_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopBrandViewModelTearOff {
  const _$ShopBrandViewModelTearOff();

  ShopBrand call(int? id, String? name) {
    return ShopBrand(
      id,
      name,
    );
  }
}

/// @nodoc
const $ShopBrandViewModel = _$ShopBrandViewModelTearOff();

/// @nodoc
mixin _$ShopBrandViewModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopBrandViewModelCopyWith<ShopBrandViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopBrandViewModelCopyWith<$Res> {
  factory $ShopBrandViewModelCopyWith(
          ShopBrandViewModel value, $Res Function(ShopBrandViewModel) then) =
      _$ShopBrandViewModelCopyWithImpl<$Res>;
  $Res call({int? id, String? name});
}

/// @nodoc
class _$ShopBrandViewModelCopyWithImpl<$Res>
    implements $ShopBrandViewModelCopyWith<$Res> {
  _$ShopBrandViewModelCopyWithImpl(this._value, this._then);

  final ShopBrandViewModel _value;
  // ignore: unused_field
  final $Res Function(ShopBrandViewModel) _then;

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
abstract class $ShopBrandCopyWith<$Res>
    implements $ShopBrandViewModelCopyWith<$Res> {
  factory $ShopBrandCopyWith(ShopBrand value, $Res Function(ShopBrand) then) =
      _$ShopBrandCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name});
}

/// @nodoc
class _$ShopBrandCopyWithImpl<$Res>
    extends _$ShopBrandViewModelCopyWithImpl<$Res>
    implements $ShopBrandCopyWith<$Res> {
  _$ShopBrandCopyWithImpl(ShopBrand _value, $Res Function(ShopBrand) _then)
      : super(_value, (v) => _then(v as ShopBrand));

  @override
  ShopBrand get _value => super._value as ShopBrand;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(ShopBrand(
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

class _$ShopBrand implements ShopBrand {
  const _$ShopBrand(this.id, this.name);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'ShopBrandViewModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShopBrand &&
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
  $ShopBrandCopyWith<ShopBrand> get copyWith =>
      _$ShopBrandCopyWithImpl<ShopBrand>(this, _$identity);
}

abstract class ShopBrand implements ShopBrandViewModel {
  const factory ShopBrand(int? id, String? name) = _$ShopBrand;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShopBrandCopyWith<ShopBrand> get copyWith =>
      throw _privateConstructorUsedError;
}
