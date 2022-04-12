// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopStateTearOff {
  const _$ShopStateTearOff();

  Initial initial() {
    return const Initial();
  }

  ShopLoading shopLoading() {
    return const ShopLoading();
  }

  ShopEndLoading shopEndLoading() {
    return const ShopEndLoading();
  }

  GetShopSuccess getShopSuccess(ShopViewModel shop, bool openModalWithMap) {
    return GetShopSuccess(
      shop,
      openModalWithMap,
    );
  }

  GetShopError getShopError(ErrorsResponse errors) {
    return GetShopError(
      errors,
    );
  }
}

/// @nodoc
const $ShopState = _$ShopStateTearOff();

/// @nodoc
mixin _$ShopState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() shopLoading,
    required TResult Function() shopEndLoading,
    required TResult Function(ShopViewModel shop, bool openModalWithMap)
        getShopSuccess,
    required TResult Function(ErrorsResponse errors) getShopError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? shopLoading,
    TResult Function()? shopEndLoading,
    TResult Function(ShopViewModel shop, bool openModalWithMap)? getShopSuccess,
    TResult Function(ErrorsResponse errors)? getShopError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? shopLoading,
    TResult Function()? shopEndLoading,
    TResult Function(ShopViewModel shop, bool openModalWithMap)? getShopSuccess,
    TResult Function(ErrorsResponse errors)? getShopError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ShopLoading value) shopLoading,
    required TResult Function(ShopEndLoading value) shopEndLoading,
    required TResult Function(GetShopSuccess value) getShopSuccess,
    required TResult Function(GetShopError value) getShopError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShopLoading value)? shopLoading,
    TResult Function(ShopEndLoading value)? shopEndLoading,
    TResult Function(GetShopSuccess value)? getShopSuccess,
    TResult Function(GetShopError value)? getShopError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShopLoading value)? shopLoading,
    TResult Function(ShopEndLoading value)? shopEndLoading,
    TResult Function(GetShopSuccess value)? getShopSuccess,
    TResult Function(GetShopError value)? getShopError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) =
      _$ShopStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res> implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  final ShopState _value;
  // ignore: unused_field
  final $Res Function(ShopState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ShopStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ShopState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() shopLoading,
    required TResult Function() shopEndLoading,
    required TResult Function(ShopViewModel shop, bool openModalWithMap)
        getShopSuccess,
    required TResult Function(ErrorsResponse errors) getShopError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? shopLoading,
    TResult Function()? shopEndLoading,
    TResult Function(ShopViewModel shop, bool openModalWithMap)? getShopSuccess,
    TResult Function(ErrorsResponse errors)? getShopError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? shopLoading,
    TResult Function()? shopEndLoading,
    TResult Function(ShopViewModel shop, bool openModalWithMap)? getShopSuccess,
    TResult Function(ErrorsResponse errors)? getShopError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ShopLoading value) shopLoading,
    required TResult Function(ShopEndLoading value) shopEndLoading,
    required TResult Function(GetShopSuccess value) getShopSuccess,
    required TResult Function(GetShopError value) getShopError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShopLoading value)? shopLoading,
    TResult Function(ShopEndLoading value)? shopEndLoading,
    TResult Function(GetShopSuccess value)? getShopSuccess,
    TResult Function(GetShopError value)? getShopError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShopLoading value)? shopLoading,
    TResult Function(ShopEndLoading value)? shopEndLoading,
    TResult Function(GetShopSuccess value)? getShopSuccess,
    TResult Function(GetShopError value)? getShopError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ShopState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $ShopLoadingCopyWith<$Res> {
  factory $ShopLoadingCopyWith(
          ShopLoading value, $Res Function(ShopLoading) then) =
      _$ShopLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopLoadingCopyWithImpl<$Res> extends _$ShopStateCopyWithImpl<$Res>
    implements $ShopLoadingCopyWith<$Res> {
  _$ShopLoadingCopyWithImpl(
      ShopLoading _value, $Res Function(ShopLoading) _then)
      : super(_value, (v) => _then(v as ShopLoading));

  @override
  ShopLoading get _value => super._value as ShopLoading;
}

/// @nodoc

class _$ShopLoading implements ShopLoading {
  const _$ShopLoading();

  @override
  String toString() {
    return 'ShopState.shopLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShopLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() shopLoading,
    required TResult Function() shopEndLoading,
    required TResult Function(ShopViewModel shop, bool openModalWithMap)
        getShopSuccess,
    required TResult Function(ErrorsResponse errors) getShopError,
  }) {
    return shopLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? shopLoading,
    TResult Function()? shopEndLoading,
    TResult Function(ShopViewModel shop, bool openModalWithMap)? getShopSuccess,
    TResult Function(ErrorsResponse errors)? getShopError,
  }) {
    return shopLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? shopLoading,
    TResult Function()? shopEndLoading,
    TResult Function(ShopViewModel shop, bool openModalWithMap)? getShopSuccess,
    TResult Function(ErrorsResponse errors)? getShopError,
    required TResult orElse(),
  }) {
    if (shopLoading != null) {
      return shopLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ShopLoading value) shopLoading,
    required TResult Function(ShopEndLoading value) shopEndLoading,
    required TResult Function(GetShopSuccess value) getShopSuccess,
    required TResult Function(GetShopError value) getShopError,
  }) {
    return shopLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShopLoading value)? shopLoading,
    TResult Function(ShopEndLoading value)? shopEndLoading,
    TResult Function(GetShopSuccess value)? getShopSuccess,
    TResult Function(GetShopError value)? getShopError,
  }) {
    return shopLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShopLoading value)? shopLoading,
    TResult Function(ShopEndLoading value)? shopEndLoading,
    TResult Function(GetShopSuccess value)? getShopSuccess,
    TResult Function(GetShopError value)? getShopError,
    required TResult orElse(),
  }) {
    if (shopLoading != null) {
      return shopLoading(this);
    }
    return orElse();
  }
}

