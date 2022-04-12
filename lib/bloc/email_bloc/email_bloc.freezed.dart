// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmailStateTearOff {
  const _$EmailStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  EmailSavedSuccess emailSavedSuccess(EmailSendResp response) {
    return EmailSavedSuccess(
      response,
    );
  }

  EmailSavedError emailSavedError(ErrorsResponse errors) {
    return EmailSavedError(
      errors,
    );
  }
}

/// @nodoc
const $EmailState = _$EmailStateTearOff();

/// @nodoc
mixin _$EmailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(EmailSendResp response) emailSavedSuccess,
    required TResult Function(ErrorsResponse errors) emailSavedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EmailSendResp response)? emailSavedSuccess,
    TResult Function(ErrorsResponse errors)? emailSavedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EmailSendResp response)? emailSavedSuccess,
    TResult Function(ErrorsResponse errors)? emailSavedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EmailSavedSuccess value) emailSavedSuccess,
    required TResult Function(EmailSavedError value) emailSavedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailSavedSuccess value)? emailSavedSuccess,
    TResult Function(EmailSavedError value)? emailSavedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailSavedSuccess value)? emailSavedSuccess,
    TResult Function(EmailSavedError value)? emailSavedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailStateCopyWith<$Res> {
  factory $EmailStateCopyWith(
          EmailState value, $Res Function(EmailState) then) =
      _$EmailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailStateCopyWithImpl<$Res> implements $EmailStateCopyWith<$Res> {
  _$EmailStateCopyWithImpl(this._value, this._then);

  final EmailState _value;
  // ignore: unused_field
  final $Res Function(EmailState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$EmailStateCopyWithImpl<$Res>
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
    return 'EmailState.initial()';
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
    required TResult Function(EmailSendResp response) emailSavedSuccess,
    required TResult Function(ErrorsResponse errors) emailSavedError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EmailSendResp response)? emailSavedSuccess,
    TResult Function(ErrorsResponse errors)? emailSavedError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EmailSendResp response)? emailSavedSuccess,
    TResult Function(ErrorsResponse errors)? emailSavedError,
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
    required TResult Function(EmailSavedSuccess value) emailSavedSuccess,
    required TResult Function(EmailSavedError value) emailSavedError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailSavedSuccess value)? emailSavedSuccess,
    TResult Function(EmailSavedError value)? emailSavedError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailSavedSuccess value)? emailSavedSuccess,
    TResult Function(EmailSavedError value)? emailSavedError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements EmailState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$EmailStateCopyWithImpl<$Res>
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
    return 'EmailState.loading()';
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
    required TResult Function(EmailSendResp response) emailSavedSuccess,
    required TResult Function(ErrorsResponse errors) emailSavedError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EmailSendResp response)? emailSavedSuccess,
    TResult Function(ErrorsResponse errors)? emailSavedError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EmailSendResp response)? emailSavedSuccess,
    TResult Function(ErrorsResponse errors)? emailSavedError,
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
    required TResult Function(EmailSavedSuccess value) emailSavedSuccess,
    required TResult Function(EmailSavedError value) emailSavedError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailSavedSuccess value)? emailSavedSuccess,
    TResult Function(EmailSavedError value)? emailSavedError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailSavedSuccess value)? emailSavedSuccess,
    TResult Function(EmailSavedError value)? emailSavedError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements EmailState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $EmailSavedSuccessCopyWith<$Res> {
  factory $EmailSavedSuccessCopyWith(
          EmailSavedSuccess value, $Res Function(EmailSavedSuccess) then) =
      _$EmailSavedSuccessCopyWithImpl<$Res>;
  $Res call({EmailSendResp response});
}

/// @nodoc
class _$EmailSavedSuccessCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res>
    implements $EmailSavedSuccessCopyWith<$Res> {
  _$EmailSavedSuccessCopyWithImpl(
      EmailSavedSuccess _value, $Res Function(EmailSavedSuccess) _then)
      : super(_value, (v) => _then(v as EmailSavedSuccess));

  @override
  EmailSavedSuccess get _value => super._value as EmailSavedSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(EmailSavedSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as EmailSendResp,
    ));
  }
}

/// @nodoc

class _$EmailSavedSuccess implements EmailSavedSuccess {
  const _$EmailSavedSuccess(this.response);

  @override
  final EmailSendResp response;

  @override
  String toString() {
    return 'EmailState.emailSavedSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailSavedSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $EmailSavedSuccessCopyWith<EmailSavedSuccess> get copyWith =>
      _$EmailSavedSuccessCopyWithImpl<EmailSavedSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(EmailSendResp response) emailSavedSuccess,
    required TResult Function(ErrorsResponse errors) emailSavedError,
  }) {
    return emailSavedSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EmailSendResp response)? emailSavedSuccess,
    TResult Function(ErrorsResponse errors)? emailSavedError,
  }) {
    return emailSavedSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EmailSendResp response)? emailSavedSuccess,
    TResult Function(ErrorsResponse errors)? emailSavedError,
    required TResult orElse(),
  }) {
    if (emailSavedSuccess != null) {
      return emailSavedSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EmailSavedSuccess value) emailSavedSuccess,
    required TResult Function(EmailSavedError value) emailSavedError,
  }) {
    return emailSavedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailSavedSuccess value)? emailSavedSuccess,
    TResult Function(EmailSavedError value)? emailSavedError,
  }) {
    return emailSavedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailSavedSuccess value)? emailSavedSuccess,
    TResult Function(EmailSavedError value)? emailSavedError,
    required TResult orElse(),
  }) {
    if (emailSavedSuccess != null) {
      return emailSavedSuccess(this);
    }
    return orElse();
  }
}

