// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pin_change_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PinChangeStateTearOff {
  const _$PinChangeStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  EndLoading endLoading() {
    return const EndLoading();
  }

  FirstCodeSaved firstCodeSaved() {
    return const FirstCodeSaved();
  }

  DifferentCodes differentCodes() {
    return const DifferentCodes();
  }

  InvalidCode invalidCode({ErrorsResponse? errors}) {
    return InvalidCode(
      errors: errors,
    );
  }

  CorrectCode correctCode() {
    return const CorrectCode();
  }

  SetNewCodeSuccess setNewCodeSuccess() {
    return const SetNewCodeSuccess();
  }

  SetNewCodeError setNewCodeError({ErrorsResponse? errors}) {
    return SetNewCodeError(
      errors: errors,
    );
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
const $PinChangeState = _$PinChangeStateTearOff();

/// @nodoc
mixin _$PinChangeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() endLoading,
    required TResult Function() firstCodeSaved,
    required TResult Function() differentCodes,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() setNewCodeSuccess,
    required TResult Function(ErrorsResponse? errors) setNewCodeError,
    required TResult Function(PinForgotResp response) pinForgotSuccess,
    required TResult Function(ErrorsResponse errors) pinForgotError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
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
    required TResult Function(FirstCodeSaved value) firstCodeSaved,
    required TResult Function(DifferentCodes value) differentCodes,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(SetNewCodeSuccess value) setNewCodeSuccess,
    required TResult Function(SetNewCodeError value) setNewCodeError,
    required TResult Function(PinForgotSuccess value) pinForgotSuccess,
    required TResult Function(PinForgotError value) pinForgotError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinChangeStateCopyWith<$Res> {
  factory $PinChangeStateCopyWith(
          PinChangeState value, $Res Function(PinChangeState) then) =
      _$PinChangeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PinChangeStateCopyWithImpl<$Res>
    implements $PinChangeStateCopyWith<$Res> {
  _$PinChangeStateCopyWithImpl(this._value, this._then);

  final PinChangeState _value;
  // ignore: unused_field
  final $Res Function(PinChangeState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$PinChangeStateCopyWithImpl<$Res>
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
    return 'PinChangeState.initial()';
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
    required TResult Function() firstCodeSaved,
    required TResult Function() differentCodes,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() setNewCodeSuccess,
    required TResult Function(ErrorsResponse? errors) setNewCodeError,
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
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
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
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
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
    required TResult Function(FirstCodeSaved value) firstCodeSaved,
    required TResult Function(DifferentCodes value) differentCodes,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(SetNewCodeSuccess value) setNewCodeSuccess,
    required TResult Function(SetNewCodeError value) setNewCodeError,
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
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
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
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
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

abstract class Initial implements PinChangeState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$PinChangeStateCopyWithImpl<$Res>
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
    return 'PinChangeState.loading()';
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
    required TResult Function() firstCodeSaved,
    required TResult Function() differentCodes,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() setNewCodeSuccess,
    required TResult Function(ErrorsResponse? errors) setNewCodeError,
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
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
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
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
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
    required TResult Function(FirstCodeSaved value) firstCodeSaved,
    required TResult Function(DifferentCodes value) differentCodes,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(SetNewCodeSuccess value) setNewCodeSuccess,
    required TResult Function(SetNewCodeError value) setNewCodeError,
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
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
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
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
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

abstract class Loading implements PinChangeState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $EndLoadingCopyWith<$Res> {
  factory $EndLoadingCopyWith(
          EndLoading value, $Res Function(EndLoading) then) =
      _$EndLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EndLoadingCopyWithImpl<$Res> extends _$PinChangeStateCopyWithImpl<$Res>
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
    return 'PinChangeState.endLoading()';
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
    required TResult Function() firstCodeSaved,
    required TResult Function() differentCodes,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() setNewCodeSuccess,
    required TResult Function(ErrorsResponse? errors) setNewCodeError,
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
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
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
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
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
    required TResult Function(FirstCodeSaved value) firstCodeSaved,
    required TResult Function(DifferentCodes value) differentCodes,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(SetNewCodeSuccess value) setNewCodeSuccess,
    required TResult Function(SetNewCodeError value) setNewCodeError,
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
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
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
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
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

abstract class EndLoading implements PinChangeState {
  const factory EndLoading() = _$EndLoading;
}

/// @nodoc
abstract class $FirstCodeSavedCopyWith<$Res> {
  factory $FirstCodeSavedCopyWith(
          FirstCodeSaved value, $Res Function(FirstCodeSaved) then) =
      _$FirstCodeSavedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirstCodeSavedCopyWithImpl<$Res>
    extends _$PinChangeStateCopyWithImpl<$Res>
    implements $FirstCodeSavedCopyWith<$Res> {
  _$FirstCodeSavedCopyWithImpl(
      FirstCodeSaved _value, $Res Function(FirstCodeSaved) _then)
      : super(_value, (v) => _then(v as FirstCodeSaved));

  @override
  FirstCodeSaved get _value => super._value as FirstCodeSaved;
}

/// @nodoc

class _$FirstCodeSaved implements FirstCodeSaved {
  const _$FirstCodeSaved();

  @override
  String toString() {
    return 'PinChangeState.firstCodeSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FirstCodeSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() endLoading,
    required TResult Function() firstCodeSaved,
    required TResult Function() differentCodes,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() setNewCodeSuccess,
    required TResult Function(ErrorsResponse? errors) setNewCodeError,
    required TResult Function(PinForgotResp response) pinForgotSuccess,
    required TResult Function(ErrorsResponse errors) pinForgotError,
  }) {
    return firstCodeSaved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
  }) {
    return firstCodeSaved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
    required TResult orElse(),
  }) {
    if (firstCodeSaved != null) {
      return firstCodeSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EndLoading value) endLoading,
    required TResult Function(FirstCodeSaved value) firstCodeSaved,
    required TResult Function(DifferentCodes value) differentCodes,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(SetNewCodeSuccess value) setNewCodeSuccess,
    required TResult Function(SetNewCodeError value) setNewCodeError,
    required TResult Function(PinForgotSuccess value) pinForgotSuccess,
    required TResult Function(PinForgotError value) pinForgotError,
  }) {
    return firstCodeSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
  }) {
    return firstCodeSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
    required TResult orElse(),
  }) {
    if (firstCodeSaved != null) {
      return firstCodeSaved(this);
    }
    return orElse();
  }
}

