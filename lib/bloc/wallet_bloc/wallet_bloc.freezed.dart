// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalletStateTearOff {
  const _$WalletStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  GetWalletSuccess getWalletSuccess(WalletViewModel wallet, bool isUpdate) {
    return GetWalletSuccess(
      wallet,
      isUpdate,
    );
  }

  GetWalletError getWalletError(ErrorsResponse errors) {
    return GetWalletError(
      errors,
    );
  }
}

/// @nodoc
const $WalletState = _$WalletStateTearOff();

/// @nodoc
mixin _$WalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletViewModel wallet, bool isUpdate)
        getWalletSuccess,
    required TResult Function(ErrorsResponse errors) getWalletError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletViewModel wallet, bool isUpdate)? getWalletSuccess,
    TResult Function(ErrorsResponse errors)? getWalletError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletViewModel wallet, bool isUpdate)? getWalletSuccess,
    TResult Function(ErrorsResponse errors)? getWalletError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetWalletSuccess value) getWalletSuccess,
    required TResult Function(GetWalletError value) getWalletError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetWalletSuccess value)? getWalletSuccess,
    TResult Function(GetWalletError value)? getWalletError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetWalletSuccess value)? getWalletSuccess,
    TResult Function(GetWalletError value)? getWalletError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res> implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  final WalletState _value;
  // ignore: unused_field
  final $Res Function(WalletState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
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
    return 'WalletState.initial()';
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
    required TResult Function() loading,
    required TResult Function(WalletViewModel wallet, bool isUpdate)
        getWalletSuccess,
    required TResult Function(ErrorsResponse errors) getWalletError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletViewModel wallet, bool isUpdate)? getWalletSuccess,
    TResult Function(ErrorsResponse errors)? getWalletError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletViewModel wallet, bool isUpdate)? getWalletSuccess,
    TResult Function(ErrorsResponse errors)? getWalletError,
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
    required TResult Function(Loading value) loading,
    required TResult Function(GetWalletSuccess value) getWalletSuccess,
    required TResult Function(GetWalletError value) getWalletError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetWalletSuccess value)? getWalletSuccess,
    TResult Function(GetWalletError value)? getWalletError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetWalletSuccess value)? getWalletSuccess,
    TResult Function(GetWalletError value)? getWalletError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements WalletState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'WalletState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletViewModel wallet, bool isUpdate)
        getWalletSuccess,
    required TResult Function(ErrorsResponse errors) getWalletError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletViewModel wallet, bool isUpdate)? getWalletSuccess,
    TResult Function(ErrorsResponse errors)? getWalletError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletViewModel wallet, bool isUpdate)? getWalletSuccess,
    TResult Function(ErrorsResponse errors)? getWalletError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetWalletSuccess value) getWalletSuccess,
    required TResult Function(GetWalletError value) getWalletError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetWalletSuccess value)? getWalletSuccess,
    TResult Function(GetWalletError value)? getWalletError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetWalletSuccess value)? getWalletSuccess,
    TResult Function(GetWalletError value)? getWalletError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements WalletState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $GetWalletSuccessCopyWith<$Res> {
  factory $GetWalletSuccessCopyWith(
          GetWalletSuccess value, $Res Function(GetWalletSuccess) then) =
      _$GetWalletSuccessCopyWithImpl<$Res>;
  $Res call({WalletViewModel wallet, bool isUpdate});
}

