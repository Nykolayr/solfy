// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'operation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OperationStateTearOff {
  const _$OperationStateTearOff();

  Initial initial() {
    return const Initial();
  }

  OperationLoading operationLoading() {
    return const OperationLoading();
  }

  OperationEndLoading operationEndLoading() {
    return const OperationEndLoading();
  }

  GetOperationSuccess getOperationSuccess(OperationResp operation) {
    return GetOperationSuccess(
      operation,
    );
  }

  GetOperationError getOperationError(ErrorsResponse errors) {
    return GetOperationError(
      errors,
    );
  }
}

/// @nodoc
const $OperationState = _$OperationStateTearOff();

/// @nodoc
mixin _$OperationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() operationLoading,
    required TResult Function() operationEndLoading,
    required TResult Function(OperationResp operation) getOperationSuccess,
    required TResult Function(ErrorsResponse errors) getOperationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? operationLoading,
    TResult Function()? operationEndLoading,
    TResult Function(OperationResp operation)? getOperationSuccess,
    TResult Function(ErrorsResponse errors)? getOperationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? operationLoading,
    TResult Function()? operationEndLoading,
    TResult Function(OperationResp operation)? getOperationSuccess,
    TResult Function(ErrorsResponse errors)? getOperationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OperationLoading value) operationLoading,
    required TResult Function(OperationEndLoading value) operationEndLoading,
    required TResult Function(GetOperationSuccess value) getOperationSuccess,
    required TResult Function(GetOperationError value) getOperationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OperationLoading value)? operationLoading,
    TResult Function(OperationEndLoading value)? operationEndLoading,
    TResult Function(GetOperationSuccess value)? getOperationSuccess,
    TResult Function(GetOperationError value)? getOperationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OperationLoading value)? operationLoading,
    TResult Function(OperationEndLoading value)? operationEndLoading,
    TResult Function(GetOperationSuccess value)? getOperationSuccess,
    TResult Function(GetOperationError value)? getOperationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationStateCopyWith<$Res> {
  factory $OperationStateCopyWith(
          OperationState value, $Res Function(OperationState) then) =
      _$OperationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OperationStateCopyWithImpl<$Res>
    implements $OperationStateCopyWith<$Res> {
  _$OperationStateCopyWithImpl(this._value, this._then);

  final OperationState _value;
  // ignore: unused_field
  final $Res Function(OperationState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$OperationStateCopyWithImpl<$Res>
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
    return 'OperationState.initial()';
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
    required TResult Function() operationLoading,
    required TResult Function() operationEndLoading,
    required TResult Function(OperationResp operation) getOperationSuccess,
    required TResult Function(ErrorsResponse errors) getOperationError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? operationLoading,
    TResult Function()? operationEndLoading,
    TResult Function(OperationResp operation)? getOperationSuccess,
    TResult Function(ErrorsResponse errors)? getOperationError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? operationLoading,
    TResult Function()? operationEndLoading,
    TResult Function(OperationResp operation)? getOperationSuccess,
    TResult Function(ErrorsResponse errors)? getOperationError,
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
    required TResult Function(OperationLoading value) operationLoading,
    required TResult Function(OperationEndLoading value) operationEndLoading,
    required TResult Function(GetOperationSuccess value) getOperationSuccess,
    required TResult Function(GetOperationError value) getOperationError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OperationLoading value)? operationLoading,
    TResult Function(OperationEndLoading value)? operationEndLoading,
    TResult Function(GetOperationSuccess value)? getOperationSuccess,
    TResult Function(GetOperationError value)? getOperationError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OperationLoading value)? operationLoading,
    TResult Function(OperationEndLoading value)? operationEndLoading,
    TResult Function(GetOperationSuccess value)? getOperationSuccess,
    TResult Function(GetOperationError value)? getOperationError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements OperationState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $OperationLoadingCopyWith<$Res> {
  factory $OperationLoadingCopyWith(
          OperationLoading value, $Res Function(OperationLoading) then) =
      _$OperationLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$OperationLoadingCopyWithImpl<$Res>
    extends _$OperationStateCopyWithImpl<$Res>
    implements $OperationLoadingCopyWith<$Res> {
  _$OperationLoadingCopyWithImpl(
      OperationLoading _value, $Res Function(OperationLoading) _then)
      : super(_value, (v) => _then(v as OperationLoading));

  @override
  OperationLoading get _value => super._value as OperationLoading;
}

/// @nodoc

class _$OperationLoading implements OperationLoading {
  const _$OperationLoading();

  @override
  String toString() {
    return 'OperationState.operationLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OperationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() operationLoading,
    required TResult Function() operationEndLoading,
    required TResult Function(OperationResp operation) getOperationSuccess,
    required TResult Function(ErrorsResponse errors) getOperationError,
  }) {
    return operationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? operationLoading,
    TResult Function()? operationEndLoading,
    TResult Function(OperationResp operation)? getOperationSuccess,
    TResult Function(ErrorsResponse errors)? getOperationError,
  }) {
    return operationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? operationLoading,
    TResult Function()? operationEndLoading,
    TResult Function(OperationResp operation)? getOperationSuccess,
    TResult Function(ErrorsResponse errors)? getOperationError,
    required TResult orElse(),
  }) {
    if (operationLoading != null) {
      return operationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OperationLoading value) operationLoading,
    required TResult Function(OperationEndLoading value) operationEndLoading,
    required TResult Function(GetOperationSuccess value) getOperationSuccess,
    required TResult Function(GetOperationError value) getOperationError,
  }) {
    return operationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OperationLoading value)? operationLoading,
    TResult Function(OperationEndLoading value)? operationEndLoading,
    TResult Function(GetOperationSuccess value)? getOperationSuccess,
    TResult Function(GetOperationError value)? getOperationError,
  }) {
    return operationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OperationLoading value)? operationLoading,
    TResult Function(OperationEndLoading value)? operationEndLoading,
    TResult Function(GetOperationSuccess value)? getOperationSuccess,
    TResult Function(GetOperationError value)? getOperationError,
    required TResult orElse(),
  }) {
    if (operationLoading != null) {
      return operationLoading(this);
    }
    return orElse();
  }
}

