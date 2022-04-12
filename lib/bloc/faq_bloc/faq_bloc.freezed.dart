// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'faq_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FaqStateTearOff {
  const _$FaqStateTearOff();

  Initial initial() {
    return const Initial();
  }

  FaqLoading loading() {
    return const FaqLoading();
  }

  FaqSuccess faqSuccess(FaqResp faq) {
    return FaqSuccess(
      faq,
    );
  }

  FaqError faqError(ErrorsResponse errors) {
    return FaqError(
      errors,
    );
  }
}

/// @nodoc
const $FaqState = _$FaqStateTearOff();

/// @nodoc
mixin _$FaqState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FaqResp faq) faqSuccess,
    required TResult Function(ErrorsResponse errors) faqError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FaqResp faq)? faqSuccess,
    TResult Function(ErrorsResponse errors)? faqError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FaqResp faq)? faqSuccess,
    TResult Function(ErrorsResponse errors)? faqError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FaqLoading value) loading,
    required TResult Function(FaqSuccess value) faqSuccess,
    required TResult Function(FaqError value) faqError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqSuccess value)? faqSuccess,
    TResult Function(FaqError value)? faqError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqSuccess value)? faqSuccess,
    TResult Function(FaqError value)? faqError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqStateCopyWith<$Res> {
  factory $FaqStateCopyWith(FaqState value, $Res Function(FaqState) then) =
      _$FaqStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FaqStateCopyWithImpl<$Res> implements $FaqStateCopyWith<$Res> {
  _$FaqStateCopyWithImpl(this._value, this._then);

  final FaqState _value;
  // ignore: unused_field
  final $Res Function(FaqState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$FaqStateCopyWithImpl<$Res>
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
    return 'FaqState.initial()';
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
    required TResult Function(FaqResp faq) faqSuccess,
    required TResult Function(ErrorsResponse errors) faqError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FaqResp faq)? faqSuccess,
    TResult Function(ErrorsResponse errors)? faqError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FaqResp faq)? faqSuccess,
    TResult Function(ErrorsResponse errors)? faqError,
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
    required TResult Function(FaqLoading value) loading,
    required TResult Function(FaqSuccess value) faqSuccess,
    required TResult Function(FaqError value) faqError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqSuccess value)? faqSuccess,
    TResult Function(FaqError value)? faqError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqSuccess value)? faqSuccess,
    TResult Function(FaqError value)? faqError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FaqState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $FaqLoadingCopyWith<$Res> {
  factory $FaqLoadingCopyWith(
          FaqLoading value, $Res Function(FaqLoading) then) =
      _$FaqLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$FaqLoadingCopyWithImpl<$Res> extends _$FaqStateCopyWithImpl<$Res>
    implements $FaqLoadingCopyWith<$Res> {
  _$FaqLoadingCopyWithImpl(FaqLoading _value, $Res Function(FaqLoading) _then)
      : super(_value, (v) => _then(v as FaqLoading));

  @override
  FaqLoading get _value => super._value as FaqLoading;
}

/// @nodoc

class _$FaqLoading implements FaqLoading {
  const _$FaqLoading();

  @override
  String toString() {
    return 'FaqState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FaqLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FaqResp faq) faqSuccess,
    required TResult Function(ErrorsResponse errors) faqError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FaqResp faq)? faqSuccess,
    TResult Function(ErrorsResponse errors)? faqError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FaqResp faq)? faqSuccess,
    TResult Function(ErrorsResponse errors)? faqError,
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
    required TResult Function(FaqLoading value) loading,
    required TResult Function(FaqSuccess value) faqSuccess,
    required TResult Function(FaqError value) faqError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqSuccess value)? faqSuccess,
    TResult Function(FaqError value)? faqError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqSuccess value)? faqSuccess,
    TResult Function(FaqError value)? faqError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FaqLoading implements FaqState {
  const factory FaqLoading() = _$FaqLoading;
}

/// @nodoc
abstract class $FaqSuccessCopyWith<$Res> {
  factory $FaqSuccessCopyWith(
          FaqSuccess value, $Res Function(FaqSuccess) then) =
      _$FaqSuccessCopyWithImpl<$Res>;
  $Res call({FaqResp faq});
}

/// @nodoc
class _$FaqSuccessCopyWithImpl<$Res> extends _$FaqStateCopyWithImpl<$Res>
    implements $FaqSuccessCopyWith<$Res> {
  _$FaqSuccessCopyWithImpl(FaqSuccess _value, $Res Function(FaqSuccess) _then)
      : super(_value, (v) => _then(v as FaqSuccess));

  @override
  FaqSuccess get _value => super._value as FaqSuccess;

  @override
  $Res call({
    Object? faq = freezed,
  }) {
    return _then(FaqSuccess(
      faq == freezed
          ? _value.faq
          : faq // ignore: cast_nullable_to_non_nullable
              as FaqResp,
    ));
  }
}

/// @nodoc

class _$FaqSuccess implements FaqSuccess {
  const _$FaqSuccess(this.faq);

  @override
  final FaqResp faq;

