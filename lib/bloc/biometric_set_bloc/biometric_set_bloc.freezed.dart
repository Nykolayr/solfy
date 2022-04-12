// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'biometric_set_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BiometricSetStateTearOff {
  const _$BiometricSetStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  EndLoading endLoading() {
    return const EndLoading();
  }

  InvalidCode invalidCode({ErrorsResponse? errors}) {
    return InvalidCode(
      errors: errors,
    );
  }

  CorrectCode correctCode() {
    return const CorrectCode();
  }

  BiometricSetSuccess biometricSetSuccess() {
    return const BiometricSetSuccess();
  }

  BiometricSetError biometricSetError() {
    return const BiometricSetError();
  }

  PinForgotSuccess pinForgotSuccess(PinForgotResp response) {
    return PinForgotSuccess(
      response,
    );
  }

  PinForgotError pinForgotError(ErrorsResponse errors) {
    return PinForgotError(
      errors,
    );
  }
}

/// @nodoc
const $BiometricSetState = _$BiometricSetStateTearOff();

/// @nodoc
mixin _$BiometricSetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() endLoading,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() biometricSetSuccess,
    required TResult Function() biometricSetError,
    required TResult Function(PinForgotResp response) pinForgotSuccess,
    required TResult Function(ErrorsResponse errors) pinForgotError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EndLoading value) endLoading,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(BiometricSetSuccess value) biometricSetSuccess,
    required TResult Function(BiometricSetError value) biometricSetError,
    required TResult Function(PinForgotSuccess value) pinForgotSuccess,
    required TResult Function(PinForgotError value) pinForgotError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiometricSetStateCopyWith<$Res> {
  factory $BiometricSetStateCopyWith(
          BiometricSetState value, $Res Function(BiometricSetState) then) =
      _$BiometricSetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BiometricSetStateCopyWithImpl<$Res>
    implements $BiometricSetStateCopyWith<$Res> {
  _$BiometricSetStateCopyWithImpl(this._value, this._then);

  final BiometricSetState _value;
  // ignore: unused_field
  final $Res Function(BiometricSetState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$BiometricSetStateCopyWithImpl<$Res>
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
    return 'BiometricSetState.initial()';
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
    required TResult Function() endLoading,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() biometricSetSuccess,
    required TResult Function() biometricSetError,
    required TResult Function(PinForgotResp response) pinForgotSuccess,
    required TResult Function(ErrorsResponse errors) pinForgotError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
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
    required TResult Function(EndLoading value) endLoading,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(BiometricSetSuccess value) biometricSetSuccess,
    required TResult Function(BiometricSetError value) biometricSetError,
    required TResult Function(PinForgotSuccess value) pinForgotSuccess,
    required TResult Function(PinForgotError value) pinForgotError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BiometricSetState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$BiometricSetStateCopyWithImpl<$Res>
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
    return 'BiometricSetState.loading()';
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
    required TResult Function() endLoading,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() biometricSetSuccess,
    required TResult Function() biometricSetError,
    required TResult Function(PinForgotResp response) pinForgotSuccess,
    required TResult Function(ErrorsResponse errors) pinForgotError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
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
    required TResult Function(EndLoading value) endLoading,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(BiometricSetSuccess value) biometricSetSuccess,
    required TResult Function(BiometricSetError value) biometricSetError,
    required TResult Function(PinForgotSuccess value) pinForgotSuccess,
    required TResult Function(PinForgotError value) pinForgotError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BiometricSetState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $EndLoadingCopyWith<$Res> {
  factory $EndLoadingCopyWith(
          EndLoading value, $Res Function(EndLoading) then) =
      _$EndLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EndLoadingCopyWithImpl<$Res>
    extends _$BiometricSetStateCopyWithImpl<$Res>
    implements $EndLoadingCopyWith<$Res> {
  _$EndLoadingCopyWithImpl(EndLoading _value, $Res Function(EndLoading) _then)
      : super(_value, (v) => _then(v as EndLoading));

  @override
  EndLoading get _value => super._value as EndLoading;
}

/// @nodoc

class _$EndLoading implements EndLoading {
  const _$EndLoading();

  @override
  String toString() {
    return 'BiometricSetState.endLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EndLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() endLoading,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() biometricSetSuccess,
    required TResult Function() biometricSetError,
    required TResult Function(PinForgotResp response) pinForgotSuccess,
    required TResult Function(ErrorsResponse errors) pinForgotError,
  }) {
    return endLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
  }) {
    return endLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
    required TResult orElse(),
  }) {
    if (endLoading != null) {
      return endLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EndLoading value) endLoading,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(BiometricSetSuccess value) biometricSetSuccess,
    required TResult Function(BiometricSetError value) biometricSetError,
    required TResult Function(PinForgotSuccess value) pinForgotSuccess,
    required TResult Function(PinForgotError value) pinForgotError,
  }) {
    return endLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
  }) {
    return endLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
    required TResult orElse(),
  }) {
    if (endLoading != null) {
      return endLoading(this);
    }
    return orElse();
  }
}

