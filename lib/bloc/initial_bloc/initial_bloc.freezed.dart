// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'initial_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InitialStateTearOff {
  const _$InitialStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  SuccessDownload successDownload() {
    return const SuccessDownload();
  }

  UnsuccessDownload unsuccessDownload(ErrorsResponse errors) {
    return UnsuccessDownload(
      errors,
    );
  }

  SignIn signIn() {
    return const SignIn();
  }

  SignUp signUp(Locale? locale) {
    return SignUp(
      locale,
    );
  }

  PickLanguage pickLanguage() {
    return const PickLanguage();
  }
}

/// @nodoc
const $InitialState = _$InitialStateTearOff();

/// @nodoc
mixin _$InitialState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successDownload,
    required TResult Function(ErrorsResponse errors) unsuccessDownload,
    required TResult Function() signIn,
    required TResult Function(Locale? locale) signUp,
    required TResult Function() pickLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuccessDownload value) successDownload,
    required TResult Function(UnsuccessDownload value) unsuccessDownload,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(PickLanguage value) pickLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialStateCopyWith<$Res> {
  factory $InitialStateCopyWith(
          InitialState value, $Res Function(InitialState) then) =
      _$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialStateCopyWithImpl<$Res> implements $InitialStateCopyWith<$Res> {
  _$InitialStateCopyWithImpl(this._value, this._then);

  final InitialState _value;
  // ignore: unused_field
  final $Res Function(InitialState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$InitialStateCopyWithImpl<$Res>
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
    return 'InitialState.initial()';
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
    required TResult Function() successDownload,
    required TResult Function(ErrorsResponse errors) unsuccessDownload,
    required TResult Function() signIn,
    required TResult Function(Locale? locale) signUp,
    required TResult Function() pickLanguage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
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
    required TResult Function(SuccessDownload value) successDownload,
    required TResult Function(UnsuccessDownload value) unsuccessDownload,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(PickLanguage value) pickLanguage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements InitialState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$InitialStateCopyWithImpl<$Res>
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
    return 'InitialState.loading()';
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
    required TResult Function() successDownload,
    required TResult Function(ErrorsResponse errors) unsuccessDownload,
    required TResult Function() signIn,
    required TResult Function(Locale? locale) signUp,
    required TResult Function() pickLanguage,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
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
    required TResult Function(SuccessDownload value) successDownload,
    required TResult Function(UnsuccessDownload value) unsuccessDownload,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(PickLanguage value) pickLanguage,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements InitialState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $SuccessDownloadCopyWith<$Res> {
  factory $SuccessDownloadCopyWith(
          SuccessDownload value, $Res Function(SuccessDownload) then) =
      _$SuccessDownloadCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessDownloadCopyWithImpl<$Res>
    extends _$InitialStateCopyWithImpl<$Res>
    implements $SuccessDownloadCopyWith<$Res> {
  _$SuccessDownloadCopyWithImpl(
      SuccessDownload _value, $Res Function(SuccessDownload) _then)
      : super(_value, (v) => _then(v as SuccessDownload));

  @override
  SuccessDownload get _value => super._value as SuccessDownload;
}

/// @nodoc

class _$SuccessDownload implements SuccessDownload {
  const _$SuccessDownload();

  @override
  String toString() {
    return 'InitialState.successDownload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessDownload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successDownload,
    required TResult Function(ErrorsResponse errors) unsuccessDownload,
    required TResult Function() signIn,
    required TResult Function(Locale? locale) signUp,
    required TResult Function() pickLanguage,
  }) {
    return successDownload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
  }) {
    return successDownload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
    required TResult orElse(),
  }) {
    if (successDownload != null) {
      return successDownload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuccessDownload value) successDownload,
    required TResult Function(UnsuccessDownload value) unsuccessDownload,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(PickLanguage value) pickLanguage,
  }) {
    return successDownload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
  }) {
    return successDownload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
    required TResult orElse(),
  }) {
    if (successDownload != null) {
      return successDownload(this);
    }
    return orElse();
  }
}