abstract class FirstCodeSaved implements PinChangeState {
  const factory FirstCodeSaved() = _$FirstCodeSaved;
}

/// @nodoc
abstract class $DifferentCodesCopyWith<$Res> {
  factory $DifferentCodesCopyWith(
          DifferentCodes value, $Res Function(DifferentCodes) then) =
      _$DifferentCodesCopyWithImpl<$Res>;
}

/// @nodoc
class _$DifferentCodesCopyWithImpl<$Res>
    extends _$PinChangeStateCopyWithImpl<$Res>
    implements $DifferentCodesCopyWith<$Res> {
  _$DifferentCodesCopyWithImpl(
      DifferentCodes _value, $Res Function(DifferentCodes) _then)
      : super(_value, (v) => _then(v as DifferentCodes));

  @override
  DifferentCodes get _value => super._value as DifferentCodes;
}

/// @nodoc

class _$DifferentCodes implements DifferentCodes {
  const _$DifferentCodes();

  @override
  String toString() {
    return 'PinChangeState.differentCodes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DifferentCodes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() endLoading,
    required TResult Function() firstCodeSaved,
    required TResult Function() differentCodes,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() setNewCodeSuccess,
    required TResult Function(ErrorsResponse? errors) setNewCodeError,
    required TResult Function(PinForgotResp response) pinForgotSuccess,
    required TResult Function(ErrorsResponse errors) pinForgotError,
  }) {
    return differentCodes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
  }) {
    return differentCodes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
    required TResult orElse(),
  }) {
    if (differentCodes != null) {
      return differentCodes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EndLoading value) endLoading,
    required TResult Function(FirstCodeSaved value) firstCodeSaved,
    required TResult Function(DifferentCodes value) differentCodes,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(SetNewCodeSuccess value) setNewCodeSuccess,
    required TResult Function(SetNewCodeError value) setNewCodeError,
    required TResult Function(PinForgotSuccess value) pinForgotSuccess,
    required TResult Function(PinForgotError value) pinForgotError,
  }) {
    return differentCodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
  }) {
    return differentCodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
    required TResult orElse(),
  }) {
    if (differentCodes != null) {
      return differentCodes(this);
    }
    return orElse();
  }
}