abstract class ShopLoading implements ShopState {
  const factory ShopLoading() = _$ShopLoading;
}

/// @nodoc
abstract class $ShopEndLoadingCopyWith<$Res> {
  factory $ShopEndLoadingCopyWith(
          ShopEndLoading value, $Res Function(ShopEndLoading) then) =
      _$ShopEndLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopEndLoadingCopyWithImpl<$Res> extends _$ShopStateCopyWithImpl<$Res>
    implements $ShopEndLoadingCopyWith<$Res> {
  _$ShopEndLoadingCopyWithImpl(
      ShopEndLoading _value, $Res Function(ShopEndLoading) _then)
      : super(_value, (v) => _then(v as ShopEndLoading));

  @override
  ShopEndLoading get _value => super._value as ShopEndLoading;
}

/// @nodoc

class _$ShopEndLoading implements ShopEndLoading {
  const _$ShopEndLoading();

  @override
  String toString() {
    return 'ShopState.shopEndLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShopEndLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() shopLoading,
    required TResult Function() shopEndLoading,
    required TResult Function(ShopViewModel shop, bool openModalWithMap)
        getShopSuccess,
    required TResult Function(ErrorsResponse errors) getShopError,
  }) {
    return shopEndLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? shopLoading,
    TResult Function()? shopEndLoading,
    TResult Function(ShopViewModel shop, bool openModalWithMap)? getShopSuccess,
    TResult Function(ErrorsResponse errors)? getShopError,
  }) {
    return shopEndLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? shopLoading,
    TResult Function()? shopEndLoading,
    TResult Function(ShopViewModel shop, bool openModalWithMap)? getShopSuccess,
    TResult Function(ErrorsResponse errors)? getShopError,
    required TResult orElse(),
  }) {
    if (shopEndLoading != null) {
      return shopEndLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ShopLoading value) shopLoading,
    required TResult Function(ShopEndLoading value) shopEndLoading,
    required TResult Function(GetShopSuccess value) getShopSuccess,
    required TResult Function(GetShopError value) getShopError,
  }) {
    return shopEndLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShopLoading value)? shopLoading,
    TResult Function(ShopEndLoading value)? shopEndLoading,
    TResult Function(GetShopSuccess value)? getShopSuccess,
    TResult Function(GetShopError value)? getShopError,
  }) {
    return shopEndLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShopLoading value)? shopLoading,
    TResult Function(ShopEndLoading value)? shopEndLoading,
    TResult Function(GetShopSuccess value)? getShopSuccess,
    TResult Function(GetShopError value)? getShopError,
    required TResult orElse(),
  }) {
    if (shopEndLoading != null) {
      return shopEndLoading(this);
    }
    return orElse();
  }
}