abstract class OperationLoading implements OperationState {
  const factory OperationLoading() = _$OperationLoading;
}

/// @nodoc
abstract class $OperationEndLoadingCopyWith<$Res> {
  factory $OperationEndLoadingCopyWith(
          OperationEndLoading value, $Res Function(OperationEndLoading) then) =
      _$OperationEndLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$OperationEndLoadingCopyWithImpl<$Res>
    extends _$OperationStateCopyWithImpl<$Res>
    implements $OperationEndLoadingCopyWith<$Res> {
  _$OperationEndLoadingCopyWithImpl(
      OperationEndLoading _value, $Res Function(OperationEndLoading) _then)
      : super(_value, (v) => _then(v as OperationEndLoading));

  @override
  OperationEndLoading get _value => super._value as OperationEndLoading;
}

/// @nodoc

class _$OperationEndLoading implements OperationEndLoading {
  const _$OperationEndLoading();

  @override
  String toString() {
    return 'OperationState.operationEndLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OperationEndLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() operationLoading,
    required TResult Function() operationEndLoading,
    required TResult Function(OperationResp operation) getOperationSuccess,
    required TResult Function(ErrorsResponse errors) getOperationError,
  }) {
    return operationEndLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? operationLoading,
    TResult Function()? operationEndLoading,
    TResult Function(OperationResp operation)? getOperationSuccess,
    TResult Function(ErrorsResponse errors)? getOperationError,
  }) {
    return operationEndLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? operationLoading,
    TResult Function()? operationEndLoading,
    TResult Function(OperationResp operation)? getOperationSuccess,
    TResult Function(ErrorsResponse errors)? getOperationError,
    required TResult orElse(),
  }) {
    if (operationEndLoading != null) {
      return operationEndLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OperationLoading value) operationLoading,
    required TResult Function(OperationEndLoading value) operationEndLoading,
    required TResult Function(GetOperationSuccess value) getOperationSuccess,
    required TResult Function(GetOperationError value) getOperationError,
  }) {
    return operationEndLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OperationLoading value)? operationLoading,
    TResult Function(OperationEndLoading value)? operationEndLoading,
    TResult Function(GetOperationSuccess value)? getOperationSuccess,
    TResult Function(GetOperationError value)? getOperationError,
  }) {
    return operationEndLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OperationLoading value)? operationLoading,
    TResult Function(OperationEndLoading value)? operationEndLoading,
    TResult Function(GetOperationSuccess value)? getOperationSuccess,
    TResult Function(GetOperationError value)? getOperationError,
    required TResult orElse(),
  }) {
    if (operationEndLoading != null) {
      return operationEndLoading(this);
    }
    return orElse();
  }
}

