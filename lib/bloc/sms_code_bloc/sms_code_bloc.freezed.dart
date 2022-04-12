// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sms_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SmsCodeStateTearOff {
  const _$SmsCodeStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  ValidationSuccess validationSuccess(SmsConfirmResponse response) {
    return ValidationSuccess(
      response,
    );
  }

  ValidationError validationError(ErrorsResponse errors) {
    return ValidationError(
      errors,
    );
  }

  SendNewSmsError sendNewSmsError(ErrorsResponse errors) {
    return SendNewSmsError(
      errors,
    );
  }
}

/// @nodoc
const $SmsCodeState = _$SmsCodeStateTearOff();

/// @nodoc
mixin _$SmsCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SmsConfirmResponse response) validationSuccess,
    required TResult Function(ErrorsResponse errors) validationError,
    required TResult Function(ErrorsResponse errors) sendNewSmsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsConfirmResponse response)? validationSuccess,
    TResult Function(ErrorsResponse errors)? validationError,
    TResult Function(ErrorsResponse errors)? sendNewSmsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsConfirmResponse response)? validationSuccess,
    TResult Function(ErrorsResponse errors)? validationError,
    TResult Function(ErrorsResponse errors)? sendNewSmsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ValidationSuccess value) validationSuccess,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(SendNewSmsError value) sendNewSmsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ValidationSuccess value)? validationSuccess,
    TResult Function(ValidationError value)? validationError,
    TResult Function(SendNewSmsError value)? sendNewSmsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ValidationSuccess value)? validationSuccess,
    TResult Function(ValidationError value)? validationError,
    TResult Function(SendNewSmsError value)? sendNewSmsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsCodeStateCopyWith<$Res> {
  factory $SmsCodeStateCopyWith(
          SmsCodeState value, $Res Function(SmsCodeState) then) =
      _$SmsCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SmsCodeStateCopyWithImpl<$Res> implements $SmsCodeStateCopyWith<$Res> {
  _$SmsCodeStateCopyWithImpl(this._value, this._then);

  final SmsCodeState _value;
  // ignore: unused_field
  final $Res Function(SmsCodeState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SmsCodeStateCopyWithImpl<$Res>
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
    return 'SmsCodeState.initial()';
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
    required TResult Function(SmsConfirmResponse response) validationSuccess,
    required TResult Function(ErrorsResponse errors) validationError,
    required TResult Function(ErrorsResponse errors) sendNewSmsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsConfirmResponse response)? validationSuccess,
    TResult Function(ErrorsResponse errors)? validationError,
    TResult Function(ErrorsResponse errors)? sendNewSmsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsConfirmResponse response)? validationSuccess,
    TResult Function(ErrorsResponse errors)? validationError,
    TResult Function(ErrorsResponse errors)? sendNewSmsError,
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
    required TResult Function(ValidationSuccess value) validationSuccess,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(SendNewSmsError value) sendNewSmsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ValidationSuccess value)? validationSuccess,
    TResult Function(ValidationError value)? validationError,
    TResult Function(SendNewSmsError value)? sendNewSmsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ValidationSuccess value)? validationSuccess,
    TResult Function(ValidationError value)? validationError,
    TResult Function(SendNewSmsError value)? sendNewSmsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SmsCodeState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$SmsCodeStateCopyWithImpl<$Res>
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
    return 'SmsCodeState.loading()';
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
    required TResult Function(SmsConfirmResponse response) validationSuccess,
    required TResult Function(ErrorsResponse errors) validationError,
    required TResult Function(ErrorsResponse errors) sendNewSmsError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsConfirmResponse response)? validationSuccess,
    TResult Function(ErrorsResponse errors)? validationError,
    TResult Function(ErrorsResponse errors)? sendNewSmsError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsConfirmResponse response)? validationSuccess,
    TResult Function(ErrorsResponse errors)? validationError,
    TResult Function(ErrorsResponse errors)? sendNewSmsError,
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
    required TResult Function(ValidationSuccess value) validationSuccess,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(SendNewSmsError value) sendNewSmsError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ValidationSuccess value)? validationSuccess,
    TResult Function(ValidationError value)? validationError,
    TResult Function(SendNewSmsError value)? sendNewSmsError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ValidationSuccess value)? validationSuccess,
    TResult Function(ValidationError value)? validationError,
    TResult Function(SendNewSmsError value)? sendNewSmsError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SmsCodeState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ValidationSuccessCopyWith<$Res> {
  factory $ValidationSuccessCopyWith(
          ValidationSuccess value, $Res Function(ValidationSuccess) then) =
      _$ValidationSuccessCopyWithImpl<$Res>;
  $Res call({SmsConfirmResponse response});

  $SmsConfirmResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$ValidationSuccessCopyWithImpl<$Res>
    extends _$SmsCodeStateCopyWithImpl<$Res>
    implements $ValidationSuccessCopyWith<$Res> {
  _$ValidationSuccessCopyWithImpl(
      ValidationSuccess _value, $Res Function(ValidationSuccess) _then)
      : super(_value, (v) => _then(v as ValidationSuccess));

  @override
  ValidationSuccess get _value => super._value as ValidationSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(ValidationSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SmsConfirmResponse,
    ));
  }

  @override
  $SmsConfirmResponseCopyWith<$Res> get response {
    return $SmsConfirmResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$ValidationSuccess implements ValidationSuccess {
  const _$ValidationSuccess(this.response);

  @override
  final SmsConfirmResponse response;

  @override
  String toString() {
    return 'SmsCodeState.validationSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidationSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $ValidationSuccessCopyWith<ValidationSuccess> get copyWith =>
      _$ValidationSuccessCopyWithImpl<ValidationSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SmsConfirmResponse response) validationSuccess,
    required TResult Function(ErrorsResponse errors) validationError,
    required TResult Function(ErrorsResponse errors) sendNewSmsError,
  }) {
    return validationSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsConfirmResponse response)? validationSuccess,
    TResult Function(ErrorsResponse errors)? validationError,
    TResult Function(ErrorsResponse errors)? sendNewSmsError,
  }) {
    return validationSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsConfirmResponse response)? validationSuccess,
    TResult Function(ErrorsResponse errors)? validationError,
    TResult Function(ErrorsResponse errors)? sendNewSmsError,
    required TResult orElse(),
  }) {
    if (validationSuccess != null) {
      return validationSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ValidationSuccess value) validationSuccess,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(SendNewSmsError value) sendNewSmsError,
  }) {
    return validationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ValidationSuccess value)? validationSuccess,
    TResult Function(ValidationError value)? validationError,
    TResult Function(SendNewSmsError value)? sendNewSmsError,
  }) {
    return validationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ValidationSuccess value)? validationSuccess,
    TResult Function(ValidationError value)? validationError,
    TResult Function(SendNewSmsError value)? sendNewSmsError,
    required TResult orElse(),
  }) {
    if (validationSuccess != null) {
      return validationSuccess(this);
    }
    return orElse();
  }
}

