// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoreStateTearOff {
  const _$StoreStateTearOff();

  Initial initial() {
    return const Initial();
  }

  BrandLoading brandLoading() {
    return const BrandLoading();
  }

  BrandEndLoading brandEndLoading() {
    return const BrandEndLoading();
  }

  GetBrandSuccess getBrandSuccess(BrandResp brand) {
    return GetBrandSuccess(
      brand,
    );
  }

  GetBrandError getBrandError(ErrorsResponse errors) {
    return GetBrandError(
      errors,
    );
  }
}

/// @nodoc
const $StoreState = _$StoreStateTearOff();

/// @nodoc
mixin _$StoreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() brandLoading,
    required TResult Function() brandEndLoading,
    required TResult Function(BrandResp brand) getBrandSuccess,
    required TResult Function(ErrorsResponse errors) getBrandError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? brandLoading,
    TResult Function()? brandEndLoading,
    TResult Function(BrandResp brand)? getBrandSuccess,
    TResult Function(ErrorsResponse errors)? getBrandError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? brandLoading,
    TResult Function()? brandEndLoading,
    TResult Function(BrandResp brand)? getBrandSuccess,
    TResult Function(ErrorsResponse errors)? getBrandError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BrandLoading value) brandLoading,
    required TResult Function(BrandEndLoading value) brandEndLoading,
    required TResult Function(GetBrandSuccess value) getBrandSuccess,
    required TResult Function(GetBrandError value) getBrandError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BrandLoading value)? brandLoading,
    TResult Function(BrandEndLoading value)? brandEndLoading,
    TResult Function(GetBrandSuccess value)? getBrandSuccess,
    TResult Function(GetBrandError value)? getBrandError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BrandLoading value)? brandLoading,
    TResult Function(BrandEndLoading value)? brandEndLoading,
    TResult Function(GetBrandSuccess value)? getBrandSuccess,
    TResult Function(GetBrandError value)? getBrandError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreStateCopyWith<$Res> {
  factory $StoreStateCopyWith(
          StoreState value, $Res Function(StoreState) then) =
      _$StoreStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreStateCopyWithImpl<$Res> implements $StoreStateCopyWith<$Res> {
  _$StoreStateCopyWithImpl(this._value, this._then);

  final StoreState _value;
  // ignore: unused_field
  final $Res Function(StoreState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$StoreStateCopyWithImpl<$Res>
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
    return 'StoreState.initial()';
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
    required TResult Function() brandLoading,
    required TResult Function() brandEndLoading,
    required TResult Function(BrandResp brand) getBrandSuccess,
    required TResult Function(ErrorsResponse errors) getBrandError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? brandLoading,
    TResult Function()? brandEndLoading,
    TResult Function(BrandResp brand)? getBrandSuccess,
    TResult Function(ErrorsResponse errors)? getBrandError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? brandLoading,
    TResult Function()? brandEndLoading,
    TResult Function(BrandResp brand)? getBrandSuccess,
    TResult Function(ErrorsResponse errors)? getBrandError,
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
    required TResult Function(BrandLoading value) brandLoading,
    required TResult Function(BrandEndLoading value) brandEndLoading,
    required TResult Function(GetBrandSuccess value) getBrandSuccess,
    required TResult Function(GetBrandError value) getBrandError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BrandLoading value)? brandLoading,
    TResult Function(BrandEndLoading value)? brandEndLoading,
    TResult Function(GetBrandSuccess value)? getBrandSuccess,
    TResult Function(GetBrandError value)? getBrandError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BrandLoading value)? brandLoading,
    TResult Function(BrandEndLoading value)? brandEndLoading,
    TResult Function(GetBrandSuccess value)? getBrandSuccess,
    TResult Function(GetBrandError value)? getBrandError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements StoreState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $BrandLoadingCopyWith<$Res> {
  factory $BrandLoadingCopyWith(
          BrandLoading value, $Res Function(BrandLoading) then) =
      _$BrandLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$BrandLoadingCopyWithImpl<$Res> extends _$StoreStateCopyWithImpl<$Res>
    implements $BrandLoadingCopyWith<$Res> {
  _$BrandLoadingCopyWithImpl(
      BrandLoading _value, $Res Function(BrandLoading) _then)
      : super(_value, (v) => _then(v as BrandLoading));

  @override
  BrandLoading get _value => super._value as BrandLoading;
}

/// @nodoc

class _$BrandLoading implements BrandLoading {
  const _$BrandLoading();

  @override
  String toString() {
    return 'StoreState.brandLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BrandLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() brandLoading,
    required TResult Function() brandEndLoading,
    required TResult Function(BrandResp brand) getBrandSuccess,
    required TResult Function(ErrorsResponse errors) getBrandError,
  }) {
    return brandLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? brandLoading,
    TResult Function()? brandEndLoading,
    TResult Function(BrandResp brand)? getBrandSuccess,
    TResult Function(ErrorsResponse errors)? getBrandError,
  }) {
    return brandLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? brandLoading,
    TResult Function()? brandEndLoading,
    TResult Function(BrandResp brand)? getBrandSuccess,
    TResult Function(ErrorsResponse errors)? getBrandError,
    required TResult orElse(),
  }) {
    if (brandLoading != null) {
      return brandLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BrandLoading value) brandLoading,
    required TResult Function(BrandEndLoading value) brandEndLoading,
    required TResult Function(GetBrandSuccess value) getBrandSuccess,
    required TResult Function(GetBrandError value) getBrandError,
  }) {
    return brandLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BrandLoading value)? brandLoading,
    TResult Function(BrandEndLoading value)? brandEndLoading,
    TResult Function(GetBrandSuccess value)? getBrandSuccess,
    TResult Function(GetBrandError value)? getBrandError,
  }) {
    return brandLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BrandLoading value)? brandLoading,
    TResult Function(BrandEndLoading value)? brandEndLoading,
    TResult Function(GetBrandSuccess value)? getBrandSuccess,
    TResult Function(GetBrandError value)? getBrandError,
    required TResult orElse(),
  }) {
    if (brandLoading != null) {
      return brandLoading(this);
    }
    return orElse();
  }
}