abstract class OperationEndLoading implements OperationState {
  const factory OperationEndLoading() = _$OperationEndLoading;
}

/// @nodoc
abstract class $GetOperationSuccessCopyWith<$Res> {
  factory $GetOperationSuccessCopyWith(
          GetOperationSuccess value, $Res Function(GetOperationSuccess) then) =
      _$GetOperationSuccessCopyWithImpl<$Res>;
  $Res call({OperationResp operation});
}

/// @nodoc
class _$GetOperationSuccessCopyWithImpl<$Res>
    extends _$OperationStateCopyWithImpl<$Res>
    implements $GetOperationSuccessCopyWith<$Res> {
  _$GetOperationSuccessCopyWithImpl(
      GetOperationSuccess _value, $Res Function(GetOperationSuccess) _then)
      : super(_value, (v) => _then(v as GetOperationSuccess));

  @override
  GetOperationSuccess get _value => super._value as GetOperationSuccess;

  @override
  $Res call({
    Object? operation = freezed,
  }) {
    return _then(GetOperationSuccess(
      operation == freezed
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as OperationResp,
    ));
  }
}

/// @nodoc

class _$GetOperationSuccess implements GetOperationSuccess {
  const _$GetOperationSuccess(this.operation);

  @override
  final OperationResp operation;

  @override
  String toString() {
    return 'OperationState.getOperationSuccess(operation: $operation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetOperationSuccess &&
            (identical(other.operation, operation) ||
                const DeepCollectionEquality()
                    .equals(other.operation, operation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(operation);

  @JsonKey(ignore: true)
  @override
  $GetOperationSuccessCopyWith<GetOperationSuccess> get copyWith =>
      _$GetOperationSuccessCopyWithImpl<GetOperationSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() operationLoading,
    required TResult Function() operationEndLoading,
    required TResult Function(OperationResp operation) getOperationSuccess,
    required TResult Function(ErrorsResponse errors) getOperationError,
  }) {
    return getOperationSuccess(operation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? operationLoading,
    TResult Function()? operationEndLoading,
    TResult Function(OperationResp operation)? getOperationSuccess,
    TResult Function(ErrorsResponse errors)? getOperationError,
  }) {
    return getOperationSuccess?.call(operation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? operationLoading,
    TResult Function()? operationEndLoading,
    TResult Function(OperationResp operation)? getOperationSuccess,
    TResult Function(ErrorsResponse errors)? getOperationError,
    required TResult orElse(),
  }) {
    if (getOperationSuccess != null) {
      return getOperationSuccess(operation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OperationLoading value) operationLoading,
    required TResult Function(OperationEndLoading value) operationEndLoading,
    required TResult Function(GetOperationSuccess value) getOperationSuccess,
    required TResult Function(GetOperationError value) getOperationError,
  }) {
    return getOperationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OperationLoading value)? operationLoading,
    TResult Function(OperationEndLoading value)? operationEndLoading,
    TResult Function(GetOperationSuccess value)? getOperationSuccess,
    TResult Function(GetOperationError value)? getOperationError,
  }) {
    return getOperationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OperationLoading value)? operationLoading,
    TResult Function(OperationEndLoading value)? operationEndLoading,
    TResult Function(GetOperationSuccess value)? getOperationSuccess,
    TResult Function(GetOperationError value)? getOperationError,
    required TResult orElse(),
  }) {
    if (getOperationSuccess != null) {
      return getOperationSuccess(this);
    }
    return orElse();
  }
}

abstract class GetOperationSuccess implements OperationState {
  const factory GetOperationSuccess(OperationResp operation) =
      _$GetOperationSuccess;