abstract class EmailSavedSuccess implements EmailState {
  const factory EmailSavedSuccess(EmailSendResp response) = _$EmailSavedSuccess;

  EmailSendResp get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailSavedSuccessCopyWith<EmailSavedSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailSavedErrorCopyWith<$Res> {
  factory $EmailSavedErrorCopyWith(
          EmailSavedError value, $Res Function(EmailSavedError) then) =
      _$EmailSavedErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$EmailSavedErrorCopyWithImpl<$Res> extends _$EmailStateCopyWithImpl<$Res>
    implements $EmailSavedErrorCopyWith<$Res> {
  _$EmailSavedErrorCopyWithImpl(
      EmailSavedError _value, $Res Function(EmailSavedError) _then)
      : super(_value, (v) => _then(v as EmailSavedError));

  @override
  EmailSavedError get _value => super._value as EmailSavedError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(EmailSavedError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$EmailSavedError implements EmailSavedError {
  const _$EmailSavedError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'EmailState.emailSavedError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailSavedError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $EmailSavedErrorCopyWith<EmailSavedError> get copyWith =>
      _$EmailSavedErrorCopyWithImpl<EmailSavedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(EmailSendResp response) emailSavedSuccess,
    required TResult Function(ErrorsResponse errors) emailSavedError,
  }) {
    return emailSavedError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EmailSendResp response)? emailSavedSuccess,
    TResult Function(ErrorsResponse errors)? emailSavedError,
  }) {
    return emailSavedError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EmailSendResp response)? emailSavedSuccess,
    TResult Function(ErrorsResponse errors)? emailSavedError,
    required TResult orElse(),
  }) {
    if (emailSavedError != null) {
      return emailSavedError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EmailSavedSuccess value) emailSavedSuccess,
    required TResult Function(EmailSavedError value) emailSavedError,
  }) {
    return emailSavedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailSavedSuccess value)? emailSavedSuccess,
    TResult Function(EmailSavedError value)? emailSavedError,
  }) {
    return emailSavedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailSavedSuccess value)? emailSavedSuccess,
    TResult Function(EmailSavedError value)? emailSavedError,
    required TResult orElse(),
  }) {
    if (emailSavedError != null) {
      return emailSavedError(this);
    }
    return orElse();
  }
}

abstract class EmailSavedError implements EmailState {
  const factory EmailSavedError(ErrorsResponse errors) = _$EmailSavedError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailSavedErrorCopyWith<EmailSavedError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EmailEventTearOff {
  const _$EmailEventTearOff();

  SaveEmail saveEmail(String email) {
    return SaveEmail(
      email,
    );
  }
}

/// @nodoc
const $EmailEvent = _$EmailEventTearOff();

/// @nodoc
mixin _$EmailEvent {
  String get email => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) saveEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? saveEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? saveEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveEmail value) saveEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveEmail value)? saveEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveEmail value)? saveEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailEventCopyWith<EmailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailEventCopyWith<$Res> {
  factory $EmailEventCopyWith(
          EmailEvent value, $Res Function(EmailEvent) then) =
      _$EmailEventCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailEventCopyWithImpl<$Res> implements $EmailEventCopyWith<$Res> {
  _$EmailEventCopyWithImpl(this._value, this._then);

  final EmailEvent _value;
  // ignore: unused_field
  final $Res Function(EmailEvent) _then;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SaveEmailCopyWith<$Res> implements $EmailEventCopyWith<$Res> {
  factory $SaveEmailCopyWith(SaveEmail value, $Res Function(SaveEmail) then) =
      _$SaveEmailCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class _$SaveEmailCopyWithImpl<$Res> extends _$EmailEventCopyWithImpl<$Res>
    implements $SaveEmailCopyWith<$Res> {
  _$SaveEmailCopyWithImpl(SaveEmail _value, $Res Function(SaveEmail) _then)
      : super(_value, (v) => _then(v as SaveEmail));

  @override
  SaveEmail get _value => super._value as SaveEmail;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(SaveEmail(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveEmail implements SaveEmail {
  const _$SaveEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'EmailEvent.saveEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveEmail &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $SaveEmailCopyWith<SaveEmail> get copyWith =>
      _$SaveEmailCopyWithImpl<SaveEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) saveEmail,
  }) {
    return saveEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? saveEmail,
  }) {
    return saveEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? saveEmail,
    required TResult orElse(),
  }) {
    if (saveEmail != null) {
      return saveEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveEmail value) saveEmail,
  }) {
    return saveEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveEmail value)? saveEmail,
  }) {
    return saveEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveEmail value)? saveEmail,
    required TResult orElse(),
  }) {
    if (saveEmail != null) {
      return saveEmail(this);
    }
    return orElse();
  }
}

abstract class SaveEmail implements EmailEvent {
  const factory SaveEmail(String email) = _$SaveEmail;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SaveEmailCopyWith<SaveEmail> get copyWith =>
      throw _privateConstructorUsedError;
}
