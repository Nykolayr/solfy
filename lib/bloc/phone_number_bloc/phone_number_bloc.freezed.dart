// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_number_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhoneNumberStateTearOff {
  const _$PhoneNumberStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  SmsSendSuccess smsSendSuccess(SmsSendResp response) {
    return SmsSendSuccess(
      response,
    );
  }

  SmsSendError smsSendError(ErrorsResponse errors) {
    return SmsSendError(
      errors,
    );
  }
}

/// @nodoc
const $PhoneNumberState = _$PhoneNumberStateTearOff();

/// @nodoc
mixin _$PhoneNumberState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SmsSendResp response) smsSendSuccess,
    required TResult Function(ErrorsResponse errors) smsSendError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsSendResp response)? smsSendSuccess,
    TResult Function(ErrorsResponse errors)? smsSendError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsSendResp response)? smsSendSuccess,
    TResult Function(ErrorsResponse errors)? smsSendError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SmsSendSuccess value) smsSendSuccess,
    required TResult Function(SmsSendError value) smsSendError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsSendSuccess value)? smsSendSuccess,
    TResult Function(SmsSendError value)? smsSendError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsSendSuccess value)? smsSendSuccess,
    TResult Function(SmsSendError value)? smsSendError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberStateCopyWith<$Res> {
  factory $PhoneNumberStateCopyWith(
          PhoneNumberState value, $Res Function(PhoneNumberState) then) =
      _$PhoneNumberStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneNumberStateCopyWithImpl<$Res>
    implements $PhoneNumberStateCopyWith<$Res> {
  _$PhoneNumberStateCopyWithImpl(this._value, this._then);

  final PhoneNumberState _value;
  // ignore: unused_field
  final $Res Function(PhoneNumberState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$PhoneNumberStateCopyWithImpl<$Res>
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
    return 'PhoneNumberState.initial()';
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
    required TResult Function(SmsSendResp response) smsSendSuccess,
    required TResult Function(ErrorsResponse errors) smsSendError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsSendResp response)? smsSendSuccess,
    TResult Function(ErrorsResponse errors)? smsSendError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsSendResp response)? smsSendSuccess,
    TResult Function(ErrorsResponse errors)? smsSendError,
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
    required TResult Function(SmsSendSuccess value) smsSendSuccess,
    required TResult Function(SmsSendError value) smsSendError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsSendSuccess value)? smsSendSuccess,
    TResult Function(SmsSendError value)? smsSendError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsSendSuccess value)? smsSendSuccess,
    TResult Function(SmsSendError value)? smsSendError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PhoneNumberState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$PhoneNumberStateCopyWithImpl<$Res>
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
    return 'PhoneNumberState.loading()';
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
    required TResult Function(SmsSendResp response) smsSendSuccess,
    required TResult Function(ErrorsResponse errors) smsSendError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsSendResp response)? smsSendSuccess,
    TResult Function(ErrorsResponse errors)? smsSendError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsSendResp response)? smsSendSuccess,
    TResult Function(ErrorsResponse errors)? smsSendError,
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
    required TResult Function(SmsSendSuccess value) smsSendSuccess,
    required TResult Function(SmsSendError value) smsSendError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsSendSuccess value)? smsSendSuccess,
    TResult Function(SmsSendError value)? smsSendError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsSendSuccess value)? smsSendSuccess,
    TResult Function(SmsSendError value)? smsSendError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements PhoneNumberState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $SmsSendSuccessCopyWith<$Res> {
  factory $SmsSendSuccessCopyWith(
          SmsSendSuccess value, $Res Function(SmsSendSuccess) then) =
      _$SmsSendSuccessCopyWithImpl<$Res>;
  $Res call({SmsSendResp response});
}

/// @nodoc
class _$SmsSendSuccessCopyWithImpl<$Res>
    extends _$PhoneNumberStateCopyWithImpl<$Res>
    implements $SmsSendSuccessCopyWith<$Res> {
  _$SmsSendSuccessCopyWithImpl(
      SmsSendSuccess _value, $Res Function(SmsSendSuccess) _then)
      : super(_value, (v) => _then(v as SmsSendSuccess));

  @override
  SmsSendSuccess get _value => super._value as SmsSendSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(SmsSendSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SmsSendResp,
    ));
  }
}

/// @nodoc

class _$SmsSendSuccess implements SmsSendSuccess {
  const _$SmsSendSuccess(this.response);

  @override
  final SmsSendResp response;

  @override
  String toString() {
    return 'PhoneNumberState.smsSendSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SmsSendSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $SmsSendSuccessCopyWith<SmsSendSuccess> get copyWith =>
      _$SmsSendSuccessCopyWithImpl<SmsSendSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SmsSendResp response) smsSendSuccess,
    required TResult Function(ErrorsResponse errors) smsSendError,
  }) {
    return smsSendSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsSendResp response)? smsSendSuccess,
    TResult Function(ErrorsResponse errors)? smsSendError,
  }) {
    return smsSendSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsSendResp response)? smsSendSuccess,
    TResult Function(ErrorsResponse errors)? smsSendError,
    required TResult orElse(),
  }) {
    if (smsSendSuccess != null) {
      return smsSendSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SmsSendSuccess value) smsSendSuccess,
    required TResult Function(SmsSendError value) smsSendError,
  }) {
    return smsSendSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsSendSuccess value)? smsSendSuccess,
    TResult Function(SmsSendError value)? smsSendError,
  }) {
    return smsSendSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsSendSuccess value)? smsSendSuccess,
    TResult Function(SmsSendError value)? smsSendError,
    required TResult orElse(),
  }) {
    if (smsSendSuccess != null) {
      return smsSendSuccess(this);
    }
    return orElse();
  }
}