abstract class DifferentCodes implements PinChangeState {
  const factory DifferentCodes() = _$DifferentCodes;
}

/// @nodoc
abstract class $InvalidCodeCopyWith<$Res> {
  factory $InvalidCodeCopyWith(
          InvalidCode value, $Res Function(InvalidCode) then) =
      _$InvalidCodeCopyWithImpl<$Res>;
  $Res call({ErrorsResponse? errors});
}

/// @nodoc
class _$InvalidCodeCopyWithImpl<$Res> extends _$PinChangeStateCopyWithImpl<$Res>
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
    return 'PinChangeState.invalidCode(errors: $errors)';
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
    required TResult Function() firstCodeSaved,
    required TResult Function() differentCodes,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() setNewCodeSuccess,
    required TResult Function(ErrorsResponse? errors) setNewCodeError,
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
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
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
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
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
    required TResult Function(FirstCodeSaved value) firstCodeSaved,
    required TResult Function(DifferentCodes value) differentCodes,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(SetNewCodeSuccess value) setNewCodeSuccess,
    required TResult Function(SetNewCodeError value) setNewCodeError,
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
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
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
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
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

abstract class InvalidCode implements PinChangeState {
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
class _$CorrectCodeCopyWithImpl<$Res> extends _$PinChangeStateCopyWithImpl<$Res>
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
    return 'PinChangeState.correctCode()';
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
    required TResult Function() firstCodeSaved,
    required TResult Function() differentCodes,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() setNewCodeSuccess,
    required TResult Function(ErrorsResponse? errors) setNewCodeError,
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
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
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
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
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
    required TResult Function(FirstCodeSaved value) firstCodeSaved,
    required TResult Function(DifferentCodes value) differentCodes,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(SetNewCodeSuccess value) setNewCodeSuccess,
    required TResult Function(SetNewCodeError value) setNewCodeError,
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
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
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
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
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

abstract class CorrectCode implements PinChangeState {
  const factory CorrectCode() = _$CorrectCode;
}

/// @nodoc
abstract class $SetNewCodeSuccessCopyWith<$Res> {
  factory $SetNewCodeSuccessCopyWith(
          SetNewCodeSuccess value, $Res Function(SetNewCodeSuccess) then) =
      _$SetNewCodeSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetNewCodeSuccessCopyWithImpl<$Res>
    extends _$PinChangeStateCopyWithImpl<$Res>
    implements $SetNewCodeSuccessCopyWith<$Res> {
  _$SetNewCodeSuccessCopyWithImpl(
      SetNewCodeSuccess _value, $Res Function(SetNewCodeSuccess) _then)
      : super(_value, (v) => _then(v as SetNewCodeSuccess));

  @override
  SetNewCodeSuccess get _value => super._value as SetNewCodeSuccess;
}

/// @nodoc

class _$SetNewCodeSuccess implements SetNewCodeSuccess {
  const _$SetNewCodeSuccess();

  @override
  String toString() {
    return 'PinChangeState.setNewCodeSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SetNewCodeSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() endLoading,
    required TResult Function() firstCodeSaved,
    required TResult Function() differentCodes,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() setNewCodeSuccess,
    required TResult Function(ErrorsResponse? errors) setNewCodeError,
    required TResult Function(PinForgotResp response) pinForgotSuccess,
    required TResult Function(ErrorsResponse errors) pinForgotError,
  }) {
    return setNewCodeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
  }) {
    return setNewCodeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
    required TResult orElse(),
  }) {
    if (setNewCodeSuccess != null) {
      return setNewCodeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EndLoading value) endLoading,
    required TResult Function(FirstCodeSaved value) firstCodeSaved,
    required TResult Function(DifferentCodes value) differentCodes,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(SetNewCodeSuccess value) setNewCodeSuccess,
    required TResult Function(SetNewCodeError value) setNewCodeError,
    required TResult Function(PinForgotSuccess value) pinForgotSuccess,
    required TResult Function(PinForgotError value) pinForgotError,
  }) {
    return setNewCodeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
  }) {
    return setNewCodeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
    required TResult orElse(),
  }) {
    if (setNewCodeSuccess != null) {
      return setNewCodeSuccess(this);
    }
    return orElse();
  }
}

