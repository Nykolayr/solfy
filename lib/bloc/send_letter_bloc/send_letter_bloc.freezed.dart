// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_letter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SendLetterStateTearOff {
  const _$SendLetterStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  SentSuccess sentSuccess() {
    return const SentSuccess();
  }

  SentError sentError({ErrorsResponse? errors}) {
    return SentError(
      errors: errors,
    );
  }
}

/// @nodoc
const $SendLetterState = _$SendLetterStateTearOff();

/// @nodoc
mixin _$SendLetterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() sentSuccess,
    required TResult Function(ErrorsResponse? errors) sentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sentSuccess,
    TResult Function(ErrorsResponse? errors)? sentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sentSuccess,
    TResult Function(ErrorsResponse? errors)? sentError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SentSuccess value) sentSuccess,
    required TResult Function(SentError value) sentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SentSuccess value)? sentSuccess,
    TResult Function(SentError value)? sentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SentSuccess value)? sentSuccess,
    TResult Function(SentError value)? sentError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendLetterStateCopyWith<$Res> {
  factory $SendLetterStateCopyWith(
          SendLetterState value, $Res Function(SendLetterState) then) =
      _$SendLetterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendLetterStateCopyWithImpl<$Res>
    implements $SendLetterStateCopyWith<$Res> {
  _$SendLetterStateCopyWithImpl(this._value, this._then);

  final SendLetterState _value;
  // ignore: unused_field
  final $Res Function(SendLetterState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SendLetterStateCopyWithImpl<$Res>
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
    return 'SendLetterState.initial()';
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
    required TResult Function() sentSuccess,
    required TResult Function(ErrorsResponse? errors) sentError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sentSuccess,
    TResult Function(ErrorsResponse? errors)? sentError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sentSuccess,
    TResult Function(ErrorsResponse? errors)? sentError,
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
    required TResult Function(SentSuccess value) sentSuccess,
    required TResult Function(SentError value) sentError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SentSuccess value)? sentSuccess,
    TResult Function(SentError value)? sentError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SentSuccess value)? sentSuccess,
    TResult Function(SentError value)? sentError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SendLetterState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$SendLetterStateCopyWithImpl<$Res>
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
    return 'SendLetterState.loading()';
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
    required TResult Function() sentSuccess,
    required TResult Function(ErrorsResponse? errors) sentError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sentSuccess,
    TResult Function(ErrorsResponse? errors)? sentError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sentSuccess,
    TResult Function(ErrorsResponse? errors)? sentError,
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
    required TResult Function(SentSuccess value) sentSuccess,
    required TResult Function(SentError value) sentError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SentSuccess value)? sentSuccess,
    TResult Function(SentError value)? sentError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SentSuccess value)? sentSuccess,
    TResult Function(SentError value)? sentError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SendLetterState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $SentSuccessCopyWith<$Res> {
  factory $SentSuccessCopyWith(
          SentSuccess value, $Res Function(SentSuccess) then) =
      _$SentSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SentSuccessCopyWithImpl<$Res>
    extends _$SendLetterStateCopyWithImpl<$Res>
    implements $SentSuccessCopyWith<$Res> {
  _$SentSuccessCopyWithImpl(
      SentSuccess _value, $Res Function(SentSuccess) _then)
      : super(_value, (v) => _then(v as SentSuccess));

  @override
  SentSuccess get _value => super._value as SentSuccess;
}

/// @nodoc

class _$SentSuccess implements SentSuccess {
  const _$SentSuccess();

  @override
  String toString() {
    return 'SendLetterState.sentSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SentSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() sentSuccess,
    required TResult Function(ErrorsResponse? errors) sentError,
  }) {
    return sentSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sentSuccess,
    TResult Function(ErrorsResponse? errors)? sentError,
  }) {
    return sentSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sentSuccess,
    TResult Function(ErrorsResponse? errors)? sentError,
    required TResult orElse(),
  }) {
    if (sentSuccess != null) {
      return sentSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SentSuccess value) sentSuccess,
    required TResult Function(SentError value) sentError,
  }) {
    return sentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SentSuccess value)? sentSuccess,
    TResult Function(SentError value)? sentError,
  }) {
    return sentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SentSuccess value)? sentSuccess,
    TResult Function(SentError value)? sentError,
    required TResult orElse(),
  }) {
    if (sentSuccess != null) {
      return sentSuccess(this);
    }
    return orElse();
  }
}

abstract class SentSuccess implements SendLetterState {
  const factory SentSuccess() = _$SentSuccess;
}

/// @nodoc
abstract class $SentErrorCopyWith<$Res> {
  factory $SentErrorCopyWith(SentError value, $Res Function(SentError) then) =
      _$SentErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse? errors});
}

/// @nodoc
class _$SentErrorCopyWithImpl<$Res> extends _$SendLetterStateCopyWithImpl<$Res>
    implements $SentErrorCopyWith<$Res> {
  _$SentErrorCopyWithImpl(SentError _value, $Res Function(SentError) _then)
      : super(_value, (v) => _then(v as SentError));

  @override
  SentError get _value => super._value as SentError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(SentError(
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse?,
    ));
  }
}

/// @nodoc