abstract class EndLoading implements BiometricSetState {
  const factory EndLoading() = _$EndLoading;
}

/// @nodoc
abstract class $InvalidCodeCopyWith<$Res> {
  factory $InvalidCodeCopyWith(
          InvalidCode value, $Res Function(InvalidCode) then) =
      _$InvalidCodeCopyWithImpl<$Res>;
  $Res call({ErrorsResponse? errors});
}

/// @nodoc
class _$InvalidCodeCopyWithImpl<$Res>
    extends _$BiometricSetStateCopyWithImpl<$Res>
    implements $InvalidCodeCopyWith<$Res> {
  _$InvalidCodeCopyWithImpl(
      InvalidCode _value, $Res Function(InvalidCode) _then)
      : super(_value, (v) => _then(v as InvalidCode));

  @override
  InvalidCode get _value => super._value as InvalidCode;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(InvalidCode(
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse?,
    ));
  }
}

/// @nodoc

class _$InvalidCode implements InvalidCode {
  const _$InvalidCode({this.errors});

  @override
  final ErrorsResponse? errors;

  @override
  String toString() {
    return 'BiometricSetState.invalidCode(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidCode &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $InvalidCodeCopyWith<InvalidCode> get copyWith =>
      _$InvalidCodeCopyWithImpl<InvalidCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() endLoading,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() biometricSetSuccess,
    required TResult Function() biometricSetError,
    required TResult Function(PinForgotResp response) pinForgotSuccess,
    required TResult Function(ErrorsResponse errors) pinForgotError,
  }) {
    return invalidCode(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
  }) {
    return invalidCode?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
    required TResult orElse(),
  }) {
    if (invalidCode != null) {
      return invalidCode(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EndLoading value) endLoading,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(BiometricSetSuccess value) biometricSetSuccess,
    required TResult Function(BiometricSetError value) biometricSetError,
    required TResult Function(PinForgotSuccess value) pinForgotSuccess,
    required TResult Function(PinForgotError value) pinForgotError,
  }) {
    return invalidCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
  }) {
    return invalidCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
    required TResult orElse(),
  }) {
    if (invalidCode != null) {
      return invalidCode(this);
    }
    return orElse();
  }
}

abstract class InvalidCode implements BiometricSetState {
  const factory InvalidCode({ErrorsResponse? errors}) = _$InvalidCode;

  ErrorsResponse? get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidCodeCopyWith<InvalidCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorrectCodeCopyWith<$Res> {
  factory $CorrectCodeCopyWith(
          CorrectCode value, $Res Function(CorrectCode) then) =
      _$CorrectCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$CorrectCodeCopyWithImpl<$Res>
    extends _$BiometricSetStateCopyWithImpl<$Res>
    implements $CorrectCodeCopyWith<$Res> {
  _$CorrectCodeCopyWithImpl(
      CorrectCode _value, $Res Function(CorrectCode) _then)
      : super(_value, (v) => _then(v as CorrectCode));

  @override
  CorrectCode get _value => super._value as CorrectCode;
}

/// @nodoc

class _$CorrectCode implements CorrectCode {
  const _$CorrectCode();

  @override
  String toString() {
    return 'BiometricSetState.correctCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CorrectCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() endLoading,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() biometricSetSuccess,
    required TResult Function() biometricSetError,
    required TResult Function(PinForgotResp response) pinForgotSuccess,
    required TResult Function(ErrorsResponse errors) pinForgotError,
  }) {
    return correctCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
  }) {
    return correctCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
    required TResult orElse(),
  }) {
    if (correctCode != null) {
      return correctCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EndLoading value) endLoading,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(BiometricSetSuccess value) biometricSetSuccess,
    required TResult Function(BiometricSetError value) biometricSetError,
    required TResult Function(PinForgotSuccess value) pinForgotSuccess,
    required TResult Function(PinForgotError value) pinForgotError,
  }) {
    return correctCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
  }) {
    return correctCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
    required TResult orElse(),
  }) {
    if (correctCode != null) {
      return correctCode(this);
    }
    return orElse();
  }
}