abstract class ValidationSuccess implements SmsCodeState {
  const factory ValidationSuccess(SmsConfirmResponse response) =
      _$ValidationSuccess;

  SmsConfirmResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidationSuccessCopyWith<ValidationSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationErrorCopyWith<$Res> {
  factory $ValidationErrorCopyWith(
          ValidationError value, $Res Function(ValidationError) then) =
      _$ValidationErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$ValidationErrorCopyWithImpl<$Res>
    extends _$SmsCodeStateCopyWithImpl<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  _$ValidationErrorCopyWithImpl(
      ValidationError _value, $Res Function(ValidationError) _then)
      : super(_value, (v) => _then(v as ValidationError));

  @override
  ValidationError get _value => super._value as ValidationError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(ValidationError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$ValidationError implements ValidationError {
  const _$ValidationError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'SmsCodeState.validationError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidationError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $ValidationErrorCopyWith<ValidationError> get copyWith =>
      _$ValidationErrorCopyWithImpl<ValidationError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SmsConfirmResponse response) validationSuccess,
    required TResult Function(ErrorsResponse errors) validationError,
    required TResult Function(ErrorsResponse errors) sendNewSmsError,
  }) {
    return validationError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsConfirmResponse response)? validationSuccess,
    TResult Function(ErrorsResponse errors)? validationError,
    TResult Function(ErrorsResponse errors)? sendNewSmsError,
  }) {
    return validationError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsConfirmResponse response)? validationSuccess,
    TResult Function(ErrorsResponse errors)? validationError,
    TResult Function(ErrorsResponse errors)? sendNewSmsError,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ValidationSuccess value) validationSuccess,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(SendNewSmsError value) sendNewSmsError,
  }) {
    return validationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ValidationSuccess value)? validationSuccess,
    TResult Function(ValidationError value)? validationError,
    TResult Function(SendNewSmsError value)? sendNewSmsError,
  }) {
    return validationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ValidationSuccess value)? validationSuccess,
    TResult Function(ValidationError value)? validationError,
    TResult Function(SendNewSmsError value)? sendNewSmsError,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(this);
    }
    return orElse();
  }
}