  @override
  String toString() {
    return 'FaqState.faqSuccess(faq: $faq)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FaqSuccess &&
            (identical(other.faq, faq) ||
                const DeepCollectionEquality().equals(other.faq, faq)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(faq);

  @JsonKey(ignore: true)
  @override
  $FaqSuccessCopyWith<FaqSuccess> get copyWith =>
      _$FaqSuccessCopyWithImpl<FaqSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FaqResp faq) faqSuccess,
    required TResult Function(ErrorsResponse errors) faqError,
  }) {
    return faqSuccess(faq);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FaqResp faq)? faqSuccess,
    TResult Function(ErrorsResponse errors)? faqError,
  }) {
    return faqSuccess?.call(faq);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FaqResp faq)? faqSuccess,
    TResult Function(ErrorsResponse errors)? faqError,
    required TResult orElse(),
  }) {
    if (faqSuccess != null) {
      return faqSuccess(faq);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FaqLoading value) loading,
    required TResult Function(FaqSuccess value) faqSuccess,
    required TResult Function(FaqError value) faqError,
  }) {
    return faqSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqSuccess value)? faqSuccess,
    TResult Function(FaqError value)? faqError,
  }) {
    return faqSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqSuccess value)? faqSuccess,
    TResult Function(FaqError value)? faqError,
    required TResult orElse(),
  }) {
    if (faqSuccess != null) {
      return faqSuccess(this);
    }
    return orElse();
  }
}

abstract class FaqSuccess implements FaqState {
  const factory FaqSuccess(FaqResp faq) = _$FaqSuccess;

  FaqResp get faq => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqSuccessCopyWith<FaqSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqErrorCopyWith<$Res> {
  factory $FaqErrorCopyWith(FaqError value, $Res Function(FaqError) then) =
      _$FaqErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$FaqErrorCopyWithImpl<$Res> extends _$FaqStateCopyWithImpl<$Res>
    implements $FaqErrorCopyWith<$Res> {
  _$FaqErrorCopyWithImpl(FaqError _value, $Res Function(FaqError) _then)
      : super(_value, (v) => _then(v as FaqError));

  @override
  FaqError get _value => super._value as FaqError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(FaqError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$FaqError implements FaqError {
  const _$FaqError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'FaqState.faqError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FaqError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $FaqErrorCopyWith<FaqError> get copyWith =>
      _$FaqErrorCopyWithImpl<FaqError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FaqResp faq) faqSuccess,
    required TResult Function(ErrorsResponse errors) faqError,
  }) {
    return faqError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FaqResp faq)? faqSuccess,
    TResult Function(ErrorsResponse errors)? faqError,
  }) {
    return faqError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FaqResp faq)? faqSuccess,
    TResult Function(ErrorsResponse errors)? faqError,
    required TResult orElse(),
  }) {
    if (faqError != null) {
      return faqError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FaqLoading value) loading,
    required TResult Function(FaqSuccess value) faqSuccess,
    required TResult Function(FaqError value) faqError,
  }) {
    return faqError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqSuccess value)? faqSuccess,
    TResult Function(FaqError value)? faqError,
  }) {
    return faqError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqSuccess value)? faqSuccess,
    TResult Function(FaqError value)? faqError,
    required TResult orElse(),
  }) {
    if (faqError != null) {
      return faqError(this);
    }
    return orElse();
  }
}

abstract class FaqError implements FaqState {
  const factory FaqError(ErrorsResponse errors) = _$FaqError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqErrorCopyWith<FaqError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FaqEventTearOff {
  const _$FaqEventTearOff();

  GetFaq getFaq() {
    return const GetFaq();
  }
}

/// @nodoc
const $FaqEvent = _$FaqEventTearOff();

/// @nodoc
mixin _$FaqEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFaq,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFaq value) getFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetFaq value)? getFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFaq value)? getFaq,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqEventCopyWith<$Res> {
  factory $FaqEventCopyWith(FaqEvent value, $Res Function(FaqEvent) then) =
      _$FaqEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FaqEventCopyWithImpl<$Res> implements $FaqEventCopyWith<$Res> {
  _$FaqEventCopyWithImpl(this._value, this._then);

  final FaqEvent _value;
  // ignore: unused_field
  final $Res Function(FaqEvent) _then;
}

/// @nodoc
abstract class $GetFaqCopyWith<$Res> {
  factory $GetFaqCopyWith(GetFaq value, $Res Function(GetFaq) then) =
      _$GetFaqCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetFaqCopyWithImpl<$Res> extends _$FaqEventCopyWithImpl<$Res>
    implements $GetFaqCopyWith<$Res> {
  _$GetFaqCopyWithImpl(GetFaq _value, $Res Function(GetFaq) _then)
      : super(_value, (v) => _then(v as GetFaq));

  @override
  GetFaq get _value => super._value as GetFaq;
}

/// @nodoc

class _$GetFaq implements GetFaq {
  const _$GetFaq();

  @override
  String toString() {
    return 'FaqEvent.getFaq()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetFaq);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFaq,
  }) {
    return getFaq();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFaq,
  }) {
    return getFaq?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFaq,
    required TResult orElse(),
  }) {
    if (getFaq != null) {
      return getFaq();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFaq value) getFaq,
  }) {
    return getFaq(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetFaq value)? getFaq,
  }) {
    return getFaq?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFaq value)? getFaq,
    required TResult orElse(),
  }) {
    if (getFaq != null) {
      return getFaq(this);
    }
    return orElse();
  }
}

abstract class GetFaq implements FaqEvent {
  const factory GetFaq() = _$GetFaq;
}