abstract class SmsSendSuccess implements PhoneNumberState {
  const factory SmsSendSuccess(SmsSendResp response) = _$SmsSendSuccess;

  SmsSendResp get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmsSendSuccessCopyWith<SmsSendSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsSendErrorCopyWith<$Res> {
  factory $SmsSendErrorCopyWith(
          SmsSendError value, $Res Function(SmsSendError) then) =
      _$SmsSendErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$SmsSendErrorCopyWithImpl<$Res>
    extends _$PhoneNumberStateCopyWithImpl<$Res>
    implements $SmsSendErrorCopyWith<$Res> {
  _$SmsSendErrorCopyWithImpl(
      SmsSendError _value, $Res Function(SmsSendError) _then)
      : super(_value, (v) => _then(v as SmsSendError));

  @override
  SmsSendError get _value => super._value as SmsSendError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(SmsSendError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$SmsSendError implements SmsSendError {
  const _$SmsSendError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'PhoneNumberState.smsSendError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SmsSendError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $SmsSendErrorCopyWith<SmsSendError> get copyWith =>
      _$SmsSendErrorCopyWithImpl<SmsSendError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SmsSendResp response) smsSendSuccess,
    required TResult Function(ErrorsResponse errors) smsSendError,
  }) {
    return smsSendError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsSendResp response)? smsSendSuccess,
    TResult Function(ErrorsResponse errors)? smsSendError,
  }) {
    return smsSendError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsSendResp response)? smsSendSuccess,
    TResult Function(ErrorsResponse errors)? smsSendError,
    required TResult orElse(),
  }) {
    if (smsSendError != null) {
      return smsSendError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SmsSendSuccess value) smsSendSuccess,
    required TResult Function(SmsSendError value) smsSendError,
  }) {
    return smsSendError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsSendSuccess value)? smsSendSuccess,
    TResult Function(SmsSendError value)? smsSendError,
  }) {
    return smsSendError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SmsSendSuccess value)? smsSendSuccess,
    TResult Function(SmsSendError value)? smsSendError,
    required TResult orElse(),
  }) {
    if (smsSendError != null) {
      return smsSendError(this);
    }
    return orElse();
  }
}

abstract class SmsSendError implements PhoneNumberState {
  const factory SmsSendError(ErrorsResponse errors) = _$SmsSendError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmsSendErrorCopyWith<SmsSendError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PhoneNumberEventTearOff {
  const _$PhoneNumberEventTearOff();

  SmsSend smsSend(SmsSendRequest request) {
    return SmsSend(
      request,
    );
  }
}

/// @nodoc
const $PhoneNumberEvent = _$PhoneNumberEventTearOff();

/// @nodoc
mixin _$PhoneNumberEvent {
  SmsSendRequest get request => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SmsSendRequest request) smsSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SmsSendRequest request)? smsSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SmsSendRequest request)? smsSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SmsSend value) smsSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SmsSend value)? smsSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SmsSend value)? smsSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneNumberEventCopyWith<PhoneNumberEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberEventCopyWith<$Res> {
  factory $PhoneNumberEventCopyWith(
          PhoneNumberEvent value, $Res Function(PhoneNumberEvent) then) =
      _$PhoneNumberEventCopyWithImpl<$Res>;
  $Res call({SmsSendRequest request});
}

/// @nodoc
class _$PhoneNumberEventCopyWithImpl<$Res>
    implements $PhoneNumberEventCopyWith<$Res> {
  _$PhoneNumberEventCopyWithImpl(this._value, this._then);

  final PhoneNumberEvent _value;
  // ignore: unused_field
  final $Res Function(PhoneNumberEvent) _then;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_value.copyWith(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SmsSendRequest,
    ));
  }
}

/// @nodoc
abstract class $SmsSendCopyWith<$Res>
    implements $PhoneNumberEventCopyWith<$Res> {
  factory $SmsSendCopyWith(SmsSend value, $Res Function(SmsSend) then) =
      _$SmsSendCopyWithImpl<$Res>;
  @override
  $Res call({SmsSendRequest request});
}

/// @nodoc
class _$SmsSendCopyWithImpl<$Res> extends _$PhoneNumberEventCopyWithImpl<$Res>
    implements $SmsSendCopyWith<$Res> {
  _$SmsSendCopyWithImpl(SmsSend _value, $Res Function(SmsSend) _then)
      : super(_value, (v) => _then(v as SmsSend));

  @override
  SmsSend get _value => super._value as SmsSend;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(SmsSend(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SmsSendRequest,
    ));
  }
}

/// @nodoc

class _$SmsSend implements SmsSend {
  const _$SmsSend(this.request);

  @override
  final SmsSendRequest request;

  @override
  String toString() {
    return 'PhoneNumberEvent.smsSend(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SmsSend &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  $SmsSendCopyWith<SmsSend> get copyWith =>
      _$SmsSendCopyWithImpl<SmsSend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SmsSendRequest request) smsSend,
  }) {
    return smsSend(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SmsSendRequest request)? smsSend,
  }) {
    return smsSend?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SmsSendRequest request)? smsSend,
    required TResult orElse(),
  }) {
    if (smsSend != null) {
      return smsSend(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SmsSend value) smsSend,
  }) {
    return smsSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SmsSend value)? smsSend,
  }) {
    return smsSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SmsSend value)? smsSend,
    required TResult orElse(),
  }) {
    if (smsSend != null) {
      return smsSend(this);
    }
    return orElse();
  }
}

abstract class SmsSend implements PhoneNumberEvent {
  const factory SmsSend(SmsSendRequest request) = _$SmsSend;

  @override
  SmsSendRequest get request => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SmsSendCopyWith<SmsSend> get copyWith => throw _privateConstructorUsedError;
}
