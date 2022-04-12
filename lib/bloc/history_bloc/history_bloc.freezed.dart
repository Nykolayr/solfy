// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryStateTearOff {
  const _$HistoryStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  GetHistorySuccess getHistorySuccess(OperationsResp response) {
    return GetHistorySuccess(
      response,
    );
  }

  GetHistoryError getHistoryError(ErrorsResponse errors) {
    return GetHistoryError(
      errors,
    );
  }
}

/// @nodoc
const $HistoryState = _$HistoryStateTearOff();

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OperationsResp response) getHistorySuccess,
    required TResult Function(ErrorsResponse errors) getHistoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OperationsResp response)? getHistorySuccess,
    TResult Function(ErrorsResponse errors)? getHistoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OperationsResp response)? getHistorySuccess,
    TResult Function(ErrorsResponse errors)? getHistoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetHistorySuccess value) getHistorySuccess,
    required TResult Function(GetHistoryError value) getHistoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetHistorySuccess value)? getHistorySuccess,
    TResult Function(GetHistoryError value)? getHistoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetHistorySuccess value)? getHistorySuccess,
    TResult Function(GetHistoryError value)? getHistoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$HistoryStateCopyWithImpl<$Res>
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
    return 'HistoryState.initial()';
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
    required TResult Function(OperationsResp response) getHistorySuccess,
    required TResult Function(ErrorsResponse errors) getHistoryError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OperationsResp response)? getHistorySuccess,
    TResult Function(ErrorsResponse errors)? getHistoryError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OperationsResp response)? getHistorySuccess,
    TResult Function(ErrorsResponse errors)? getHistoryError,
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
    required TResult Function(GetHistorySuccess value) getHistorySuccess,
    required TResult Function(GetHistoryError value) getHistoryError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetHistorySuccess value)? getHistorySuccess,
    TResult Function(GetHistoryError value)? getHistoryError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetHistorySuccess value)? getHistorySuccess,
    TResult Function(GetHistoryError value)? getHistoryError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements HistoryState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$HistoryStateCopyWithImpl<$Res>
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
    return 'HistoryState.loading()';
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
    required TResult Function(OperationsResp response) getHistorySuccess,
    required TResult Function(ErrorsResponse errors) getHistoryError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OperationsResp response)? getHistorySuccess,
    TResult Function(ErrorsResponse errors)? getHistoryError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OperationsResp response)? getHistorySuccess,
    TResult Function(ErrorsResponse errors)? getHistoryError,
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
    required TResult Function(GetHistorySuccess value) getHistorySuccess,
    required TResult Function(GetHistoryError value) getHistoryError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetHistorySuccess value)? getHistorySuccess,
    TResult Function(GetHistoryError value)? getHistoryError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetHistorySuccess value)? getHistorySuccess,
    TResult Function(GetHistoryError value)? getHistoryError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements HistoryState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $GetHistorySuccessCopyWith<$Res> {
  factory $GetHistorySuccessCopyWith(
          GetHistorySuccess value, $Res Function(GetHistorySuccess) then) =
      _$GetHistorySuccessCopyWithImpl<$Res>;
  $Res call({OperationsResp response});
}

/// @nodoc
class _$GetHistorySuccessCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements $GetHistorySuccessCopyWith<$Res> {
  _$GetHistorySuccessCopyWithImpl(
      GetHistorySuccess _value, $Res Function(GetHistorySuccess) _then)
      : super(_value, (v) => _then(v as GetHistorySuccess));

  @override
  GetHistorySuccess get _value => super._value as GetHistorySuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(GetHistorySuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as OperationsResp,
    ));
  }
}

/// @nodoc

class _$GetHistorySuccess implements GetHistorySuccess {
  const _$GetHistorySuccess(this.response);

  @override
  final OperationsResp response;

  @override
  String toString() {
    return 'HistoryState.getHistorySuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetHistorySuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $GetHistorySuccessCopyWith<GetHistorySuccess> get copyWith =>
      _$GetHistorySuccessCopyWithImpl<GetHistorySuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OperationsResp response) getHistorySuccess,
    required TResult Function(ErrorsResponse errors) getHistoryError,
  }) {
    return getHistorySuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OperationsResp response)? getHistorySuccess,
    TResult Function(ErrorsResponse errors)? getHistoryError,
  }) {
    return getHistorySuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OperationsResp response)? getHistorySuccess,
    TResult Function(ErrorsResponse errors)? getHistoryError,
    required TResult orElse(),
  }) {
    if (getHistorySuccess != null) {
      return getHistorySuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetHistorySuccess value) getHistorySuccess,
    required TResult Function(GetHistoryError value) getHistoryError,
  }) {
    return getHistorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetHistorySuccess value)? getHistorySuccess,
    TResult Function(GetHistoryError value)? getHistoryError,
  }) {
    return getHistorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetHistorySuccess value)? getHistorySuccess,
    TResult Function(GetHistoryError value)? getHistoryError,
    required TResult orElse(),
  }) {
    if (getHistorySuccess != null) {
      return getHistorySuccess(this);
    }
    return orElse();
  }
}