abstract class ValidationError implements SmsCodeState {
  const factory ValidationError(ErrorsResponse errors) = _$ValidationError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidationErrorCopyWith<ValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendNewSmsErrorCopyWith<$Res> {
  factory $SendNewSmsErrorCopyWith(
          SendNewSmsError value, $Res Function(SendNewSmsError) then) =
      _$SendNewSmsErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$SendNewSmsErrorCopyWithImpl<$Res>
    extends _$SmsCodeStateCopyWithImpl<$Res>
    implements $SendNewSmsErrorCopyWith<$Res> {
  _$SendNewSmsErrorCopyWithImpl(
      SendNewSmsError _value, $Res Function(SendNewSmsError) _then)
      : super(_value, (v) => _then(v as SendNewSmsError));

  @override
  SendNewSmsError get _value => super._value as SendNewSmsError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(SendNewSmsError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$SendNewSmsError implements SendNewSmsError {
  const _$SendNewSmsError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'SmsCodeState.sendNewSmsError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendNewSmsError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $SendNewSmsErrorCopyWith<SendNewSmsError> get copyWith =>
      _$SendNewSmsErrorCopyWithImpl<SendNewSmsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SmsConfirmResponse response) validationSuccess,
    required TResult Function(ErrorsResponse errors) validationError,
    required TResult Function(ErrorsResponse errors) sendNewSmsError,
  }) {
    return sendNewSmsError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsConfirmResponse response)? validationSuccess,
    TResult Function(ErrorsResponse errors)? validationError,
    TResult Function(ErrorsResponse errors)? sendNewSmsError,
  }) {
    return sendNewSmsError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SmsConfirmResponse response)? validationSuccess,
    TResult Function(ErrorsResponse errors)? validationError,
    TResult Function(ErrorsResponse errors)? sendNewSmsError,
    required TResult orElse(),
  }) {
    if (sendNewSmsError != null) {
      return sendNewSmsError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ValidationSuccess value) validationSuccess,
    required TResult Function(ValidationError value) validationError,
    required TResult Function(SendNewSmsError value) sendNewSmsError,
  }) {
    return sendNewSmsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ValidationSuccess value)? validationSuccess,
    TResult Function(ValidationError value)? validationError,
    TResult Function(SendNewSmsError value)? sendNewSmsError,
  }) {
    return sendNewSmsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ValidationSuccess value)? validationSuccess,
    TResult Function(ValidationError value)? validationError,
    TResult Function(SendNewSmsError value)? sendNewSmsError,
    required TResult orElse(),
  }) {
    if (sendNewSmsError != null) {
      return sendNewSmsError(this);
    }
    return orElse();
  }
}

abstract class SendNewSmsError implements SmsCodeState {
  const factory SendNewSmsError(ErrorsResponse errors) = _$SendNewSmsError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendNewSmsErrorCopyWith<SendNewSmsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SmsCodeEventTearOff {
  const _$SmsCodeEventTearOff();

  ValidateCode validateCode(SmsConfirmRequest request) {
    return ValidateCode(
      request,
    );
  }

  SendNewCode sendNewCode() {
    return const SendNewCode();
  }
}

/// @nodoc
const $SmsCodeEvent = _$SmsCodeEventTearOff();

/// @nodoc
mixin _$SmsCodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SmsConfirmRequest request) validateCode,
    required TResult Function() sendNewCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SmsConfirmRequest request)? validateCode,
    TResult Function()? sendNewCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SmsConfirmRequest request)? validateCode,
    TResult Function()? sendNewCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateCode value) validateCode,
    required TResult Function(SendNewCode value) sendNewCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ValidateCode value)? validateCode,
    TResult Function(SendNewCode value)? sendNewCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateCode value)? validateCode,
    TResult Function(SendNewCode value)? sendNewCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsCodeEventCopyWith<$Res> {
  factory $SmsCodeEventCopyWith(
          SmsCodeEvent value, $Res Function(SmsCodeEvent) then) =
      _$SmsCodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SmsCodeEventCopyWithImpl<$Res> implements $SmsCodeEventCopyWith<$Res> {
  _$SmsCodeEventCopyWithImpl(this._value, this._then);

  final SmsCodeEvent _value;
  // ignore: unused_field
  final $Res Function(SmsCodeEvent) _then;
}

/// @nodoc
abstract class $ValidateCodeCopyWith<$Res> {
  factory $ValidateCodeCopyWith(
          ValidateCode value, $Res Function(ValidateCode) then) =
      _$ValidateCodeCopyWithImpl<$Res>;
  $Res call({SmsConfirmRequest request});
}

/// @nodoc
class _$ValidateCodeCopyWithImpl<$Res> extends _$SmsCodeEventCopyWithImpl<$Res>
    implements $ValidateCodeCopyWith<$Res> {
  _$ValidateCodeCopyWithImpl(
      ValidateCode _value, $Res Function(ValidateCode) _then)
      : super(_value, (v) => _then(v as ValidateCode));

  @override
  ValidateCode get _value => super._value as ValidateCode;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(ValidateCode(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SmsConfirmRequest,
    ));
  }
}

