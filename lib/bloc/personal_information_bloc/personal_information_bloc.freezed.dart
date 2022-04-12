// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'personal_information_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PersonalInformationStateTearOff {
  const _$PersonalInformationStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  EmailChangedSuccess emailChangedSuccess() {
    return const EmailChangedSuccess();
  }

  EmailChangedError emailChangedError({ErrorsResponse? errors}) {
    return EmailChangedError(
      errors: errors,
    );
  }
}

/// @nodoc
const $PersonalInformationState = _$PersonalInformationStateTearOff();

/// @nodoc
mixin _$PersonalInformationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emailChangedSuccess,
    required TResult Function(ErrorsResponse? errors) emailChangedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailChangedSuccess,
    TResult Function(ErrorsResponse? errors)? emailChangedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailChangedSuccess,
    TResult Function(ErrorsResponse? errors)? emailChangedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EmailChangedSuccess value) emailChangedSuccess,
    required TResult Function(EmailChangedError value) emailChangedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailChangedSuccess value)? emailChangedSuccess,
    TResult Function(EmailChangedError value)? emailChangedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailChangedSuccess value)? emailChangedSuccess,
    TResult Function(EmailChangedError value)? emailChangedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInformationStateCopyWith<$Res> {
  factory $PersonalInformationStateCopyWith(PersonalInformationState value,
          $Res Function(PersonalInformationState) then) =
      _$PersonalInformationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PersonalInformationStateCopyWithImpl<$Res>
    implements $PersonalInformationStateCopyWith<$Res> {
  _$PersonalInformationStateCopyWithImpl(this._value, this._then);

  final PersonalInformationState _value;
  // ignore: unused_field
  final $Res Function(PersonalInformationState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$PersonalInformationStateCopyWithImpl<$Res>
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
    return 'PersonalInformationState.initial()';
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
    required TResult Function() emailChangedSuccess,
    required TResult Function(ErrorsResponse? errors) emailChangedError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailChangedSuccess,
    TResult Function(ErrorsResponse? errors)? emailChangedError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailChangedSuccess,
    TResult Function(ErrorsResponse? errors)? emailChangedError,
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
    required TResult Function(EmailChangedSuccess value) emailChangedSuccess,
    required TResult Function(EmailChangedError value) emailChangedError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailChangedSuccess value)? emailChangedSuccess,
    TResult Function(EmailChangedError value)? emailChangedError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailChangedSuccess value)? emailChangedSuccess,
    TResult Function(EmailChangedError value)? emailChangedError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PersonalInformationState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$PersonalInformationStateCopyWithImpl<$Res>
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
    return 'PersonalInformationState.loading()';
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
    required TResult Function() emailChangedSuccess,
    required TResult Function(ErrorsResponse? errors) emailChangedError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailChangedSuccess,
    TResult Function(ErrorsResponse? errors)? emailChangedError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailChangedSuccess,
    TResult Function(ErrorsResponse? errors)? emailChangedError,
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
    required TResult Function(EmailChangedSuccess value) emailChangedSuccess,
    required TResult Function(EmailChangedError value) emailChangedError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailChangedSuccess value)? emailChangedSuccess,
    TResult Function(EmailChangedError value)? emailChangedError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailChangedSuccess value)? emailChangedSuccess,
    TResult Function(EmailChangedError value)? emailChangedError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements PersonalInformationState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $EmailChangedSuccessCopyWith<$Res> {
  factory $EmailChangedSuccessCopyWith(
          EmailChangedSuccess value, $Res Function(EmailChangedSuccess) then) =
      _$EmailChangedSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailChangedSuccessCopyWithImpl<$Res>
    extends _$PersonalInformationStateCopyWithImpl<$Res>
    implements $EmailChangedSuccessCopyWith<$Res> {
  _$EmailChangedSuccessCopyWithImpl(
      EmailChangedSuccess _value, $Res Function(EmailChangedSuccess) _then)
      : super(_value, (v) => _then(v as EmailChangedSuccess));

  @override
  EmailChangedSuccess get _value => super._value as EmailChangedSuccess;
}

/// @nodoc

class _$EmailChangedSuccess implements EmailChangedSuccess {
  const _$EmailChangedSuccess();

  @override
  String toString() {
    return 'PersonalInformationState.emailChangedSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailChangedSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emailChangedSuccess,
    required TResult Function(ErrorsResponse? errors) emailChangedError,
  }) {
    return emailChangedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailChangedSuccess,
    TResult Function(ErrorsResponse? errors)? emailChangedError,
  }) {
    return emailChangedSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailChangedSuccess,
    TResult Function(ErrorsResponse? errors)? emailChangedError,
    required TResult orElse(),
  }) {
    if (emailChangedSuccess != null) {
      return emailChangedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EmailChangedSuccess value) emailChangedSuccess,
    required TResult Function(EmailChangedError value) emailChangedError,
  }) {
    return emailChangedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailChangedSuccess value)? emailChangedSuccess,
    TResult Function(EmailChangedError value)? emailChangedError,
  }) {
    return emailChangedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailChangedSuccess value)? emailChangedSuccess,
    TResult Function(EmailChangedError value)? emailChangedError,
    required TResult orElse(),
  }) {
    if (emailChangedSuccess != null) {
      return emailChangedSuccess(this);
    }
    return orElse();
  }
}