abstract class SuccessDownload implements InitialState {
  const factory SuccessDownload() = _$SuccessDownload;
}

/// @nodoc
abstract class $UnsuccessDownloadCopyWith<$Res> {
  factory $UnsuccessDownloadCopyWith(
          UnsuccessDownload value, $Res Function(UnsuccessDownload) then) =
      _$UnsuccessDownloadCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$UnsuccessDownloadCopyWithImpl<$Res>
    extends _$InitialStateCopyWithImpl<$Res>
    implements $UnsuccessDownloadCopyWith<$Res> {
  _$UnsuccessDownloadCopyWithImpl(
      UnsuccessDownload _value, $Res Function(UnsuccessDownload) _then)
      : super(_value, (v) => _then(v as UnsuccessDownload));

  @override
  UnsuccessDownload get _value => super._value as UnsuccessDownload;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(UnsuccessDownload(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$UnsuccessDownload implements UnsuccessDownload {
  const _$UnsuccessDownload(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'InitialState.unsuccessDownload(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnsuccessDownload &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $UnsuccessDownloadCopyWith<UnsuccessDownload> get copyWith =>
      _$UnsuccessDownloadCopyWithImpl<UnsuccessDownload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successDownload,
    required TResult Function(ErrorsResponse errors) unsuccessDownload,
    required TResult Function() signIn,
    required TResult Function(Locale? locale) signUp,
    required TResult Function() pickLanguage,
  }) {
    return unsuccessDownload(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
  }) {
    return unsuccessDownload?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
    required TResult orElse(),
  }) {
    if (unsuccessDownload != null) {
      return unsuccessDownload(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuccessDownload value) successDownload,
    required TResult Function(UnsuccessDownload value) unsuccessDownload,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(PickLanguage value) pickLanguage,
  }) {
    return unsuccessDownload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
  }) {
    return unsuccessDownload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
    required TResult orElse(),
  }) {
    if (unsuccessDownload != null) {
      return unsuccessDownload(this);
    }
    return orElse();
  }
}