abstract class SetNewCodeSuccess implements PinChangeState {
  const factory SetNewCodeSuccess() = _$SetNewCodeSuccess;
}

/// @nodoc
abstract class $SetNewCodeErrorCopyWith<$Res> {
  factory $SetNewCodeErrorCopyWith(
          SetNewCodeError value, $Res Function(SetNewCodeError) then) =
      _$SetNewCodeErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse? errors});
}

/// @nodoc
class _$SetNewCodeErrorCopyWithImpl<$Res>
    extends _$PinChangeStateCopyWithImpl<$Res>
    implements $SetNewCodeErrorCopyWith<$Res> {
  _$SetNewCodeErrorCopyWithImpl(
      SetNewCodeError _value, $Res Function(SetNewCodeError) _then)
      : super(_value, (v) => _then(v as SetNewCodeError));

  @override
  SetNewCodeError get _value => super._value as SetNewCodeError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(SetNewCodeError(
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse?,
    ));
  }
}

/// @nodoc

class _$SetNewCodeError implements SetNewCodeError {
  const _$SetNewCodeError({this.errors});

  @override
  final ErrorsResponse? errors;

  @override
  String toString() {
    return 'PinChangeState.setNewCodeError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetNewCodeError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $SetNewCodeErrorCopyWith<SetNewCodeError> get copyWith =>
      _$SetNewCodeErrorCopyWithImpl<SetNewCodeError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() endLoading,
    required TResult Function() firstCodeSaved,
    required TResult Function() differentCodes,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() setNewCodeSuccess,
    required TResult Function(ErrorsResponse? errors) setNewCodeError,
    required TResult Function(PinForgotResp response) pinForgotSuccess,
    required TResult Function(ErrorsResponse errors) pinForgotError,
  }) {
    return setNewCodeError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
  }) {
    return setNewCodeError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? endLoading,
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
    TResult Function(PinForgotResp response)? pinForgotSuccess,
    TResult Function(ErrorsResponse errors)? pinForgotError,
    required TResult orElse(),
  }) {
    if (setNewCodeError != null) {
      return setNewCodeError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EndLoading value) endLoading,
    required TResult Function(FirstCodeSaved value) firstCodeSaved,
    required TResult Function(DifferentCodes value) differentCodes,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(SetNewCodeSuccess value) setNewCodeSuccess,
    required TResult Function(SetNewCodeError value) setNewCodeError,
    required TResult Function(PinForgotSuccess value) pinForgotSuccess,
    required TResult Function(PinForgotError value) pinForgotError,
  }) {
    return setNewCodeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
  }) {
    return setNewCodeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EndLoading value)? endLoading,
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
    TResult Function(PinForgotSuccess value)? pinForgotSuccess,
    TResult Function(PinForgotError value)? pinForgotError,
    required TResult orElse(),
  }) {
    if (setNewCodeError != null) {
      return setNewCodeError(this);
    }
    return orElse();
  }
}

abstract class SetNewCodeError implements PinChangeState {
  const factory SetNewCodeError({ErrorsResponse? errors}) = _$SetNewCodeError;