abstract class ShopEndLoading implements ShopState {
  const factory ShopEndLoading() = _$ShopEndLoading;
}

/// @nodoc
abstract class $GetShopSuccessCopyWith<$Res> {
  factory $GetShopSuccessCopyWith(
          GetShopSuccess value, $Res Function(GetShopSuccess) then) =
      _$GetShopSuccessCopyWithImpl<$Res>;
  $Res call({ShopViewModel shop, bool openModalWithMap});

  $ShopViewModelCopyWith<$Res> get shop;
}

/// @nodoc
class _$GetShopSuccessCopyWithImpl<$Res> extends _$ShopStateCopyWithImpl<$Res>
    implements $GetShopSuccessCopyWith<$Res> {
  _$GetShopSuccessCopyWithImpl(
      GetShopSuccess _value, $Res Function(GetShopSuccess) _then)
      : super(_value, (v) => _then(v as GetShopSuccess));

  @override
  GetShopSuccess get _value => super._value as GetShopSuccess;

  @override
  $Res call({
    Object? shop = freezed,
    Object? openModalWithMap = freezed,
  }) {
    return _then(GetShopSuccess(
      shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopViewModel,
      openModalWithMap == freezed
          ? _value.openModalWithMap
          : openModalWithMap // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ShopViewModelCopyWith<$Res> get shop {
    return $ShopViewModelCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value));
    });
  }
}

/// @nodoc

class _$GetShopSuccess implements GetShopSuccess {
  const _$GetShopSuccess(this.shop, this.openModalWithMap);

  @override
  final ShopViewModel shop;
  @override
  final bool openModalWithMap;

  @override
  String toString() {
    return 'ShopState.getShopSuccess(shop: $shop, openModalWithMap: $openModalWithMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetShopSuccess &&
            (identical(other.shop, shop) ||
                const DeepCollectionEquality().equals(other.shop, shop)) &&
            (identical(other.openModalWithMap, openModalWithMap) ||
                const DeepCollectionEquality()
                    .equals(other.openModalWithMap, openModalWithMap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(shop) ^
      const DeepCollectionEquality().hash(openModalWithMap);

  @JsonKey(ignore: true)
  @override
  $GetShopSuccessCopyWith<GetShopSuccess> get copyWith =>
      _$GetShopSuccessCopyWithImpl<GetShopSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() shopLoading,
    required TResult Function() shopEndLoading,
    required TResult Function(ShopViewModel shop, bool openModalWithMap)
        getShopSuccess,
    required TResult Function(ErrorsResponse errors) getShopError,
  }) {
    return getShopSuccess(shop, openModalWithMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? shopLoading,
    TResult Function()? shopEndLoading,
    TResult Function(ShopViewModel shop, bool openModalWithMap)? getShopSuccess,
    TResult Function(ErrorsResponse errors)? getShopError,
  }) {
    return getShopSuccess?.call(shop, openModalWithMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? shopLoading,
    TResult Function()? shopEndLoading,
    TResult Function(ShopViewModel shop, bool openModalWithMap)? getShopSuccess,
    TResult Function(ErrorsResponse errors)? getShopError,
    required TResult orElse(),
  }) {
    if (getShopSuccess != null) {
      return getShopSuccess(shop, openModalWithMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ShopLoading value) shopLoading,
    required TResult Function(ShopEndLoading value) shopEndLoading,
    required TResult Function(GetShopSuccess value) getShopSuccess,
    required TResult Function(GetShopError value) getShopError,
  }) {
    return getShopSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShopLoading value)? shopLoading,
    TResult Function(ShopEndLoading value)? shopEndLoading,
    TResult Function(GetShopSuccess value)? getShopSuccess,
    TResult Function(GetShopError value)? getShopError,
  }) {
    return getShopSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShopLoading value)? shopLoading,
    TResult Function(ShopEndLoading value)? shopEndLoading,
    TResult Function(GetShopSuccess value)? getShopSuccess,
    TResult Function(GetShopError value)? getShopError,
    required TResult orElse(),
  }) {
    if (getShopSuccess != null) {
      return getShopSuccess(this);
    }
    return orElse();
  }
}