/// @nodoc
class _$GetWalletSuccessCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res>
    implements $GetWalletSuccessCopyWith<$Res> {
  _$GetWalletSuccessCopyWithImpl(
      GetWalletSuccess _value, $Res Function(GetWalletSuccess) _then)
      : super(_value, (v) => _then(v as GetWalletSuccess));

  @override
  GetWalletSuccess get _value => super._value as GetWalletSuccess;

  @override
  $Res call({
    Object? wallet = freezed,
    Object? isUpdate = freezed,
  }) {
    return _then(GetWalletSuccess(
      wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletViewModel,
      isUpdate == freezed
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetWalletSuccess implements GetWalletSuccess {
  const _$GetWalletSuccess(this.wallet, this.isUpdate);

  @override
  final WalletViewModel wallet;
  @override
  final bool isUpdate;

  @override
  String toString() {
    return 'WalletState.getWalletSuccess(wallet: $wallet, isUpdate: $isUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWalletSuccess &&
            (identical(other.wallet, wallet) ||
                const DeepCollectionEquality().equals(other.wallet, wallet)) &&
            (identical(other.isUpdate, isUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdate, isUpdate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(wallet) ^
      const DeepCollectionEquality().hash(isUpdate);

  @JsonKey(ignore: true)
  @override
  $GetWalletSuccessCopyWith<GetWalletSuccess> get copyWith =>
      _$GetWalletSuccessCopyWithImpl<GetWalletSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletViewModel wallet, bool isUpdate)
        getWalletSuccess,
    required TResult Function(ErrorsResponse errors) getWalletError,
  }) {
    return getWalletSuccess(wallet, isUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletViewModel wallet, bool isUpdate)? getWalletSuccess,
    TResult Function(ErrorsResponse errors)? getWalletError,
  }) {
    return getWalletSuccess?.call(wallet, isUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletViewModel wallet, bool isUpdate)? getWalletSuccess,
    TResult Function(ErrorsResponse errors)? getWalletError,
    required TResult orElse(),
  }) {
    if (getWalletSuccess != null) {
      return getWalletSuccess(wallet, isUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetWalletSuccess value) getWalletSuccess,
    required TResult Function(GetWalletError value) getWalletError,
  }) {
    return getWalletSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetWalletSuccess value)? getWalletSuccess,
    TResult Function(GetWalletError value)? getWalletError,
  }) {
    return getWalletSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetWalletSuccess value)? getWalletSuccess,
    TResult Function(GetWalletError value)? getWalletError,
    required TResult orElse(),
  }) {
    if (getWalletSuccess != null) {
      return getWalletSuccess(this);
    }
    return orElse();
  }
}

abstract class GetWalletSuccess implements WalletState {
  const factory GetWalletSuccess(WalletViewModel wallet, bool isUpdate) =
      _$GetWalletSuccess;

  WalletViewModel get wallet => throw _privateConstructorUsedError;
  bool get isUpdate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWalletSuccessCopyWith<GetWalletSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWalletErrorCopyWith<$Res> {
  factory $GetWalletErrorCopyWith(
          GetWalletError value, $Res Function(GetWalletError) then) =
      _$GetWalletErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$GetWalletErrorCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements $GetWalletErrorCopyWith<$Res> {
  _$GetWalletErrorCopyWithImpl(
      GetWalletError _value, $Res Function(GetWalletError) _then)
      : super(_value, (v) => _then(v as GetWalletError));

  @override
  GetWalletError get _value => super._value as GetWalletError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(GetWalletError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$GetWalletError implements GetWalletError {
  const _$GetWalletError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'WalletState.getWalletError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWalletError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $GetWalletErrorCopyWith<GetWalletError> get copyWith =>
      _$GetWalletErrorCopyWithImpl<GetWalletError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletViewModel wallet, bool isUpdate)
        getWalletSuccess,
    required TResult Function(ErrorsResponse errors) getWalletError,
  }) {
    return getWalletError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletViewModel wallet, bool isUpdate)? getWalletSuccess,
    TResult Function(ErrorsResponse errors)? getWalletError,
  }) {
    return getWalletError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletViewModel wallet, bool isUpdate)? getWalletSuccess,
    TResult Function(ErrorsResponse errors)? getWalletError,
    required TResult orElse(),
  }) {
    if (getWalletError != null) {
      return getWalletError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetWalletSuccess value) getWalletSuccess,
    required TResult Function(GetWalletError value) getWalletError,
  }) {
    return getWalletError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetWalletSuccess value)? getWalletSuccess,
    TResult Function(GetWalletError value)? getWalletError,
  }) {
    return getWalletError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetWalletSuccess value)? getWalletSuccess,
    TResult Function(GetWalletError value)? getWalletError,
    required TResult orElse(),
  }) {
    if (getWalletError != null) {
      return getWalletError(this);
    }
    return orElse();
  }
}