  OperationResp get operation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOperationSuccessCopyWith<GetOperationSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOperationErrorCopyWith<$Res> {
  factory $GetOperationErrorCopyWith(
          GetOperationError value, $Res Function(GetOperationError) then) =
      _$GetOperationErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$GetOperationErrorCopyWithImpl<$Res>
    extends _$OperationStateCopyWithImpl<$Res>
    implements $GetOperationErrorCopyWith<$Res> {
  _$GetOperationErrorCopyWithImpl(
      GetOperationError _value, $Res Function(GetOperationError) _then)
      : super(_value, (v) => _then(v as GetOperationError));

  @override
  GetOperationError get _value => super._value as GetOperationError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(GetOperationError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$GetOperationError implements GetOperationError {
  const _$GetOperationError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'OperationState.getOperationError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetOperationError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $GetOperationErrorCopyWith<GetOperationError> get copyWith =>
      _$GetOperationErrorCopyWithImpl<GetOperationError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() operationLoading,
    required TResult Function() operationEndLoading,
    required TResult Function(OperationResp operation) getOperationSuccess,
    required TResult Function(ErrorsResponse errors) getOperationError,
  }) {
    return getOperationError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? operationLoading,
    TResult Function()? operationEndLoading,
    TResult Function(OperationResp operation)? getOperationSuccess,
    TResult Function(ErrorsResponse errors)? getOperationError,
  }) {
    return getOperationError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? operationLoading,
    TResult Function()? operationEndLoading,
    TResult Function(OperationResp operation)? getOperationSuccess,
    TResult Function(ErrorsResponse errors)? getOperationError,
    required TResult orElse(),
  }) {
    if (getOperationError != null) {
      return getOperationError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OperationLoading value) operationLoading,
    required TResult Function(OperationEndLoading value) operationEndLoading,
    required TResult Function(GetOperationSuccess value) getOperationSuccess,
    required TResult Function(GetOperationError value) getOperationError,
  }) {
    return getOperationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OperationLoading value)? operationLoading,
    TResult Function(OperationEndLoading value)? operationEndLoading,
    TResult Function(GetOperationSuccess value)? getOperationSuccess,
    TResult Function(GetOperationError value)? getOperationError,
  }) {
    return getOperationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OperationLoading value)? operationLoading,
    TResult Function(OperationEndLoading value)? operationEndLoading,
    TResult Function(GetOperationSuccess value)? getOperationSuccess,
    TResult Function(GetOperationError value)? getOperationError,
    required TResult orElse(),
  }) {
    if (getOperationError != null) {
      return getOperationError(this);
    }
    return orElse();
  }
}

abstract class GetOperationError implements OperationState {
  const factory GetOperationError(ErrorsResponse errors) = _$GetOperationError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOperationErrorCopyWith<GetOperationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OperationEventTearOff {
  const _$OperationEventTearOff();

  GetOperation getOperation(String id) {
    return GetOperation(
      id,
    );
  }
}

/// @nodoc
const $OperationEvent = _$OperationEventTearOff();

/// @nodoc
mixin _$OperationEvent {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getOperation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getOperation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getOperation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOperation value) getOperation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetOperation value)? getOperation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOperation value)? getOperation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OperationEventCopyWith<OperationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationEventCopyWith<$Res> {
  factory $OperationEventCopyWith(
          OperationEvent value, $Res Function(OperationEvent) then) =
      _$OperationEventCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$OperationEventCopyWithImpl<$Res>
    implements $OperationEventCopyWith<$Res> {
  _$OperationEventCopyWithImpl(this._value, this._then);

  final OperationEvent _value;
  // ignore: unused_field
  final $Res Function(OperationEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GetOperationCopyWith<$Res>
    implements $OperationEventCopyWith<$Res> {
  factory $GetOperationCopyWith(
          GetOperation value, $Res Function(GetOperation) then) =
      _$GetOperationCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class _$GetOperationCopyWithImpl<$Res>
    extends _$OperationEventCopyWithImpl<$Res>
    implements $GetOperationCopyWith<$Res> {
  _$GetOperationCopyWithImpl(
      GetOperation _value, $Res Function(GetOperation) _then)
      : super(_value, (v) => _then(v as GetOperation));

  @override
  GetOperation get _value => super._value as GetOperation;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(GetOperation(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOperation implements GetOperation {
  const _$GetOperation(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'OperationEvent.getOperation(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetOperation &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $GetOperationCopyWith<GetOperation> get copyWith =>
      _$GetOperationCopyWithImpl<GetOperation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getOperation,
  }) {
    return getOperation(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getOperation,
  }) {
    return getOperation?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getOperation,
    required TResult orElse(),
  }) {
    if (getOperation != null) {
      return getOperation(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOperation value) getOperation,
  }) {
    return getOperation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetOperation value)? getOperation,
  }) {
    return getOperation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOperation value)? getOperation,
    required TResult orElse(),
  }) {
    if (getOperation != null) {
      return getOperation(this);
    }
    return orElse();
  }
}

abstract class GetOperation implements OperationEvent {
  const factory GetOperation(String id) = _$GetOperation;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetOperationCopyWith<GetOperation> get copyWith =>
      throw _privateConstructorUsedError;
}