abstract class BrandLoading implements StoreState {
  const factory BrandLoading() = _$BrandLoading;
}

/// @nodoc
abstract class $BrandEndLoadingCopyWith<$Res> {
  factory $BrandEndLoadingCopyWith(
          BrandEndLoading value, $Res Function(BrandEndLoading) then) =
      _$BrandEndLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$BrandEndLoadingCopyWithImpl<$Res> extends _$StoreStateCopyWithImpl<$Res>
    implements $BrandEndLoadingCopyWith<$Res> {
  _$BrandEndLoadingCopyWithImpl(
      BrandEndLoading _value, $Res Function(BrandEndLoading) _then)
      : super(_value, (v) => _then(v as BrandEndLoading));

  @override
  BrandEndLoading get _value => super._value as BrandEndLoading;
}

/// @nodoc

class _$BrandEndLoading implements BrandEndLoading {
  const _$BrandEndLoading();

  @override
  String toString() {
    return 'StoreState.brandEndLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BrandEndLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() brandLoading,
    required TResult Function() brandEndLoading,
    required TResult Function(BrandResp brand) getBrandSuccess,
    required TResult Function(ErrorsResponse errors) getBrandError,
  }) {
    return brandEndLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? brandLoading,
    TResult Function()? brandEndLoading,
    TResult Function(BrandResp brand)? getBrandSuccess,
    TResult Function(ErrorsResponse errors)? getBrandError,
  }) {
    return brandEndLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? brandLoading,
    TResult Function()? brandEndLoading,
    TResult Function(BrandResp brand)? getBrandSuccess,
    TResult Function(ErrorsResponse errors)? getBrandError,
    required TResult orElse(),
  }) {
    if (brandEndLoading != null) {
      return brandEndLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BrandLoading value) brandLoading,
    required TResult Function(BrandEndLoading value) brandEndLoading,
    required TResult Function(GetBrandSuccess value) getBrandSuccess,
    required TResult Function(GetBrandError value) getBrandError,
  }) {
    return brandEndLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BrandLoading value)? brandLoading,
    TResult Function(BrandEndLoading value)? brandEndLoading,
    TResult Function(GetBrandSuccess value)? getBrandSuccess,
    TResult Function(GetBrandError value)? getBrandError,
  }) {
    return brandEndLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BrandLoading value)? brandLoading,
    TResult Function(BrandEndLoading value)? brandEndLoading,
    TResult Function(GetBrandSuccess value)? getBrandSuccess,
    TResult Function(GetBrandError value)? getBrandError,
    required TResult orElse(),
  }) {
    if (brandEndLoading != null) {
      return brandEndLoading(this);
    }
    return orElse();
  }
}

