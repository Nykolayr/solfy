// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedules_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SchedulesStateTearOff {
  const _$SchedulesStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  GetSchedulesSuccess getSchedulesSuccess(SchedulesResp response) {
    return GetSchedulesSuccess(
      response,
    );
  }

  GetSchedulesError getSchedulesError(ErrorsResponse errors) {
    return GetSchedulesError(
      errors,
    );
  }
}

/// @nodoc
const $SchedulesState = _$SchedulesStateTearOff();

/// @nodoc
mixin _$SchedulesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SchedulesResp response) getSchedulesSuccess,
    required TResult Function(ErrorsResponse errors) getSchedulesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SchedulesResp response)? getSchedulesSuccess,
    TResult Function(ErrorsResponse errors)? getSchedulesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SchedulesResp response)? getSchedulesSuccess,
    TResult Function(ErrorsResponse errors)? getSchedulesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetSchedulesSuccess value) getSchedulesSuccess,
    required TResult Function(GetSchedulesError value) getSchedulesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetSchedulesSuccess value)? getSchedulesSuccess,
    TResult Function(GetSchedulesError value)? getSchedulesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetSchedulesSuccess value)? getSchedulesSuccess,
    TResult Function(GetSchedulesError value)? getSchedulesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulesStateCopyWith<$Res> {
  factory $SchedulesStateCopyWith(
          SchedulesState value, $Res Function(SchedulesState) then) =
      _$SchedulesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SchedulesStateCopyWithImpl<$Res>
    implements $SchedulesStateCopyWith<$Res> {
  _$SchedulesStateCopyWithImpl(this._value, this._then);

  final SchedulesState _value;
  // ignore: unused_field
  final $Res Function(SchedulesState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SchedulesStateCopyWithImpl<$Res>
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
    return 'SchedulesState.initial()';
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
    required TResult Function(SchedulesResp response) getSchedulesSuccess,
    required TResult Function(ErrorsResponse errors) getSchedulesError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SchedulesResp response)? getSchedulesSuccess,
    TResult Function(ErrorsResponse errors)? getSchedulesError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SchedulesResp response)? getSchedulesSuccess,
    TResult Function(ErrorsResponse errors)? getSchedulesError,
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
    required TResult Function(GetSchedulesSuccess value) getSchedulesSuccess,
    required TResult Function(GetSchedulesError value) getSchedulesError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetSchedulesSuccess value)? getSchedulesSuccess,
    TResult Function(GetSchedulesError value)? getSchedulesError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetSchedulesSuccess value)? getSchedulesSuccess,
    TResult Function(GetSchedulesError value)? getSchedulesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SchedulesState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$SchedulesStateCopyWithImpl<$Res>
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
    return 'SchedulesState.loading()';
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
    required TResult Function(SchedulesResp response) getSchedulesSuccess,
    required TResult Function(ErrorsResponse errors) getSchedulesError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SchedulesResp response)? getSchedulesSuccess,
    TResult Function(ErrorsResponse errors)? getSchedulesError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SchedulesResp response)? getSchedulesSuccess,
    TResult Function(ErrorsResponse errors)? getSchedulesError,
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
    required TResult Function(GetSchedulesSuccess value) getSchedulesSuccess,
    required TResult Function(GetSchedulesError value) getSchedulesError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetSchedulesSuccess value)? getSchedulesSuccess,
    TResult Function(GetSchedulesError value)? getSchedulesError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetSchedulesSuccess value)? getSchedulesSuccess,
    TResult Function(GetSchedulesError value)? getSchedulesError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SchedulesState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $GetSchedulesSuccessCopyWith<$Res> {
  factory $GetSchedulesSuccessCopyWith(
          GetSchedulesSuccess value, $Res Function(GetSchedulesSuccess) then) =
      _$GetSchedulesSuccessCopyWithImpl<$Res>;
  $Res call({SchedulesResp response});
}

/// @nodoc
class _$GetSchedulesSuccessCopyWithImpl<$Res>
    extends _$SchedulesStateCopyWithImpl<$Res>
    implements $GetSchedulesSuccessCopyWith<$Res> {
  _$GetSchedulesSuccessCopyWithImpl(
      GetSchedulesSuccess _value, $Res Function(GetSchedulesSuccess) _then)
      : super(_value, (v) => _then(v as GetSchedulesSuccess));

  @override
  GetSchedulesSuccess get _value => super._value as GetSchedulesSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(GetSchedulesSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SchedulesResp,
    ));
  }
}

/// @nodoc

class _$GetSchedulesSuccess implements GetSchedulesSuccess {
  const _$GetSchedulesSuccess(this.response);

  @override
  final SchedulesResp response;

  @override
  String toString() {
    return 'SchedulesState.getSchedulesSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSchedulesSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $GetSchedulesSuccessCopyWith<GetSchedulesSuccess> get copyWith =>
      _$GetSchedulesSuccessCopyWithImpl<GetSchedulesSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SchedulesResp response) getSchedulesSuccess,
    required TResult Function(ErrorsResponse errors) getSchedulesError,
  }) {
    return getSchedulesSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SchedulesResp response)? getSchedulesSuccess,
    TResult Function(ErrorsResponse errors)? getSchedulesError,
  }) {
    return getSchedulesSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SchedulesResp response)? getSchedulesSuccess,
    TResult Function(ErrorsResponse errors)? getSchedulesError,
    required TResult orElse(),
  }) {
    if (getSchedulesSuccess != null) {
      return getSchedulesSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetSchedulesSuccess value) getSchedulesSuccess,
    required TResult Function(GetSchedulesError value) getSchedulesError,
  }) {
    return getSchedulesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetSchedulesSuccess value)? getSchedulesSuccess,
    TResult Function(GetSchedulesError value)? getSchedulesError,
  }) {
    return getSchedulesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetSchedulesSuccess value)? getSchedulesSuccess,
    TResult Function(GetSchedulesError value)? getSchedulesError,
    required TResult orElse(),
  }) {
    if (getSchedulesSuccess != null) {
      return getSchedulesSuccess(this);
    }
    return orElse();
  }
}