abstract class CorrectCode implements BiometricSetState {
  const factory CorrectCode() = _$CorrectCode;
}

/// @nodoc
abstract class $BiometricSetSuccessCopyWith<$Res> {
  factory $BiometricSetSuccessCopyWith(
          BiometricSetSuccess value, $Res Function(BiometricSetSuccess) then) =
      _$BiometricSetSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$BiometricSetSuccessCopyWithImpl<$Res>
    extends _$BiometricSetStateCopyWithImpl<$Res>
    implements $BiometricSetSuccessCopyWith<$Res> {
  _$BiometricSetSuccessCopyWithImpl(
      BiometricSetSuccess _value, $Res Function(BiometricSetSuccess) _then)
      : super(_value, (v) => _then(v as BiometricSetSuccess));

  @override
  BiometricSetSuccess get _value => super._value as BiometricSetSuccess;
}

/// @nodoc

class _$BiometricSetSuccess implements BiometricSetSuccess {
  const _$BiometricSetSuccess();

  @override
  String toString() {
    return 'BiometricSetState.biometricSetSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BiometricSetSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() endLoading,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() biometricSetSuccess,
    required TResult Function() biometricSetError,
    required TResult Function(PinForgotResp response) pinForgotSuccess,
    required TResult Function(ErrorsResponse errors) pinForgotError,
  }) {
    return biometricSetSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
  }) {
    return biometricSetSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
    required TResult orElse(),
  }) {
    if (biometricSetSuccess != null) {
      return biometricSetSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EndLoading value) endLoading,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(BiometricSetSuccess value) biometricSetSuccess,
    required TResult Function(BiometricSetError value) biometricSetError,
    required TResult Function(PinForgotSuccess value) pinForgotSuccess,
    required TResult Function(PinForgotError value) pinForgotError,
  }) {
    return biometricSetSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
  }) {
    return biometricSetSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
    required TResult orElse(),
  }) {
    if (biometricSetSuccess != null) {
      return biometricSetSuccess(this);
    }
    return orElse();
  }
}

abstract class BiometricSetSuccess implements BiometricSetState {
  const factory BiometricSetSuccess() = _$BiometricSetSuccess;
}

/// @nodoc
abstract class $BiometricSetErrorCopyWith<$Res> {
  factory $BiometricSetErrorCopyWith(
          BiometricSetError value, $Res Function(BiometricSetError) then) =
      _$BiometricSetErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$BiometricSetErrorCopyWithImpl<$Res>
    extends _$BiometricSetStateCopyWithImpl<$Res>
    implements $BiometricSetErrorCopyWith<$Res> {
  _$BiometricSetErrorCopyWithImpl(
      BiometricSetError _value, $Res Function(BiometricSetError) _then)
      : super(_value, (v) => _then(v as BiometricSetError));

  @override
  BiometricSetError get _value => super._value as BiometricSetError;
}

/// @nodoc

class _$BiometricSetError implements BiometricSetError {
  const _$BiometricSetError();

  @override
  String toString() {
    return 'BiometricSetState.biometricSetError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BiometricSetError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() endLoading,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() biometricSetSuccess,
    required TResult Function() biometricSetError,
    required TResult Function(PinForgotResp response) pinForgotSuccess,
    required TResult Function(ErrorsResponse errors) pinForgotError,
  }) {
    return biometricSetError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
  }) {
    return biometricSetError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
    required TResult orElse(),
  }) {
    if (biometricSetError != null) {
      return biometricSetError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EndLoading value) endLoading,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(BiometricSetSuccess value) biometricSetSuccess,
    required TResult Function(BiometricSetError value) biometricSetError,
    required TResult Function(PinForgotSuccess value) pinForgotSuccess,
    required TResult Function(PinForgotError value) pinForgotError,
  }) {
    return biometricSetError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
  }) {
    return biometricSetError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
    required TResult orElse(),
  }) {
    if (biometricSetError != null) {
      return biometricSetError(this);
    }
    return orElse();
  }
}