class _$SentError implements SentError {
  const _$SentError({this.errors});

  @override
  final ErrorsResponse? errors;

  @override
  String toString() {
    return 'SendLetterState.sentError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SentError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $SentErrorCopyWith<SentError> get copyWith =>
      _$SentErrorCopyWithImpl<SentError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() sentSuccess,
    required TResult Function(ErrorsResponse? errors) sentError,
  }) {
    return sentError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sentSuccess,
    TResult Function(ErrorsResponse? errors)? sentError,
  }) {
    return sentError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sentSuccess,
    TResult Function(ErrorsResponse? errors)? sentError,
    required TResult orElse(),
  }) {
    if (sentError != null) {
      return sentError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SentSuccess value) sentSuccess,
    required TResult Function(SentError value) sentError,
  }) {
    return sentError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SentSuccess value)? sentSuccess,
    TResult Function(SentError value)? sentError,
  }) {
    return sentError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SentSuccess value)? sentSuccess,
    TResult Function(SentError value)? sentError,
    required TResult orElse(),
  }) {
    if (sentError != null) {
      return sentError(this);
    }
    return orElse();
  }
}

abstract class SentError implements SendLetterState {
  const factory SentError({ErrorsResponse? errors}) = _$SentError;

  ErrorsResponse? get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SentErrorCopyWith<SentError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SendLetterEventTearOff {
  const _$SendLetterEventTearOff();

  SendLetter sendLetter(
      String email, String message, List<ImageFileModel> images) {
    return SendLetter(
      email,
      message,
      images,
    );
  }
}

/// @nodoc
const $SendLetterEvent = _$SendLetterEventTearOff();

/// @nodoc
mixin _$SendLetterEvent {
  String get email => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ImageFileModel> get images => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String message, List<ImageFileModel> images)
        sendLetter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String message, List<ImageFileModel> images)?
        sendLetter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String message, List<ImageFileModel> images)?
        sendLetter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendLetter value) sendLetter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendLetter value)? sendLetter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendLetter value)? sendLetter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendLetterEventCopyWith<SendLetterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendLetterEventCopyWith<$Res> {
  factory $SendLetterEventCopyWith(
          SendLetterEvent value, $Res Function(SendLetterEvent) then) =
      _$SendLetterEventCopyWithImpl<$Res>;
  $Res call({String email, String message, List<ImageFileModel> images});
}

/// @nodoc
class _$SendLetterEventCopyWithImpl<$Res>
    implements $SendLetterEventCopyWith<$Res> {
  _$SendLetterEventCopyWithImpl(this._value, this._then);

  final SendLetterEvent _value;
  // ignore: unused_field
  final $Res Function(SendLetterEvent) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? message = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageFileModel>,
    ));
  }
}

/// @nodoc
abstract class $SendLetterCopyWith<$Res>
    implements $SendLetterEventCopyWith<$Res> {
  factory $SendLetterCopyWith(
          SendLetter value, $Res Function(SendLetter) then) =
      _$SendLetterCopyWithImpl<$Res>;
  @override
  $Res call({String email, String message, List<ImageFileModel> images});
}

/// @nodoc
class _$SendLetterCopyWithImpl<$Res> extends _$SendLetterEventCopyWithImpl<$Res>
    implements $SendLetterCopyWith<$Res> {
  _$SendLetterCopyWithImpl(SendLetter _value, $Res Function(SendLetter) _then)
      : super(_value, (v) => _then(v as SendLetter));

  @override
  SendLetter get _value => super._value as SendLetter;

  @override
  $Res call({
    Object? email = freezed,
    Object? message = freezed,
    Object? images = freezed,
  }) {
    return _then(SendLetter(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageFileModel>,
    ));
  }
}

/// @nodoc

class _$SendLetter implements SendLetter {
  const _$SendLetter(this.email, this.message, this.images);

  @override
  final String email;
  @override
  final String message;
  @override
  final List<ImageFileModel> images;

  @override
  String toString() {
    return 'SendLetterEvent.sendLetter(email: $email, message: $message, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendLetter &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(images);

  @JsonKey(ignore: true)
  @override
  $SendLetterCopyWith<SendLetter> get copyWith =>
      _$SendLetterCopyWithImpl<SendLetter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String message, List<ImageFileModel> images)
        sendLetter,
  }) {
    return sendLetter(email, message, images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String message, List<ImageFileModel> images)?
        sendLetter,
  }) {
    return sendLetter?.call(email, message, images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String message, List<ImageFileModel> images)?
        sendLetter,
    required TResult orElse(),
  }) {
    if (sendLetter != null) {
      return sendLetter(email, message, images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendLetter value) sendLetter,
  }) {
    return sendLetter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendLetter value)? sendLetter,
  }) {
    return sendLetter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendLetter value)? sendLetter,
    required TResult orElse(),
  }) {
    if (sendLetter != null) {
      return sendLetter(this);
    }
    return orElse();
  }
}

abstract class SendLetter implements SendLetterEvent {
  const factory SendLetter(
      String email, String message, List<ImageFileModel> images) = _$SendLetter;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  List<ImageFileModel> get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SendLetterCopyWith<SendLetter> get copyWith =>
      throw _privateConstructorUsedError;
}