abstract class UnsuccessDownload implements InitialState {
  const factory UnsuccessDownload(ErrorsResponse errors) = _$UnsuccessDownload;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnsuccessDownloadCopyWith<UnsuccessDownload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInCopyWith<$Res> {
  factory $SignInCopyWith(SignIn value, $Res Function(SignIn) then) =
      _$SignInCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInCopyWithImpl<$Res> extends _$InitialStateCopyWithImpl<$Res>
    implements $SignInCopyWith<$Res> {
  _$SignInCopyWithImpl(SignIn _value, $Res Function(SignIn) _then)
      : super(_value, (v) => _then(v as SignIn));

  @override
  SignIn get _value => super._value as SignIn;
}

/// @nodoc

class _$SignIn implements SignIn {
  const _$SignIn();

  @override
  String toString() {
    return 'InitialState.signIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successDownload,
    required TResult Function(ErrorsResponse errors) unsuccessDownload,
    required TResult Function() signIn,
    required TResult Function(Locale? locale) signUp,
    required TResult Function() pickLanguage,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuccessDownload value) successDownload,
    required TResult Function(UnsuccessDownload value) unsuccessDownload,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(PickLanguage value) pickLanguage,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements InitialState {
  const factory SignIn() = _$SignIn;
}

/// @nodoc
abstract class $SignUpCopyWith<$Res> {
  factory $SignUpCopyWith(SignUp value, $Res Function(SignUp) then) =
      _$SignUpCopyWithImpl<$Res>;
  $Res call({Locale? locale});
}

/// @nodoc
class _$SignUpCopyWithImpl<$Res> extends _$InitialStateCopyWithImpl<$Res>
    implements $SignUpCopyWith<$Res> {
  _$SignUpCopyWithImpl(SignUp _value, $Res Function(SignUp) _then)
      : super(_value, (v) => _then(v as SignUp));

  @override
  SignUp get _value => super._value as SignUp;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(SignUp(
      locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$SignUp implements SignUp {
  const _$SignUp(this.locale);

  @override
  final Locale? locale;

  @override
  String toString() {
    return 'InitialState.signUp(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUp &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  $SignUpCopyWith<SignUp> get copyWith =>
      _$SignUpCopyWithImpl<SignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successDownload,
    required TResult Function(ErrorsResponse errors) unsuccessDownload,
    required TResult Function() signIn,
    required TResult Function(Locale? locale) signUp,
    required TResult Function() pickLanguage,
  }) {
    return signUp(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
  }) {
    return signUp?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuccessDownload value) successDownload,
    required TResult Function(UnsuccessDownload value) unsuccessDownload,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(PickLanguage value) pickLanguage,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements InitialState {
  const factory SignUp(Locale? locale) = _$SignUp;

  Locale? get locale => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpCopyWith<SignUp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickLanguageCopyWith<$Res> {
  factory $PickLanguageCopyWith(
          PickLanguage value, $Res Function(PickLanguage) then) =
      _$PickLanguageCopyWithImpl<$Res>;
}

/// @nodoc
class _$PickLanguageCopyWithImpl<$Res> extends _$InitialStateCopyWithImpl<$Res>
    implements $PickLanguageCopyWith<$Res> {
  _$PickLanguageCopyWithImpl(
      PickLanguage _value, $Res Function(PickLanguage) _then)
      : super(_value, (v) => _then(v as PickLanguage));

  @override
  PickLanguage get _value => super._value as PickLanguage;
}

/// @nodoc

class _$PickLanguage implements PickLanguage {
  const _$PickLanguage();

  @override
  String toString() {
    return 'InitialState.pickLanguage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PickLanguage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successDownload,
    required TResult Function(ErrorsResponse errors) unsuccessDownload,
    required TResult Function() signIn,
    required TResult Function(Locale? locale) signUp,
    required TResult Function() pickLanguage,
  }) {
    return pickLanguage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
  }) {
    return pickLanguage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successDownload,
    TResult Function(ErrorsResponse errors)? unsuccessDownload,
    TResult Function()? signIn,
    TResult Function(Locale? locale)? signUp,
    TResult Function()? pickLanguage,
    required TResult orElse(),
  }) {
    if (pickLanguage != null) {
      return pickLanguage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuccessDownload value) successDownload,
    required TResult Function(UnsuccessDownload value) unsuccessDownload,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
    required TResult Function(PickLanguage value) pickLanguage,
  }) {
    return pickLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
  }) {
    return pickLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessDownload value)? successDownload,
    TResult Function(UnsuccessDownload value)? unsuccessDownload,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(PickLanguage value)? pickLanguage,
    required TResult orElse(),
  }) {
    if (pickLanguage != null) {
      return pickLanguage(this);
    }
    return orElse();
  }
}

abstract class PickLanguage implements InitialState {
  const factory PickLanguage() = _$PickLanguage;
}

/// @nodoc
class _$InitialEventTearOff {
  const _$InitialEventTearOff();

  GetStaticContent getStaticContent() {
    return const GetStaticContent();
  }

  ResolveFirstScreen resolveFirstScreen() {
    return const ResolveFirstScreen();
  }
}

/// @nodoc
const $InitialEvent = _$InitialEventTearOff();