abstract class BiometricSetError implements BiometricSetState {
  const factory BiometricSetError() = _$BiometricSetError;
}

/// @nodoc
abstract class $PinForgotSuccessCopyWith<$Res> {
  factory $PinForgotSuccessCopyWith(
          PinForgotSuccess value, $Res Function(PinForgotSuccess) then) =
      _$PinForgotSuccessCopyWithImpl<$Res>;
  $Res call({PinForgotResp response});
}

/// @nodoc
class _$PinForgotSuccessCopyWithImpl<$Res>
    extends _$BiometricSetStateCopyWithImpl<$Res>
    implements $PinForgotSuccessCopyWith<$Res> {
  _$PinForgotSuccessCopyWithImpl(
      PinForgotSuccess _value, $Res Function(PinForgotSuccess) _then)
      : super(_value, (v) => _then(v as PinForgotSuccess));

  @override
  PinForgotSuccess get _value => super._value as PinForgotSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(PinForgotSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as PinForgotResp,
    ));
  }
}

/// @nodoc

class _$PinForgotSuccess implements PinForgotSuccess {
  const _$PinForgotSuccess(this.response);

  @override
  final PinForgotResp response;

  @override
  String toString() {
    return 'BiometricSetState.pinForgotSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PinForgotSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $PinForgotSuccessCopyWith<PinForgotSuccess> get copyWith =>
      _$PinForgotSuccessCopyWithImpl<PinForgotSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() endLoading,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() biometricSetSuccess,
    required TResult Function() biometricSetError,
    required TResult Function(PinForgotResp response) pinForgotSuccess,
    required TResult Function(ErrorsResponse errors) pinForgotError,
  }) {
    return pinForgotSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
  }) {
    return pinForgotSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
    required TResult orElse(),
  }) {
    if (pinForgotSuccess != null) {
      return pinForgotSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EndLoading value) endLoading,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(BiometricSetSuccess value) biometricSetSuccess,
    required TResult Function(BiometricSetError value) biometricSetError,
    required TResult Function(PinForgotSuccess value) pinForgotSuccess,
    required TResult Function(PinForgotError value) pinForgotError,
  }) {
    return pinForgotSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
  }) {
    return pinForgotSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
    required TResult orElse(),
  }) {
    if (pinForgotSuccess != null) {
      return pinForgotSuccess(this);
    }
    return orElse();
  }
}

abstract class PinForgotSuccess implements BiometricSetState {
  const factory PinForgotSuccess(PinForgotResp response) = _$PinForgotSuccess;

  PinForgotResp get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PinForgotSuccessCopyWith<PinForgotSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinForgotErrorCopyWith<$Res> {
  factory $PinForgotErrorCopyWith(
          PinForgotError value, $Res Function(PinForgotError) then) =
      _$PinForgotErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$PinForgotErrorCopyWithImpl<$Res>
    extends _$BiometricSetStateCopyWithImpl<$Res>
    implements $PinForgotErrorCopyWith<$Res> {
  _$PinForgotErrorCopyWithImpl(
      PinForgotError _value, $Res Function(PinForgotError) _then)
      : super(_value, (v) => _then(v as PinForgotError));

  @override
  PinForgotError get _value => super._value as PinForgotError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(PinForgotError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$PinForgotError implements PinForgotError {
  const _$PinForgotError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'BiometricSetState.pinForgotError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PinForgotError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $PinForgotErrorCopyWith<PinForgotError> get copyWith =>
      _$PinForgotErrorCopyWithImpl<PinForgotError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() endLoading,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() biometricSetSuccess,
    required TResult Function() biometricSetError,
    required TResult Function(PinForgotResp response) pinForgotSuccess,
    required TResult Function(ErrorsResponse errors) pinForgotError,
  }) {
    return pinForgotError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
  }) {
    return pinForgotError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? biometricSetSuccess,
    TResult Function()? biometricSetError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
    required TResult orElse(),
  }) {
    if (pinForgotError != null) {
      return pinForgotError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EndLoading value) endLoading,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(BiometricSetSuccess value) biometricSetSuccess,
    required TResult Function(BiometricSetError value) biometricSetError,
    required TResult Function(PinForgotSuccess value) pinForgotSuccess,
    required TResult Function(PinForgotError value) pinForgotError,
  }) {
    return pinForgotError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
  }) {
    return pinForgotError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(BiometricSetSuccess value)? biometricSetSuccess,
    TResult Function(BiometricSetError value)? biometricSetError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
    required TResult orElse(),
  }) {
    if (pinForgotError != null) {
      return pinForgotError(this);
    }
    return orElse();
  }
}