abstract class GetSchedulesSuccess implements SchedulesState {
  const factory GetSchedulesSuccess(SchedulesResp response) =
      _$GetSchedulesSuccess;

  SchedulesResp get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSchedulesSuccessCopyWith<GetSchedulesSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSchedulesErrorCopyWith<$Res> {
  factory $GetSchedulesErrorCopyWith(
          GetSchedulesError value, $Res Function(GetSchedulesError) then) =
      _$GetSchedulesErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$GetSchedulesErrorCopyWithImpl<$Res>
    extends _$SchedulesStateCopyWithImpl<$Res>
    implements $GetSchedulesErrorCopyWith<$Res> {
  _$GetSchedulesErrorCopyWithImpl(
      GetSchedulesError _value, $Res Function(GetSchedulesError) _then)
      : super(_value, (v) => _then(v as GetSchedulesError));

  @override
  GetSchedulesError get _value => super._value as GetSchedulesError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(GetSchedulesError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$GetSchedulesError implements GetSchedulesError {
  const _$GetSchedulesError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'SchedulesState.getSchedulesError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSchedulesError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $GetSchedulesErrorCopyWith<GetSchedulesError> get copyWith =>
      _$GetSchedulesErrorCopyWithImpl<GetSchedulesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SchedulesResp response) getSchedulesSuccess,
    required TResult Function(ErrorsResponse errors) getSchedulesError,
  }) {
    return getSchedulesError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SchedulesResp response)? getSchedulesSuccess,
    TResult Function(ErrorsResponse errors)? getSchedulesError,
  }) {
    return getSchedulesError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SchedulesResp response)? getSchedulesSuccess,
    TResult Function(ErrorsResponse errors)? getSchedulesError,
    required TResult orElse(),
  }) {
    if (getSchedulesError != null) {
      return getSchedulesError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetSchedulesSuccess value) getSchedulesSuccess,
    required TResult Function(GetSchedulesError value) getSchedulesError,
  }) {
    return getSchedulesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetSchedulesSuccess value)? getSchedulesSuccess,
    TResult Function(GetSchedulesError value)? getSchedulesError,
  }) {
    return getSchedulesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetSchedulesSuccess value)? getSchedulesSuccess,
    TResult Function(GetSchedulesError value)? getSchedulesError,
    required TResult orElse(),
  }) {
    if (getSchedulesError != null) {
      return getSchedulesError(this);
    }
    return orElse();
  }
}

abstract class GetSchedulesError implements SchedulesState {
  const factory GetSchedulesError(ErrorsResponse errors) = _$GetSchedulesError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSchedulesErrorCopyWith<GetSchedulesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SchedulesEventTearOff {
  const _$SchedulesEventTearOff();

  GetSchedules getSchedules() {
    return const GetSchedules();
  }
}

/// @nodoc
const $SchedulesEvent = _$SchedulesEventTearOff();

/// @nodoc
mixin _$SchedulesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSchedules,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSchedules value) getSchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetSchedules value)? getSchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSchedules value)? getSchedules,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulesEventCopyWith<$Res> {
  factory $SchedulesEventCopyWith(
          SchedulesEvent value, $Res Function(SchedulesEvent) then) =
      _$SchedulesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SchedulesEventCopyWithImpl<$Res>
    implements $SchedulesEventCopyWith<$Res> {
  _$SchedulesEventCopyWithImpl(this._value, this._then);

  final SchedulesEvent _value;
  // ignore: unused_field
  final $Res Function(SchedulesEvent) _then;
}

/// @nodoc
abstract class $GetSchedulesCopyWith<$Res> {
  factory $GetSchedulesCopyWith(
          GetSchedules value, $Res Function(GetSchedules) then) =
      _$GetSchedulesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetSchedulesCopyWithImpl<$Res>
    extends _$SchedulesEventCopyWithImpl<$Res>
    implements $GetSchedulesCopyWith<$Res> {
  _$GetSchedulesCopyWithImpl(
      GetSchedules _value, $Res Function(GetSchedules) _then)
      : super(_value, (v) => _then(v as GetSchedules));

  @override
  GetSchedules get _value => super._value as GetSchedules;
}

/// @nodoc

class _$GetSchedules implements GetSchedules {
  const _$GetSchedules();

  @override
  String toString() {
    return 'SchedulesEvent.getSchedules()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetSchedules);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSchedules,
  }) {
    return getSchedules();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSchedules,
  }) {
    return getSchedules?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSchedules,
    required TResult orElse(),
  }) {
    if (getSchedules != null) {
      return getSchedules();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSchedules value) getSchedules,
  }) {
    return getSchedules(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetSchedules value)? getSchedules,
  }) {
    return getSchedules?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSchedules value)? getSchedules,
    required TResult orElse(),
  }) {
    if (getSchedules != null) {
      return getSchedules(this);
    }
    return orElse();
  }
}

abstract class GetSchedules implements SchedulesEvent {
  const factory GetSchedules() = _$GetSchedules;
}