abstract class GetShopSuccess implements ShopState {
  const factory GetShopSuccess(ShopViewModel shop, bool openModalWithMap) =
      _$GetShopSuccess;

  ShopViewModel get shop => throw _privateConstructorUsedError;
  bool get openModalWithMap => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetShopSuccessCopyWith<GetShopSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetShopErrorCopyWith<$Res> {
  factory $GetShopErrorCopyWith(
          GetShopError value, $Res Function(GetShopError) then) =
      _$GetShopErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$GetShopErrorCopyWithImpl<$Res> extends _$ShopStateCopyWithImpl<$Res>
    implements $GetShopErrorCopyWith<$Res> {
  _$GetShopErrorCopyWithImpl(
      GetShopError _value, $Res Function(GetShopError) _then)
      : super(_value, (v) => _then(v as GetShopError));

  @override
  GetShopError get _value => super._value as GetShopError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(GetShopError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$GetShopError implements GetShopError {
  const _$GetShopError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'ShopState.getShopError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetShopError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $GetShopErrorCopyWith<GetShopError> get copyWith =>
      _$GetShopErrorCopyWithImpl<GetShopError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() shopLoading,
    required TResult Function() shopEndLoading,
    required TResult Function(ShopViewModel shop, bool openModalWithMap)
        getShopSuccess,
    required TResult Function(ErrorsResponse errors) getShopError,
  }) {
    return getShopError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? shopLoading,
    TResult Function()? shopEndLoading,
    TResult Function(ShopViewModel shop, bool openModalWithMap)? getShopSuccess,
    TResult Function(ErrorsResponse errors)? getShopError,
  }) {
    return getShopError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? shopLoading,
    TResult Function()? shopEndLoading,
    TResult Function(ShopViewModel shop, bool openModalWithMap)? getShopSuccess,
    TResult Function(ErrorsResponse errors)? getShopError,
    required TResult orElse(),
  }) {
    if (getShopError != null) {
      return getShopError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ShopLoading value) shopLoading,
    required TResult Function(ShopEndLoading value) shopEndLoading,
    required TResult Function(GetShopSuccess value) getShopSuccess,
    required TResult Function(GetShopError value) getShopError,
  }) {
    return getShopError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShopLoading value)? shopLoading,
    TResult Function(ShopEndLoading value)? shopEndLoading,
    TResult Function(GetShopSuccess value)? getShopSuccess,
    TResult Function(GetShopError value)? getShopError,
  }) {
    return getShopError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ShopLoading value)? shopLoading,
    TResult Function(ShopEndLoading value)? shopEndLoading,
    TResult Function(GetShopSuccess value)? getShopSuccess,
    TResult Function(GetShopError value)? getShopError,
    required TResult orElse(),
  }) {
    if (getShopError != null) {
      return getShopError(this);
    }
    return orElse();
  }
}