abstract class BrandEndLoading implements StoreState {
  const factory BrandEndLoading() = _$BrandEndLoading;
}

/// @nodoc
abstract class $GetBrandSuccessCopyWith<$Res> {
  factory $GetBrandSuccessCopyWith(
          GetBrandSuccess value, $Res Function(GetBrandSuccess) then) =
      _$GetBrandSuccessCopyWithImpl<$Res>;
  $Res call({BrandResp brand});
}

/// @nodoc
class _$GetBrandSuccessCopyWithImpl<$Res> extends _$StoreStateCopyWithImpl<$Res>
    implements $GetBrandSuccessCopyWith<$Res> {
  _$GetBrandSuccessCopyWithImpl(
      GetBrandSuccess _value, $Res Function(GetBrandSuccess) _then)
      : super(_value, (v) => _then(v as GetBrandSuccess));

  @override
  GetBrandSuccess get _value => super._value as GetBrandSuccess;

  @override
  $Res call({
    Object? brand = freezed,
  }) {
    return _then(GetBrandSuccess(
      brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandResp,
    ));
  }
}

/// @nodoc

class _$GetBrandSuccess implements GetBrandSuccess {
  const _$GetBrandSuccess(this.brand);

  @override
  final BrandResp brand;

  @override
  String toString() {
    return 'StoreState.getBrandSuccess(brand: $brand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetBrandSuccess &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(brand);

  @JsonKey(ignore: true)
  @override
  $GetBrandSuccessCopyWith<GetBrandSuccess> get copyWith =>
      _$GetBrandSuccessCopyWithImpl<GetBrandSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() brandLoading,
    required TResult Function() brandEndLoading,
    required TResult Function(BrandResp brand) getBrandSuccess,
    required TResult Function(ErrorsResponse errors) getBrandError,
  }) {
    return getBrandSuccess(brand);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? brandLoading,
    TResult Function()? brandEndLoading,
    TResult Function(BrandResp brand)? getBrandSuccess,
    TResult Function(ErrorsResponse errors)? getBrandError,
  }) {
    return getBrandSuccess?.call(brand);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? brandLoading,
    TResult Function()? brandEndLoading,
    TResult Function(BrandResp brand)? getBrandSuccess,
    TResult Function(ErrorsResponse errors)? getBrandError,
    required TResult orElse(),
  }) {
    if (getBrandSuccess != null) {
      return getBrandSuccess(brand);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BrandLoading value) brandLoading,
    required TResult Function(BrandEndLoading value) brandEndLoading,
    required TResult Function(GetBrandSuccess value) getBrandSuccess,
    required TResult Function(GetBrandError value) getBrandError,
  }) {
    return getBrandSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BrandLoading value)? brandLoading,
    TResult Function(BrandEndLoading value)? brandEndLoading,
    TResult Function(GetBrandSuccess value)? getBrandSuccess,
    TResult Function(GetBrandError value)? getBrandError,
  }) {
    return getBrandSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BrandLoading value)? brandLoading,
    TResult Function(BrandEndLoading value)? brandEndLoading,
    TResult Function(GetBrandSuccess value)? getBrandSuccess,
    TResult Function(GetBrandError value)? getBrandError,
    required TResult orElse(),
  }) {
    if (getBrandSuccess != null) {
      return getBrandSuccess(this);
    }
    return orElse();
  }
}

abstract class GetBrandSuccess implements StoreState {
  const factory GetBrandSuccess(BrandResp brand) = _$GetBrandSuccess;