abstract class GetHistorySuccess implements HistoryState {
  const factory GetHistorySuccess(OperationsResp response) =
      _$GetHistorySuccess;

  OperationsResp get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetHistorySuccessCopyWith<GetHistorySuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetHistoryErrorCopyWith<$Res> {
  factory $GetHistoryErrorCopyWith(
          GetHistoryError value, $Res Function(GetHistoryError) then) =
      _$GetHistoryErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$GetHistoryErrorCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements $GetHistoryErrorCopyWith<$Res> {
  _$GetHistoryErrorCopyWithImpl(
      GetHistoryError _value, $Res Function(GetHistoryError) _then)
      : super(_value, (v) => _then(v as GetHistoryError));

  @override
  GetHistoryError get _value => super._value as GetHistoryError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(GetHistoryError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$GetHistoryError implements GetHistoryError {
  const _$GetHistoryError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'HistoryState.getHistoryError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetHistoryError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $GetHistoryErrorCopyWith<GetHistoryError> get copyWith =>
      _$GetHistoryErrorCopyWithImpl<GetHistoryError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OperationsResp response) getHistorySuccess,
    required TResult Function(ErrorsResponse errors) getHistoryError,
  }) {
    return getHistoryError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OperationsResp response)? getHistorySuccess,
    TResult Function(ErrorsResponse errors)? getHistoryError,
  }) {
    return getHistoryError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OperationsResp response)? getHistorySuccess,
    TResult Function(ErrorsResponse errors)? getHistoryError,
    required TResult orElse(),
  }) {
    if (getHistoryError != null) {
      return getHistoryError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetHistorySuccess value) getHistorySuccess,
    required TResult Function(GetHistoryError value) getHistoryError,
  }) {
    return getHistoryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetHistorySuccess value)? getHistorySuccess,
    TResult Function(GetHistoryError value)? getHistoryError,
  }) {
    return getHistoryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetHistorySuccess value)? getHistorySuccess,
    TResult Function(GetHistoryError value)? getHistoryError,
    required TResult orElse(),
  }) {
    if (getHistoryError != null) {
      return getHistoryError(this);
    }
    return orElse();
  }
}

abstract class GetHistoryError implements HistoryState {
  const factory GetHistoryError(ErrorsResponse errors) = _$GetHistoryError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetHistoryErrorCopyWith<GetHistoryError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HistoryEventTearOff {
  const _$HistoryEventTearOff();

  GetHistory getHistory() {
    return const GetHistory();
  }
}

/// @nodoc
const $HistoryEvent = _$HistoryEventTearOff();

/// @nodoc
mixin _$HistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHistory value) getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHistory value)? getHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHistory value)? getHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res> implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  final HistoryEvent _value;
  // ignore: unused_field
  final $Res Function(HistoryEvent) _then;
}

/// @nodoc
abstract class $GetHistoryCopyWith<$Res> {
  factory $GetHistoryCopyWith(
          GetHistory value, $Res Function(GetHistory) then) =
      _$GetHistoryCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetHistoryCopyWithImpl<$Res> extends _$HistoryEventCopyWithImpl<$Res>
    implements $GetHistoryCopyWith<$Res> {
  _$GetHistoryCopyWithImpl(GetHistory _value, $Res Function(GetHistory) _then)
      : super(_value, (v) => _then(v as GetHistory));

  @override
  GetHistory get _value => super._value as GetHistory;
}

/// @nodoc

class _$GetHistory implements GetHistory {
  const _$GetHistory();

  @override
  String toString() {
    return 'HistoryEvent.getHistory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetHistory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHistory,
  }) {
    return getHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHistory,
  }) {
    return getHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHistory,
    required TResult orElse(),
  }) {
    if (getHistory != null) {
      return getHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHistory value) getHistory,
  }) {
    return getHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHistory value)? getHistory,
  }) {
    return getHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHistory value)? getHistory,
    required TResult orElse(),
  }) {
    if (getHistory != null) {
      return getHistory(this);
    }
    return orElse();
  }
}

abstract class GetHistory implements HistoryEvent {
  const factory GetHistory() = _$GetHistory;
}