abstract class GetWalletError implements WalletState {
  const factory GetWalletError(ErrorsResponse errors) = _$GetWalletError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWalletErrorCopyWith<GetWalletError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WalletEventTearOff {
  const _$WalletEventTearOff();

  GetWallet getWallet({bool? isUpdate}) {
    return GetWallet(
      isUpdate: isUpdate,
    );
  }

  ComfortablePaymentUpdate comfortablePaymentUpdate(int value) {
    return ComfortablePaymentUpdate(
      value,
    );
  }

  Refillment refillment(String amount) {
    return Refillment(
      amount,
    );
  }
}

/// @nodoc
const $WalletEvent = _$WalletEventTearOff();

/// @nodoc
mixin _$WalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isUpdate) getWallet,
    required TResult Function(int value) comfortablePaymentUpdate,
    required TResult Function(String amount) refillment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? isUpdate)? getWallet,
    TResult Function(int value)? comfortablePaymentUpdate,
    TResult Function(String amount)? refillment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isUpdate)? getWallet,
    TResult Function(int value)? comfortablePaymentUpdate,
    TResult Function(String amount)? refillment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWallet value) getWallet,
    required TResult Function(ComfortablePaymentUpdate value)
        comfortablePaymentUpdate,
    required TResult Function(Refillment value) refillment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetWallet value)? getWallet,
    TResult Function(ComfortablePaymentUpdate value)? comfortablePaymentUpdate,
    TResult Function(Refillment value)? refillment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWallet value)? getWallet,
    TResult Function(ComfortablePaymentUpdate value)? comfortablePaymentUpdate,
    TResult Function(Refillment value)? refillment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletEventCopyWith<$Res> {
  factory $WalletEventCopyWith(
          WalletEvent value, $Res Function(WalletEvent) then) =
      _$WalletEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletEventCopyWithImpl<$Res> implements $WalletEventCopyWith<$Res> {
  _$WalletEventCopyWithImpl(this._value, this._then);

  final WalletEvent _value;
  // ignore: unused_field
  final $Res Function(WalletEvent) _then;
}

/// @nodoc
abstract class $GetWalletCopyWith<$Res> {
  factory $GetWalletCopyWith(GetWallet value, $Res Function(GetWallet) then) =
      _$GetWalletCopyWithImpl<$Res>;
  $Res call({bool? isUpdate});
}

/// @nodoc
class _$GetWalletCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements $GetWalletCopyWith<$Res> {
  _$GetWalletCopyWithImpl(GetWallet _value, $Res Function(GetWallet) _then)
      : super(_value, (v) => _then(v as GetWallet));

  @override
  GetWallet get _value => super._value as GetWallet;

  @override
  $Res call({
    Object? isUpdate = freezed,
  }) {
    return _then(GetWallet(
      isUpdate: isUpdate == freezed
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$GetWallet implements GetWallet {
  const _$GetWallet({this.isUpdate});

  @override
  final bool? isUpdate;

  @override
  String toString() {
    return 'WalletEvent.getWallet(isUpdate: $isUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWallet &&
            (identical(other.isUpdate, isUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdate, isUpdate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isUpdate);

  @JsonKey(ignore: true)
  @override
  $GetWalletCopyWith<GetWallet> get copyWith =>
      _$GetWalletCopyWithImpl<GetWallet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isUpdate) getWallet,
    required TResult Function(int value) comfortablePaymentUpdate,
    required TResult Function(String amount) refillment,
  }) {
    return getWallet(isUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? isUpdate)? getWallet,
    TResult Function(int value)? comfortablePaymentUpdate,
    TResult Function(String amount)? refillment,
  }) {
    return getWallet?.call(isUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isUpdate)? getWallet,
    TResult Function(int value)? comfortablePaymentUpdate,
    TResult Function(String amount)? refillment,
    required TResult orElse(),
  }) {
    if (getWallet != null) {
      return getWallet(isUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWallet value) getWallet,
    required TResult Function(ComfortablePaymentUpdate value)
        comfortablePaymentUpdate,
    required TResult Function(Refillment value) refillment,
  }) {
    return getWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetWallet value)? getWallet,
    TResult Function(ComfortablePaymentUpdate value)? comfortablePaymentUpdate,
    TResult Function(Refillment value)? refillment,
  }) {
    return getWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWallet value)? getWallet,
    TResult Function(ComfortablePaymentUpdate value)? comfortablePaymentUpdate,
    TResult Function(Refillment value)? refillment,
    required TResult orElse(),
  }) {
    if (getWallet != null) {
      return getWallet(this);
    }
    return orElse();
  }
}

abstract class GetWallet implements WalletEvent {
  const factory GetWallet({bool? isUpdate}) = _$GetWallet;