abstract class PinForgotError implements BiometricSetState {
  const factory PinForgotError(ErrorsResponse errors) = _$PinForgotError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PinForgotErrorCopyWith<PinForgotError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BiometricSetEventTearOff {
  const _$BiometricSetEventTearOff();

  CheckCode checkCode(String code) {
    return CheckCode(
      code,
    );
  }

  CheckBiometric checkBiometric() {
    return const CheckBiometric();
  }

  PinForgot pinForgot() {
    return const PinForgot();
  }
}

/// @nodoc
const $BiometricSetEvent = _$BiometricSetEventTearOff();

/// @nodoc
mixin _$BiometricSetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) checkCode,
    required TResult Function() checkBiometric,
    required TResult Function() pinForgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String code)? checkCode,
    TResult Function()? checkBiometric,
    TResult Function()? pinForgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? checkCode,
    TResult Function()? checkBiometric,
    TResult Function()? pinForgot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckCode value) checkCode,
    required TResult Function(CheckBiometric value) checkBiometric,
    required TResult Function(PinForgot value) pinForgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckCode value)? checkCode,
    TResult Function(CheckBiometric value)? checkBiometric,
    TResult Function(PinForgot value)? pinForgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckCode value)? checkCode,
    TResult Function(CheckBiometric value)? checkBiometric,
    TResult Function(PinForgot value)? pinForgot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiometricSetEventCopyWith<$Res> {
  factory $BiometricSetEventCopyWith(
          BiometricSetEvent value, $Res Function(BiometricSetEvent) then) =
      _$BiometricSetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BiometricSetEventCopyWithImpl<$Res>
    implements $BiometricSetEventCopyWith<$Res> {
  _$BiometricSetEventCopyWithImpl(this._value, this._then);

  final BiometricSetEvent _value;
  // ignore: unused_field
  final $Res Function(BiometricSetEvent) _then;
}

/// @nodoc
abstract class $CheckCodeCopyWith<$Res> {
  factory $CheckCodeCopyWith(CheckCode value, $Res Function(CheckCode) then) =
      _$CheckCodeCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class _$CheckCodeCopyWithImpl<$Res>
    extends _$BiometricSetEventCopyWithImpl<$Res>
    implements $CheckCodeCopyWith<$Res> {
  _$CheckCodeCopyWithImpl(CheckCode _value, $Res Function(CheckCode) _then)
      : super(_value, (v) => _then(v as CheckCode));

  @override
  CheckCode get _value => super._value as CheckCode;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(CheckCode(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckCode implements CheckCode {
  const _$CheckCode(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'BiometricSetEvent.checkCode(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CheckCode &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  $CheckCodeCopyWith<CheckCode> get copyWith =>
      _$CheckCodeCopyWithImpl<CheckCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) checkCode,
    required TResult Function() checkBiometric,
    required TResult Function() pinForgot,
  }) {
    return checkCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String code)? checkCode,
    TResult Function()? checkBiometric,
    TResult Function()? pinForgot,
  }) {
    return checkCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? checkCode,
    TResult Function()? checkBiometric,
    TResult Function()? pinForgot,
    required TResult orElse(),
  }) {
    if (checkCode != null) {
      return checkCode(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckCode value) checkCode,
    required TResult Function(CheckBiometric value) checkBiometric,
    required TResult Function(PinForgot value) pinForgot,
  }) {
    return checkCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckCode value)? checkCode,
    TResult Function(CheckBiometric value)? checkBiometric,
    TResult Function(PinForgot value)? pinForgot,
  }) {
    return checkCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckCode value)? checkCode,
    TResult Function(CheckBiometric value)? checkBiometric,
    TResult Function(PinForgot value)? pinForgot,
    required TResult orElse(),
  }) {
    if (checkCode != null) {
      return checkCode(this);
    }
    return orElse();
  }
}