abstract class EmailChangedSuccess implements PersonalInformationState {
  const factory EmailChangedSuccess() = _$EmailChangedSuccess;
}

/// @nodoc
abstract class $EmailChangedErrorCopyWith<$Res> {
  factory $EmailChangedErrorCopyWith(
          EmailChangedError value, $Res Function(EmailChangedError) then) =
      _$EmailChangedErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse? errors});
}

/// @nodoc
class _$EmailChangedErrorCopyWithImpl<$Res>
    extends _$PersonalInformationStateCopyWithImpl<$Res>
    implements $EmailChangedErrorCopyWith<$Res> {
  _$EmailChangedErrorCopyWithImpl(
      EmailChangedError _value, $Res Function(EmailChangedError) _then)
      : super(_value, (v) => _then(v as EmailChangedError));

  @override
  EmailChangedError get _value => super._value as EmailChangedError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(EmailChangedError(
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse?,
    ));
  }
}

/// @nodoc

class _$EmailChangedError implements EmailChangedError {
  const _$EmailChangedError({this.errors});

  @override
  final ErrorsResponse? errors;

  @override
  String toString() {
    return 'PersonalInformationState.emailChangedError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChangedError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $EmailChangedErrorCopyWith<EmailChangedError> get copyWith =>
      _$EmailChangedErrorCopyWithImpl<EmailChangedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emailChangedSuccess,
    required TResult Function(ErrorsResponse? errors) emailChangedError,
  }) {
    return emailChangedError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailChangedSuccess,
    TResult Function(ErrorsResponse? errors)? emailChangedError,
  }) {
    return emailChangedError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emailChangedSuccess,
    TResult Function(ErrorsResponse? errors)? emailChangedError,
    required TResult orElse(),
  }) {
    if (emailChangedError != null) {
      return emailChangedError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(EmailChangedSuccess value) emailChangedSuccess,
    required TResult Function(EmailChangedError value) emailChangedError,
  }) {
    return emailChangedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailChangedSuccess value)? emailChangedSuccess,
    TResult Function(EmailChangedError value)? emailChangedError,
  }) {
    return emailChangedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(EmailChangedSuccess value)? emailChangedSuccess,
    TResult Function(EmailChangedError value)? emailChangedError,
    required TResult orElse(),
  }) {
    if (emailChangedError != null) {
      return emailChangedError(this);
    }
    return orElse();
  }
}

abstract class EmailChangedError implements PersonalInformationState {
  const factory EmailChangedError({ErrorsResponse? errors}) =
      _$EmailChangedError;

  ErrorsResponse? get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailChangedErrorCopyWith<EmailChangedError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PersonalInformationEventTearOff {
  const _$PersonalInformationEventTearOff();

  ChangeEmail changeEmail(String email) {
    return ChangeEmail(
      email,
    );
  }
}

/// @nodoc
const $PersonalInformationEvent = _$PersonalInformationEventTearOff();

/// @nodoc
mixin _$PersonalInformationEvent {
  String get email => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) changeEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEmail value) changeEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalInformationEventCopyWith<PersonalInformationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInformationEventCopyWith<$Res> {
  factory $PersonalInformationEventCopyWith(PersonalInformationEvent value,
          $Res Function(PersonalInformationEvent) then) =
      _$PersonalInformationEventCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$PersonalInformationEventCopyWithImpl<$Res>
    implements $PersonalInformationEventCopyWith<$Res> {
  _$PersonalInformationEventCopyWithImpl(this._value, this._then);

  final PersonalInformationEvent _value;
  // ignore: unused_field
  final $Res Function(PersonalInformationEvent) _then;

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
abstract class $ChangeEmailCopyWith<$Res>
    implements $PersonalInformationEventCopyWith<$Res> {
  factory $ChangeEmailCopyWith(
          ChangeEmail value, $Res Function(ChangeEmail) then) =
      _$ChangeEmailCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class _$ChangeEmailCopyWithImpl<$Res>
    extends _$PersonalInformationEventCopyWithImpl<$Res>
    implements $ChangeEmailCopyWith<$Res> {
  _$ChangeEmailCopyWithImpl(
      ChangeEmail _value, $Res Function(ChangeEmail) _then)
      : super(_value, (v) => _then(v as ChangeEmail));

  @override
  ChangeEmail get _value => super._value as ChangeEmail;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(ChangeEmail(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeEmail implements ChangeEmail {
  const _$ChangeEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'PersonalInformationEvent.changeEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeEmail &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $ChangeEmailCopyWith<ChangeEmail> get copyWith =>
      _$ChangeEmailCopyWithImpl<ChangeEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) changeEmail,
  }) {
    return changeEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
  }) {
    return changeEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? changeEmail,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEmail value) changeEmail,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class ChangeEmail implements PersonalInformationEvent {
  const factory ChangeEmail(String email) = _$ChangeEmail;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ChangeEmailCopyWith<ChangeEmail> get copyWith =>
      throw _privateConstructorUsedError;
}