  ErrorsResponse? get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetNewCodeErrorCopyWith<SetNewCodeError> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$PinChangeStateCopyWithImpl<$Res>
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
    return 'PinChangeState.pinForgotSuccess(response: $response)';
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
    required TResult Function() firstCodeSaved,
    required TResult Function() differentCodes,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() setNewCodeSuccess,
    required TResult Function(ErrorsResponse? errors) setNewCodeError,
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
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
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
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
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
    required TResult Function(FirstCodeSaved value) firstCodeSaved,
    required TResult Function(DifferentCodes value) differentCodes,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(SetNewCodeSuccess value) setNewCodeSuccess,
    required TResult Function(SetNewCodeError value) setNewCodeError,
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
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
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
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
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

abstract class PinForgotSuccess implements PinChangeState {
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
    extends _$PinChangeStateCopyWithImpl<$Res>
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
    return 'PinChangeState.pinForgotError(errors: $errors)';
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
    required TResult Function() firstCodeSaved,
    required TResult Function() differentCodes,
    required TResult Function(ErrorsResponse? errors) invalidCode,
    required TResult Function() correctCode,
    required TResult Function() setNewCodeSuccess,
    required TResult Function(ErrorsResponse? errors) setNewCodeError,
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
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
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
    TResult Function()? firstCodeSaved,
    TResult Function()? differentCodes,
    TResult Function(ErrorsResponse? errors)? invalidCode,
    TResult Function()? correctCode,
    TResult Function()? setNewCodeSuccess,
    TResult Function(ErrorsResponse? errors)? setNewCodeError,
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
    required TResult Function(FirstCodeSaved value) firstCodeSaved,
    required TResult Function(DifferentCodes value) differentCodes,
    required TResult Function(InvalidCode value) invalidCode,
    required TResult Function(CorrectCode value) correctCode,
    required TResult Function(SetNewCodeSuccess value) setNewCodeSuccess,
    required TResult Function(SetNewCodeError value) setNewCodeError,
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
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
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
    TResult Function(FirstCodeSaved value)? firstCodeSaved,
    TResult Function(DifferentCodes value)? differentCodes,
    TResult Function(InvalidCode value)? invalidCode,
    TResult Function(CorrectCode value)? correctCode,
    TResult Function(SetNewCodeSuccess value)? setNewCodeSuccess,
    TResult Function(SetNewCodeError value)? setNewCodeError,
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

abstract class PinForgotError implements PinChangeState {
  const factory PinForgotError(ErrorsResponse errors) = _$PinForgotError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PinForgotErrorCopyWith<PinForgotError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PinChangeEventTearOff {
  const _$PinChangeEventTearOff();

  SaveFirstCode saveFirstCode(String code) {
    return SaveFirstCode(
      code,
    );
  }

  CheckCode checkCode(String code) {
    return CheckCode(
      code,
    );
  }

  SetNewCode setNewCode(String code) {
    return SetNewCode(
      code,
    );
  }

  PinForgot pinForgot() {
    return const PinForgot();
  }
}

/// @nodoc
const $PinChangeEvent = _$PinChangeEventTearOff();

/// @nodoc
mixin _$PinChangeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) saveFirstCode,
    required TResult Function(String code) checkCode,
    required TResult Function(String code) setNewCode,
    required TResult Function() pinForgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String code)? saveFirstCode,
    TResult Function(String code)? checkCode,
    TResult Function(String code)? setNewCode,
    TResult Function()? pinForgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? saveFirstCode,
    TResult Function(String code)? checkCode,
    TResult Function(String code)? setNewCode,
    TResult Function()? pinForgot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveFirstCode value) saveFirstCode,
    required TResult Function(CheckCode value) checkCode,
    required TResult Function(SetNewCode value) setNewCode,
    required TResult Function(PinForgot value) pinForgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveFirstCode value)? saveFirstCode,
    TResult Function(CheckCode value)? checkCode,
    TResult Function(SetNewCode value)? setNewCode,
    TResult Function(PinForgot value)? pinForgot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveFirstCode value)? saveFirstCode,
    TResult Function(CheckCode value)? checkCode,
    TResult Function(SetNewCode value)? setNewCode,
    TResult Function(PinForgot value)? pinForgot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinChangeEventCopyWith<$Res> {
  factory $PinChangeEventCopyWith(
          PinChangeEvent value, $Res Function(PinChangeEvent) then) =
      _$PinChangeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PinChangeEventCopyWithImpl<$Res>
    implements $PinChangeEventCopyWith<$Res> {
  _$PinChangeEventCopyWithImpl(this._value, this._then);

  final PinChangeEvent _value;
  // ignore: unused_field
  final $Res Function(PinChangeEvent) _then;
}

/// @nodoc
abstract class $SaveFirstCodeCopyWith<$Res> {
  factory $SaveFirstCodeCopyWith(
          SaveFirstCode value, $Res Function(SaveFirstCode) then) =
      _$SaveFirstCodeCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class _$SaveFirstCodeCopyWithImpl<$Res>
    extends _$PinChangeEventCopyWithImpl<$Res>
    implements $SaveFirstCodeCopyWith<$Res> {
  _$SaveFirstCodeCopyWithImpl(
      SaveFirstCode _value, $Res Function(SaveFirstCode) _then)
      : super(_value, (v) => _then(v as SaveFirstCode));

  @override
  SaveFirstCode get _value => super._value as SaveFirstCode;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(SaveFirstCode(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveFirstCode implements SaveFirstCode {
  const _$SaveFirstCode(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'PinChangeEvent.saveFirstCode(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveFirstCode &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  $SaveFirstCodeCopyWith<SaveFirstCode> get copyWith =>
      _$SaveFirstCodeCopyWithImpl<SaveFirstCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) saveFirstCode,
    required TResult Function(String code) checkCode,
    required TResult Function(String code) setNewCode,
    required TResult Function() pinForgot,
  }) {
    return saveFirstCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String code)? saveFirstCode,
    TResult Function(String code)? checkCode,
    TResult Function(String code)? setNewCode,
    TResult Function()? pinForgot,
  }) {
    return saveFirstCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? saveFirstCode,
    TResult Function(String code)? checkCode,
    TResult Function(String code)? setNewCode,
    TResult Function()? pinForgot,
    required TResult orElse(),
  }) {
    if (saveFirstCode != null) {
      return saveFirstCode(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveFirstCode value) saveFirstCode,
    required TResult Function(CheckCode value) checkCode,
    required TResult Function(SetNewCode value) setNewCode,
    required TResult Function(PinForgot value) pinForgot,
  }) {
    return saveFirstCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveFirstCode value)? saveFirstCode,
    TResult Function(CheckCode value)? checkCode,
    TResult Function(SetNewCode value)? setNewCode,
    TResult Function(PinForgot value)? pinForgot,
  }) {
    return saveFirstCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveFirstCode value)? saveFirstCode,
    TResult Function(CheckCode value)? checkCode,
    TResult Function(SetNewCode value)? setNewCode,
    TResult Function(PinForgot value)? pinForgot,
    required TResult orElse(),
  }) {
    if (saveFirstCode != null) {
      return saveFirstCode(this);
    }
    return orElse();
  }
}