abstract class CheckCode implements BiometricSetEvent {
  const factory CheckCode(String code) = _$CheckCode;

  String get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckCodeCopyWith<CheckCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckBiometricCopyWith<$Res> {
  factory $CheckBiometricCopyWith(
          CheckBiometric value, $Res Function(CheckBiometric) then) =
      _$CheckBiometricCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckBiometricCopyWithImpl<$Res>
    extends _$BiometricSetEventCopyWithImpl<$Res>
    implements $CheckBiometricCopyWith<$Res> {
  _$CheckBiometricCopyWithImpl(
      CheckBiometric _value, $Res Function(CheckBiometric) _then)
      : super(_value, (v) => _then(v as CheckBiometric));

  @override
  CheckBiometric get _value => super._value as CheckBiometric;
}

/// @nodoc

class _$CheckBiometric implements CheckBiometric {
  const _$CheckBiometric();

  @override
  String toString() {
    return 'BiometricSetEvent.checkBiometric()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckBiometric);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) checkCode,
    required TResult Function() checkBiometric,
    required TResult Function() pinForgot,
  }) {
    return checkBiometric();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String code)? checkCode,
    TResult Function()? checkBiometric,
    TResult Function()? pinForgot,
  }) {
    return checkBiometric?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? checkCode,
    TResult Function()? checkBiometric,
    TResult Function()? pinForgot,
    required TResult orElse(),
  }) {
    if (checkBiometric != null) {
      return checkBiometric();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckCode value) checkCode,
    required TResult Function(CheckBiometric value) checkBiometric,
    required TResult Function(PinForgot value) pinForgot,
  }) {
    return checkBiometric(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckCode value)? checkCode,
    TResult Function(CheckBiometric value)? checkBiometric,
    TResult Function(PinForgot value)? pinForgot,
  }) {
    return checkBiometric?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckCode value)? checkCode,
    TResult Function(CheckBiometric value)? checkBiometric,
    TResult Function(PinForgot value)? pinForgot,
    required TResult orElse(),
  }) {
    if (checkBiometric != null) {
      return checkBiometric(this);
    }
    return orElse();
  }
}

abstract class CheckBiometric implements BiometricSetEvent {
  const factory CheckBiometric() = _$CheckBiometric;
}

/// @nodoc
abstract class $PinForgotCopyWith<$Res> {
  factory $PinForgotCopyWith(PinForgot value, $Res Function(PinForgot) then) =
      _$PinForgotCopyWithImpl<$Res>;
}

/// @nodoc
class _$PinForgotCopyWithImpl<$Res>
    extends _$BiometricSetEventCopyWithImpl<$Res>
    implements $PinForgotCopyWith<$Res> {
  _$PinForgotCopyWithImpl(PinForgot _value, $Res Function(PinForgot) _then)
      : super(_value, (v) => _then(v as PinForgot));

  @override
  PinForgot get _value => super._value as PinForgot;
}

/// @nodoc

class _$PinForgot implements PinForgot {
  const _$PinForgot();

  @override
  String toString() {
    return 'BiometricSetEvent.pinForgot()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PinForgot);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) checkCode,
    required TResult Function() checkBiometric,
    required TResult Function() pinForgot,
  }) {
    return pinForgot();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String code)? checkCode,
    TResult Function()? checkBiometric,
    TResult Function()? pinForgot,
  }) {
    return pinForgot?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? checkCode,
    TResult Function()? checkBiometric,
    TResult Function()? pinForgot,
    required TResult orElse(),
  }) {
    if (pinForgot != null) {
      return pinForgot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckCode value) checkCode,
    required TResult Function(CheckBiometric value) checkBiometric,
    required TResult Function(PinForgot value) pinForgot,
  }) {
    return pinForgot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckCode value)? checkCode,
    TResult Function(CheckBiometric value)? checkBiometric,
    TResult Function(PinForgot value)? pinForgot,
  }) {
    return pinForgot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckCode value)? checkCode,
    TResult Function(CheckBiometric value)? checkBiometric,
    TResult Function(PinForgot value)? pinForgot,
    required TResult orElse(),
  }) {
    if (pinForgot != null) {
      return pinForgot(this);
    }
    return orElse();
  }
}

abstract class PinForgot implements BiometricSetEvent {
  const factory PinForgot() = _$PinForgot;
}