abstract class GetShopError implements ShopState {
  const factory GetShopError(ErrorsResponse errors) = _$GetShopError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetShopErrorCopyWith<GetShopError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ShopEventTearOff {
  const _$ShopEventTearOff();

  GetShop getShop(String id, {bool openModalWithMap = false}) {
    return GetShop(
      id,
      openModalWithMap: openModalWithMap,
    );
  }
}

/// @nodoc
const $ShopEvent = _$ShopEventTearOff();

/// @nodoc
mixin _$ShopEvent {
  String get id => throw _privateConstructorUsedError;
  bool get openModalWithMap => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool openModalWithMap) getShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, bool openModalWithMap)? getShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool openModalWithMap)? getShop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetShop value) getShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetShop value)? getShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetShop value)? getShop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopEventCopyWith<ShopEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopEventCopyWith<$Res> {
  factory $ShopEventCopyWith(ShopEvent value, $Res Function(ShopEvent) then) =
      _$ShopEventCopyWithImpl<$Res>;
  $Res call({String id, bool openModalWithMap});
}

/// @nodoc
class _$ShopEventCopyWithImpl<$Res> implements $ShopEventCopyWith<$Res> {
  _$ShopEventCopyWithImpl(this._value, this._then);

  final ShopEvent _value;
  // ignore: unused_field
  final $Res Function(ShopEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? openModalWithMap = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      openModalWithMap: openModalWithMap == freezed
          ? _value.openModalWithMap
          : openModalWithMap // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $GetShopCopyWith<$Res> implements $ShopEventCopyWith<$Res> {
  factory $GetShopCopyWith(GetShop value, $Res Function(GetShop) then) =
      _$GetShopCopyWithImpl<$Res>;
  @override
  $Res call({String id, bool openModalWithMap});
}

/// @nodoc
class _$GetShopCopyWithImpl<$Res> extends _$ShopEventCopyWithImpl<$Res>
    implements $GetShopCopyWith<$Res> {
  _$GetShopCopyWithImpl(GetShop _value, $Res Function(GetShop) _then)
      : super(_value, (v) => _then(v as GetShop));

  @override
  GetShop get _value => super._value as GetShop;

  @override
  $Res call({
    Object? id = freezed,
    Object? openModalWithMap = freezed,
  }) {
    return _then(GetShop(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      openModalWithMap: openModalWithMap == freezed
          ? _value.openModalWithMap
          : openModalWithMap // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetShop implements GetShop {
  const _$GetShop(this.id, {this.openModalWithMap = false});

  @override
  final String id;
  @JsonKey(defaultValue: false)
  @override
  final bool openModalWithMap;

  @override
  String toString() {
    return 'ShopEvent.getShop(id: $id, openModalWithMap: $openModalWithMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetShop &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.openModalWithMap, openModalWithMap) ||
                const DeepCollectionEquality()
                    .equals(other.openModalWithMap, openModalWithMap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(openModalWithMap);

  @JsonKey(ignore: true)
  @override
  $GetShopCopyWith<GetShop> get copyWith =>
      _$GetShopCopyWithImpl<GetShop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool openModalWithMap) getShop,
  }) {
    return getShop(id, openModalWithMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, bool openModalWithMap)? getShop,
  }) {
    return getShop?.call(id, openModalWithMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool openModalWithMap)? getShop,
    required TResult orElse(),
  }) {
    if (getShop != null) {
      return getShop(id, openModalWithMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetShop value) getShop,
  }) {
    return getShop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetShop value)? getShop,
  }) {
    return getShop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetShop value)? getShop,
    required TResult orElse(),
  }) {
    if (getShop != null) {
      return getShop(this);
    }
    return orElse();
  }
}

abstract class GetShop implements ShopEvent {
  const factory GetShop(String id, {bool openModalWithMap}) = _$GetShop;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  bool get openModalWithMap => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetShopCopyWith<GetShop> get copyWith => throw _privateConstructorUsedError;
}