abstract class SaveFirstCode implements PinChangeEvent {
  const factory SaveFirstCode(String code) = _$SaveFirstCode;

  String get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveFirstCodeCopyWith<SaveFirstCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckCodeCopyWith<$Res> {
  factory $CheckCodeCopyWith(CheckCode value, $Res Function(CheckCode) then) =
      _$CheckCodeCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class _$CheckCodeCopyWithImpl<$Res> extends _$PinChangeEventCopyWithImpl<$Res>
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
    return 'PinChangeEvent.checkCode(code: $code)';
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
    required TResult Function(String code) saveFirstCode,
    required TResult Function(String code) checkCode,
    required TResult Function(String code) setNewCode,
    required TResult Function() pinForgot,
  }) {
    return checkCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String code)? saveFirstCode,
    TResult Function(String code)? checkCode,
    TResult Function(String code)? setNewCode,
    TResult Function()? pinForgot,
  }) {
    return checkCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? saveFirstCode,
    TResult Function(String code)? checkCode,
    TResult Function(String code)? setNewCode,
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
    required TResult Function(SaveFirstCode value) saveFirstCode,
    required TResult Function(CheckCode value) checkCode,
    required TResult Function(SetNewCode value) setNewCode,
    required TResult Function(PinForgot value) pinForgot,
  }) {
    return checkCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveFirstCode value)? saveFirstCode,
    TResult Function(CheckCode value)? checkCode,
    TResult Function(SetNewCode value)? setNewCode,
    TResult Function(PinForgot value)? pinForgot,
  }) {
    return checkCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveFirstCode value)? saveFirstCode,
    TResult Function(CheckCode value)? checkCode,
    TResult Function(SetNewCode value)? setNewCode,
    TResult Function(PinForgot value)? pinForgot,
    required TResult orElse(),
  }) {
    if (checkCode != null) {
      return checkCode(this);
    }
    return orElse();
  }
}

abstract class CheckCode implements PinChangeEvent {
  const factory CheckCode(String code) = _$CheckCode;