/// @nodoc

class _$ValidateCode implements ValidateCode {
  const _$ValidateCode(this.request);

  @override
  final SmsConfirmRequest request;

  @override
  String toString() {
    return 'SmsCodeEvent.validateCode(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidateCode &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  $ValidateCodeCopyWith<ValidateCode> get copyWith =>
      _$ValidateCodeCopyWithImpl<ValidateCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SmsConfirmRequest request) validateCode,
    required TResult Function() sendNewCode,
  }) {
    return validateCode(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SmsConfirmRequest request)? validateCode,
    TResult Function()? sendNewCode,
  }) {
    return validateCode?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SmsConfirmRequest request)? validateCode,
    TResult Function()? sendNewCode,
    required TResult orElse(),
  }) {
    if (validateCode != null) {
      return validateCode(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateCode value) validateCode,
    required TResult Function(SendNewCode value) sendNewCode,
  }) {
    return validateCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ValidateCode value)? validateCode,
    TResult Function(SendNewCode value)? sendNewCode,
  }) {
    return validateCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateCode value)? validateCode,
    TResult Function(SendNewCode value)? sendNewCode,
    required TResult orElse(),
  }) {
    if (validateCode != null) {
      return validateCode(this);
    }
    return orElse();
  }
}

abstract class ValidateCode implements SmsCodeEvent {
  const factory ValidateCode(SmsConfirmRequest request) = _$ValidateCode;

  SmsConfirmRequest get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateCodeCopyWith<ValidateCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendNewCodeCopyWith<$Res> {
  factory $SendNewCodeCopyWith(
          SendNewCode value, $Res Function(SendNewCode) then) =
      _$SendNewCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendNewCodeCopyWithImpl<$Res> extends _$SmsCodeEventCopyWithImpl<$Res>
    implements $SendNewCodeCopyWith<$Res> {
  _$SendNewCodeCopyWithImpl(
      SendNewCode _value, $Res Function(SendNewCode) _then)
      : super(_value, (v) => _then(v as SendNewCode));

  @override
  SendNewCode get _value => super._value as SendNewCode;
}

/// @nodoc

class _$SendNewCode implements SendNewCode {
  const _$SendNewCode();

  @override
  String toString() {
    return 'SmsCodeEvent.sendNewCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendNewCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SmsConfirmRequest request) validateCode,
    required TResult Function() sendNewCode,
  }) {
    return sendNewCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SmsConfirmRequest request)? validateCode,
    TResult Function()? sendNewCode,
  }) {
    return sendNewCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SmsConfirmRequest request)? validateCode,
    TResult Function()? sendNewCode,
    required TResult orElse(),
  }) {
    if (sendNewCode != null) {
      return sendNewCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateCode value) validateCode,
    required TResult Function(SendNewCode value) sendNewCode,
  }) {
    return sendNewCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ValidateCode value)? validateCode,
    TResult Function(SendNewCode value)? sendNewCode,
  }) {
    return sendNewCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateCode value)? validateCode,
    TResult Function(SendNewCode value)? sendNewCode,
    required TResult orElse(),
  }) {
    if (sendNewCode != null) {
      return sendNewCode(this);
    }
    return orElse();
  }
}

abstract class SendNewCode implements SmsCodeEvent {
  const factory SendNewCode() = _$SendNewCode;
}