  BrandResp get brand => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBrandSuccessCopyWith<GetBrandSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBrandErrorCopyWith<$Res> {
  factory $GetBrandErrorCopyWith(
          GetBrandError value, $Res Function(GetBrandError) then) =
      _$GetBrandErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$GetBrandErrorCopyWithImpl<$Res> extends _$StoreStateCopyWithImpl<$Res>
    implements $GetBrandErrorCopyWith<$Res> {
  _$GetBrandErrorCopyWithImpl(
      GetBrandError _value, $Res Function(GetBrandError) _then)
      : super(_value, (v) => _then(v as GetBrandError));

  @override
  GetBrandError get _value => super._value as GetBrandError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(GetBrandError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$GetBrandError implements GetBrandError {
  const _$GetBrandError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'StoreState.getBrandError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetBrandError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $GetBrandErrorCopyWith<GetBrandError> get copyWith =>
      _$GetBrandErrorCopyWithImpl<GetBrandError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() brandLoading,
    required TResult Function() brandEndLoading,
    required TResult Function(BrandResp brand) getBrandSuccess,
    required TResult Function(ErrorsResponse errors) getBrandError,
  }) {
    return getBrandError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? brandLoading,
    TResult Function()? brandEndLoading,
    TResult Function(BrandResp brand)? getBrandSuccess,
    TResult Function(ErrorsResponse errors)? getBrandError,
  }) {
    return getBrandError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? brandLoading,
    TResult Function()? brandEndLoading,
    TResult Function(BrandResp brand)? getBrandSuccess,
    TResult Function(ErrorsResponse errors)? getBrandError,
    required TResult orElse(),
  }) {
    if (getBrandError != null) {
      return getBrandError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BrandLoading value) brandLoading,
    required TResult Function(BrandEndLoading value) brandEndLoading,
    required TResult Function(GetBrandSuccess value) getBrandSuccess,
    required TResult Function(GetBrandError value) getBrandError,
  }) {
    return getBrandError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BrandLoading value)? brandLoading,
    TResult Function(BrandEndLoading value)? brandEndLoading,
    TResult Function(GetBrandSuccess value)? getBrandSuccess,
    TResult Function(GetBrandError value)? getBrandError,
  }) {
    return getBrandError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BrandLoading value)? brandLoading,
    TResult Function(BrandEndLoading value)? brandEndLoading,
    TResult Function(GetBrandSuccess value)? getBrandSuccess,
    TResult Function(GetBrandError value)? getBrandError,
    required TResult orElse(),
  }) {
    if (getBrandError != null) {
      return getBrandError(this);
    }
    return orElse();
  }
}

abstract class GetBrandError implements StoreState {
  const factory GetBrandError(ErrorsResponse errors) = _$GetBrandError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBrandErrorCopyWith<GetBrandError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StoreEventTearOff {
  const _$StoreEventTearOff();

  GetBrand getBrand(int id) {
    return GetBrand(
      id,
    );
  }
}

/// @nodoc
const $StoreEvent = _$StoreEventTearOff();

/// @nodoc
mixin _$StoreEvent {
  int get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? getBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getBrand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBrand value) getBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetBrand value)? getBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBrand value)? getBrand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreEventCopyWith<StoreEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreEventCopyWith<$Res> {
  factory $StoreEventCopyWith(
          StoreEvent value, $Res Function(StoreEvent) then) =
      _$StoreEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$StoreEventCopyWithImpl<$Res> implements $StoreEventCopyWith<$Res> {
  _$StoreEventCopyWithImpl(this._value, this._then);

  final StoreEvent _value;
  // ignore: unused_field
  final $Res Function(StoreEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $GetBrandCopyWith<$Res> implements $StoreEventCopyWith<$Res> {
  factory $GetBrandCopyWith(GetBrand value, $Res Function(GetBrand) then) =
      _$GetBrandCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class _$GetBrandCopyWithImpl<$Res> extends _$StoreEventCopyWithImpl<$Res>
    implements $GetBrandCopyWith<$Res> {
  _$GetBrandCopyWithImpl(GetBrand _value, $Res Function(GetBrand) _then)
      : super(_value, (v) => _then(v as GetBrand));

  @override
  GetBrand get _value => super._value as GetBrand;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(GetBrand(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetBrand implements GetBrand {
  const _$GetBrand(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'StoreEvent.getBrand(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetBrand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $GetBrandCopyWith<GetBrand> get copyWith =>
      _$GetBrandCopyWithImpl<GetBrand>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getBrand,
  }) {
    return getBrand(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? getBrand,
  }) {
    return getBrand?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getBrand,
    required TResult orElse(),
  }) {
    if (getBrand != null) {
      return getBrand(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBrand value) getBrand,
  }) {
    return getBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetBrand value)? getBrand,
  }) {
    return getBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBrand value)? getBrand,
    required TResult orElse(),
  }) {
    if (getBrand != null) {
      return getBrand(this);
    }
    return orElse();
  }
}

abstract class GetBrand implements StoreEvent {
  const factory GetBrand(int id) = _$GetBrand;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetBrandCopyWith<GetBrand> get copyWith =>
      throw _privateConstructorUsedError;
}