  bool? get isUpdate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWalletCopyWith<GetWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComfortablePaymentUpdateCopyWith<$Res> {
  factory $ComfortablePaymentUpdateCopyWith(ComfortablePaymentUpdate value,
          $Res Function(ComfortablePaymentUpdate) then) =
      _$ComfortablePaymentUpdateCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$ComfortablePaymentUpdateCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res>
    implements $ComfortablePaymentUpdateCopyWith<$Res> {
  _$ComfortablePaymentUpdateCopyWithImpl(ComfortablePaymentUpdate _value,
      $Res Function(ComfortablePaymentUpdate) _then)
      : super(_value, (v) => _then(v as ComfortablePaymentUpdate));

  @override
  ComfortablePaymentUpdate get _value =>
      super._value as ComfortablePaymentUpdate;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(ComfortablePaymentUpdate(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ComfortablePaymentUpdate implements ComfortablePaymentUpdate {
  const _$ComfortablePaymentUpdate(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'WalletEvent.comfortablePaymentUpdate(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ComfortablePaymentUpdate &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $ComfortablePaymentUpdateCopyWith<ComfortablePaymentUpdate> get copyWith =>
      _$ComfortablePaymentUpdateCopyWithImpl<ComfortablePaymentUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isUpdate) getWallet,
    required TResult Function(int value) comfortablePaymentUpdate,
    required TResult Function(String amount) refillment,
  }) {
    return comfortablePaymentUpdate(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? isUpdate)? getWallet,
    TResult Function(int value)? comfortablePaymentUpdate,
    TResult Function(String amount)? refillment,
  }) {
    return comfortablePaymentUpdate?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isUpdate)? getWallet,
    TResult Function(int value)? comfortablePaymentUpdate,
    TResult Function(String amount)? refillment,
    required TResult orElse(),
  }) {
    if (comfortablePaymentUpdate != null) {
      return comfortablePaymentUpdate(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWallet value) getWallet,
    required TResult Function(ComfortablePaymentUpdate value)
        comfortablePaymentUpdate,
    required TResult Function(Refillment value) refillment,
  }) {
    return comfortablePaymentUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetWallet value)? getWallet,
    TResult Function(ComfortablePaymentUpdate value)? comfortablePaymentUpdate,
    TResult Function(Refillment value)? refillment,
  }) {
    return comfortablePaymentUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWallet value)? getWallet,
    TResult Function(ComfortablePaymentUpdate value)? comfortablePaymentUpdate,
    TResult Function(Refillment value)? refillment,
    required TResult orElse(),
  }) {
    if (comfortablePaymentUpdate != null) {
      return comfortablePaymentUpdate(this);
    }
    return orElse();
  }
}

abstract class ComfortablePaymentUpdate implements WalletEvent {
  const factory ComfortablePaymentUpdate(int value) =
      _$ComfortablePaymentUpdate;

  int get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComfortablePaymentUpdateCopyWith<ComfortablePaymentUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefillmentCopyWith<$Res> {
  factory $RefillmentCopyWith(
          Refillment value, $Res Function(Refillment) then) =
      _$RefillmentCopyWithImpl<$Res>;
  $Res call({String amount});
}

/// @nodoc
class _$RefillmentCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements $RefillmentCopyWith<$Res> {
  _$RefillmentCopyWithImpl(Refillment _value, $Res Function(Refillment) _then)
      : super(_value, (v) => _then(v as Refillment));

  @override
  Refillment get _value => super._value as Refillment;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(Refillment(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Refillment implements Refillment {
  const _$Refillment(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'WalletEvent.refillment(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Refillment &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  $RefillmentCopyWith<Refillment> get copyWith =>
      _$RefillmentCopyWithImpl<Refillment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isUpdate) getWallet,
    required TResult Function(int value) comfortablePaymentUpdate,
    required TResult Function(String amount) refillment,
  }) {
    return refillment(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? isUpdate)? getWallet,
    TResult Function(int value)? comfortablePaymentUpdate,
    TResult Function(String amount)? refillment,
  }) {
    return refillment?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isUpdate)? getWallet,
    TResult Function(int value)? comfortablePaymentUpdate,
    TResult Function(String amount)? refillment,
    required TResult orElse(),
  }) {
    if (refillment != null) {
      return refillment(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWallet value) getWallet,
    required TResult Function(ComfortablePaymentUpdate value)
        comfortablePaymentUpdate,
    required TResult Function(Refillment value) refillment,
  }) {
    return refillment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetWallet value)? getWallet,
    TResult Function(ComfortablePaymentUpdate value)? comfortablePaymentUpdate,
    TResult Function(Refillment value)? refillment,
  }) {
    return refillment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWallet value)? getWallet,
    TResult Function(ComfortablePaymentUpdate value)? comfortablePaymentUpdate,
    TResult Function(Refillment value)? refillment,
    required TResult orElse(),
  }) {
    if (refillment != null) {
      return refillment(this);
    }
    return orElse();
  }
}

abstract class Refillment implements WalletEvent {
  const factory Refillment(String amount) = _$Refillment;

  String get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefillmentCopyWith<Refillment> get copyWith =>
      throw _privateConstructorUsedError;
}