  String get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckCodeCopyWith<CheckCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetNewCodeCopyWith<$Res> {
  factory $SetNewCodeCopyWith(
          SetNewCode value, $Res Function(SetNewCode) then) =
      _$SetNewCodeCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class _$SetNewCodeCopyWithImpl<$Res> extends _$PinChangeEventCopyWithImpl<$Res>
    implements $SetNewCodeCopyWith<$Res> {
  _$SetNewCodeCopyWithImpl(SetNewCode _value, $Res Function(SetNewCode) _then)
      : super(_value, (v) => _then(v as SetNewCode));

  @override
  SetNewCode get _value => super._value as SetNewCode;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(SetNewCode(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetNewCode implements SetNewCode {
  const _$SetNewCode(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'PinChangeEvent.setNewCode(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetNewCode &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  $SetNewCodeCopyWith<SetNewCode> get copyWith =>
      _$SetNewCodeCopyWithImpl<SetNewCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) saveFirstCode,
    required TResult Function(String code) checkCode,
    required TResult Function(String code) setNewCode,
    required TResult Function() pinForgot,
  }) {
    return setNewCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String code)? saveFirstCode,
    TResult Function(String code)? checkCode,
    TResult Function(String code)? setNewCode,
    TResult Function()? pinForgot,
  }) {
    return setNewCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? saveFirstCode,
    TResult Function(String code)? checkCode,
    TResult Function(String code)? setNewCode,
    TResult Function()? pinForgot,
    required TResult orElse(),
  }) {
    if (setNewCode != null) {
      return setNewCode(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveFirstCode value) saveFirstCode,
    required TResult Function(CheckCode value) checkCode,
    required TResult Function(SetNewCode value) setNewCode,
    required TResult Function(PinForgot value) pinForgot,
  }) {
    return setNewCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveFirstCode value)? saveFirstCode,
    TResult Function(CheckCode value)? checkCode,
    TResult Function(SetNewCode value)? setNewCode,
    TResult Function(PinForgot value)? pinForgot,
  }) {
    return setNewCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveFirstCode value)? saveFirstCode,
    TResult Function(CheckCode value)? checkCode,
    TResult Function(SetNewCode value)? setNewCode,
    TResult Function(PinForgot value)? pinForgot,
    required TResult orElse(),
  }) {
    if (setNewCode != null) {
      return setNewCode(this);
    }
    return orElse();
  }
}

abstract class SetNewCode implements PinChangeEvent {
  const factory SetNewCode(String code) = _$SetNewCode;

  String get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetNewCodeCopyWith<SetNewCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinForgotCopyWith<$Res> {
  factory $PinForgotCopyWith(PinForgot value, $Res Function(PinForgot) then) =
      _$PinForgotCopyWithImpl<$Res>;
}

/// @nodoc
class _$PinForgotCopyWithImpl<$Res> extends _$PinChangeEventCopyWithImpl<$Res>
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
    return 'PinChangeEvent.pinForgot()';
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
    required TResult Function(String code) saveFirstCode,
    required TResult Function(String code) checkCode,
    required TResult Function(String code) setNewCode,
    required TResult Function() pinForgot,
  }) {
    return pinForgot();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String code)? saveFirstCode,
    TResult Function(String code)? checkCode,
    TResult Function(String code)? setNewCode,
    TResult Function()? pinForgot,
  }) {
    return pinForgot?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? saveFirstCode,
    TResult Function(String code)? checkCode,
    TResult Function(String code)? setNewCode,
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
    required TResult Function(SaveFirstCode value) saveFirstCode,
    required TResult Function(CheckCode value) checkCode,
    required TResult Function(SetNewCode value) setNewCode,
    required TResult Function(PinForgot value) pinForgot,
  }) {
    return pinForgot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveFirstCode value)? saveFirstCode,
    TResult Function(CheckCode value)? checkCode,
    TResult Function(SetNewCode value)? setNewCode,
    TResult Function(PinForgot value)? pinForgot,
  }) {
    return pinForgot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveFirstCode value)? saveFirstCode,
    TResult Function(CheckCode value)? checkCode,
    TResult Function(SetNewCode value)? setNewCode,
    TResult Function(PinForgot value)? pinForgot,
    required TResult orElse(),
  }) {
    if (pinForgot != null) {
      return pinForgot(this);
    }
    return orElse();
  }
}

abstract class PinForgot implements PinChangeEvent {
  const factory PinForgot() = _$PinForgot;
}