/// @nodoc
mixin _$InitialEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStaticContent,
    required TResult Function() resolveFirstScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getStaticContent,
    TResult Function()? resolveFirstScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStaticContent,
    TResult Function()? resolveFirstScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetStaticContent value) getStaticContent,
    required TResult Function(ResolveFirstScreen value) resolveFirstScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetStaticContent value)? getStaticContent,
    TResult Function(ResolveFirstScreen value)? resolveFirstScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetStaticContent value)? getStaticContent,
    TResult Function(ResolveFirstScreen value)? resolveFirstScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialEventCopyWith<$Res> {
  factory $InitialEventCopyWith(
          InitialEvent value, $Res Function(InitialEvent) then) =
      _$InitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialEventCopyWithImpl<$Res> implements $InitialEventCopyWith<$Res> {
  _$InitialEventCopyWithImpl(this._value, this._then);

  final InitialEvent _value;
  // ignore: unused_field
  final $Res Function(InitialEvent) _then;
}

/// @nodoc
abstract class $GetStaticContentCopyWith<$Res> {
  factory $GetStaticContentCopyWith(
          GetStaticContent value, $Res Function(GetStaticContent) then) =
      _$GetStaticContentCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetStaticContentCopyWithImpl<$Res>
    extends _$InitialEventCopyWithImpl<$Res>
    implements $GetStaticContentCopyWith<$Res> {
  _$GetStaticContentCopyWithImpl(
      GetStaticContent _value, $Res Function(GetStaticContent) _then)
      : super(_value, (v) => _then(v as GetStaticContent));

  @override
  GetStaticContent get _value => super._value as GetStaticContent;
}

/// @nodoc

class _$GetStaticContent implements GetStaticContent {
  const _$GetStaticContent();

  @override
  String toString() {
    return 'InitialEvent.getStaticContent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetStaticContent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStaticContent,
    required TResult Function() resolveFirstScreen,
  }) {
    return getStaticContent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getStaticContent,
    TResult Function()? resolveFirstScreen,
  }) {
    return getStaticContent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStaticContent,
    TResult Function()? resolveFirstScreen,
    required TResult orElse(),
  }) {
    if (getStaticContent != null) {
      return getStaticContent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetStaticContent value) getStaticContent,
    required TResult Function(ResolveFirstScreen value) resolveFirstScreen,
  }) {
    return getStaticContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetStaticContent value)? getStaticContent,
    TResult Function(ResolveFirstScreen value)? resolveFirstScreen,
  }) {
    return getStaticContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetStaticContent value)? getStaticContent,
    TResult Function(ResolveFirstScreen value)? resolveFirstScreen,
    required TResult orElse(),
  }) {
    if (getStaticContent != null) {
      return getStaticContent(this);
    }
    return orElse();
  }
}

abstract class GetStaticContent implements InitialEvent {
  const factory GetStaticContent() = _$GetStaticContent;
}

/// @nodoc
abstract class $ResolveFirstScreenCopyWith<$Res> {
  factory $ResolveFirstScreenCopyWith(
          ResolveFirstScreen value, $Res Function(ResolveFirstScreen) then) =
      _$ResolveFirstScreenCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResolveFirstScreenCopyWithImpl<$Res>
    extends _$InitialEventCopyWithImpl<$Res>
    implements $ResolveFirstScreenCopyWith<$Res> {
  _$ResolveFirstScreenCopyWithImpl(
      ResolveFirstScreen _value, $Res Function(ResolveFirstScreen) _then)
      : super(_value, (v) => _then(v as ResolveFirstScreen));

  @override
  ResolveFirstScreen get _value => super._value as ResolveFirstScreen;
}

/// @nodoc

class _$ResolveFirstScreen implements ResolveFirstScreen {
  const _$ResolveFirstScreen();

  @override
  String toString() {
    return 'InitialEvent.resolveFirstScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResolveFirstScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStaticContent,
    required TResult Function() resolveFirstScreen,
  }) {
    return resolveFirstScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getStaticContent,
    TResult Function()? resolveFirstScreen,
  }) {
    return resolveFirstScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStaticContent,
    TResult Function()? resolveFirstScreen,
    required TResult orElse(),
  }) {
    if (resolveFirstScreen != null) {
      return resolveFirstScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetStaticContent value) getStaticContent,
    required TResult Function(ResolveFirstScreen value) resolveFirstScreen,
  }) {
    return resolveFirstScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetStaticContent value)? getStaticContent,
    TResult Function(ResolveFirstScreen value)? resolveFirstScreen,
  }) {
    return resolveFirstScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetStaticContent value)? getStaticContent,
    TResult Function(ResolveFirstScreen value)? resolveFirstScreen,
    required TResult orElse(),
  }) {
    if (resolveFirstScreen != null) {
      return resolveFirstScreen(this);
    }
    return orElse();
  }
}

abstract class ResolveFirstScreen implements InitialEvent {
  const factory ResolveFirstScreen() = _$ResolveFirstScreen;
}
