// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedStateTearOff {
  const _$FeedStateTearOff();

  Initial initial() {
    return const Initial();
  }

  FeedLoading feedLoading() {
    return const FeedLoading();
  }

  FeedEndLoading feedEndLoading() {
    return const FeedEndLoading();
  }

  GetFeedSuccess getFeedSuccess(FeedResp response) {
    return GetFeedSuccess(
      response,
    );
  }

  GetFeedError getFeedError(ErrorsResponse errors) {
    return GetFeedError(
      errors,
    );
  }
}

/// @nodoc
const $FeedState = _$FeedStateTearOff();

/// @nodoc
mixin _$FeedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedLoading,
    required TResult Function() feedEndLoading,
    required TResult Function(FeedResp response) getFeedSuccess,
    required TResult Function(ErrorsResponse errors) getFeedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedLoading,
    TResult Function()? feedEndLoading,
    TResult Function(FeedResp response)? getFeedSuccess,
    TResult Function(ErrorsResponse errors)? getFeedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedLoading,
    TResult Function()? feedEndLoading,
    TResult Function(FeedResp response)? getFeedSuccess,
    TResult Function(ErrorsResponse errors)? getFeedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeedLoading value) feedLoading,
    required TResult Function(FeedEndLoading value) feedEndLoading,
    required TResult Function(GetFeedSuccess value) getFeedSuccess,
    required TResult Function(GetFeedError value) getFeedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeedLoading value)? feedLoading,
    TResult Function(FeedEndLoading value)? feedEndLoading,
    TResult Function(GetFeedSuccess value)? getFeedSuccess,
    TResult Function(GetFeedError value)? getFeedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeedLoading value)? feedLoading,
    TResult Function(FeedEndLoading value)? feedEndLoading,
    TResult Function(GetFeedSuccess value)? getFeedSuccess,
    TResult Function(GetFeedError value)? getFeedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res> implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  final FeedState _value;
  // ignore: unused_field
  final $Res Function(FeedState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
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
    return 'FeedState.initial()';
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
    required TResult Function() feedLoading,
    required TResult Function() feedEndLoading,
    required TResult Function(FeedResp response) getFeedSuccess,
    required TResult Function(ErrorsResponse errors) getFeedError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedLoading,
    TResult Function()? feedEndLoading,
    TResult Function(FeedResp response)? getFeedSuccess,
    TResult Function(ErrorsResponse errors)? getFeedError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedLoading,
    TResult Function()? feedEndLoading,
    TResult Function(FeedResp response)? getFeedSuccess,
    TResult Function(ErrorsResponse errors)? getFeedError,
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
    required TResult Function(FeedLoading value) feedLoading,
    required TResult Function(FeedEndLoading value) feedEndLoading,
    required TResult Function(GetFeedSuccess value) getFeedSuccess,
    required TResult Function(GetFeedError value) getFeedError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeedLoading value)? feedLoading,
    TResult Function(FeedEndLoading value)? feedEndLoading,
    TResult Function(GetFeedSuccess value)? getFeedSuccess,
    TResult Function(GetFeedError value)? getFeedError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeedLoading value)? feedLoading,
    TResult Function(FeedEndLoading value)? feedEndLoading,
    TResult Function(GetFeedSuccess value)? getFeedSuccess,
    TResult Function(GetFeedError value)? getFeedError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FeedState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $FeedLoadingCopyWith<$Res> {
  factory $FeedLoadingCopyWith(
          FeedLoading value, $Res Function(FeedLoading) then) =
      _$FeedLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedLoadingCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements $FeedLoadingCopyWith<$Res> {
  _$FeedLoadingCopyWithImpl(
      FeedLoading _value, $Res Function(FeedLoading) _then)
      : super(_value, (v) => _then(v as FeedLoading));

  @override
  FeedLoading get _value => super._value as FeedLoading;
}

/// @nodoc

class _$FeedLoading implements FeedLoading {
  const _$FeedLoading();

  @override
  String toString() {
    return 'FeedState.feedLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FeedLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedLoading,
    required TResult Function() feedEndLoading,
    required TResult Function(FeedResp response) getFeedSuccess,
    required TResult Function(ErrorsResponse errors) getFeedError,
  }) {
    return feedLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedLoading,
    TResult Function()? feedEndLoading,
    TResult Function(FeedResp response)? getFeedSuccess,
    TResult Function(ErrorsResponse errors)? getFeedError,
  }) {
    return feedLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedLoading,
    TResult Function()? feedEndLoading,
    TResult Function(FeedResp response)? getFeedSuccess,
    TResult Function(ErrorsResponse errors)? getFeedError,
    required TResult orElse(),
  }) {
    if (feedLoading != null) {
      return feedLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeedLoading value) feedLoading,
    required TResult Function(FeedEndLoading value) feedEndLoading,
    required TResult Function(GetFeedSuccess value) getFeedSuccess,
    required TResult Function(GetFeedError value) getFeedError,
  }) {
    return feedLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeedLoading value)? feedLoading,
    TResult Function(FeedEndLoading value)? feedEndLoading,
    TResult Function(GetFeedSuccess value)? getFeedSuccess,
    TResult Function(GetFeedError value)? getFeedError,
  }) {
    return feedLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeedLoading value)? feedLoading,
    TResult Function(FeedEndLoading value)? feedEndLoading,
    TResult Function(GetFeedSuccess value)? getFeedSuccess,
    TResult Function(GetFeedError value)? getFeedError,
    required TResult orElse(),
  }) {
    if (feedLoading != null) {
      return feedLoading(this);
    }
    return orElse();
  }
}

abstract class FeedLoading implements FeedState {
  const factory FeedLoading() = _$FeedLoading;
}

/// @nodoc
abstract class $FeedEndLoadingCopyWith<$Res> {
  factory $FeedEndLoadingCopyWith(
          FeedEndLoading value, $Res Function(FeedEndLoading) then) =
      _$FeedEndLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedEndLoadingCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements $FeedEndLoadingCopyWith<$Res> {
  _$FeedEndLoadingCopyWithImpl(
      FeedEndLoading _value, $Res Function(FeedEndLoading) _then)
      : super(_value, (v) => _then(v as FeedEndLoading));

  @override
  FeedEndLoading get _value => super._value as FeedEndLoading;
}

/// @nodoc

class _$FeedEndLoading implements FeedEndLoading {
  const _$FeedEndLoading();

  @override
  String toString() {
    return 'FeedState.feedEndLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FeedEndLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedLoading,
    required TResult Function() feedEndLoading,
    required TResult Function(FeedResp response) getFeedSuccess,
    required TResult Function(ErrorsResponse errors) getFeedError,
  }) {
    return feedEndLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedLoading,
    TResult Function()? feedEndLoading,
    TResult Function(FeedResp response)? getFeedSuccess,
    TResult Function(ErrorsResponse errors)? getFeedError,
  }) {
    return feedEndLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedLoading,
    TResult Function()? feedEndLoading,
    TResult Function(FeedResp response)? getFeedSuccess,
    TResult Function(ErrorsResponse errors)? getFeedError,
    required TResult orElse(),
  }) {
    if (feedEndLoading != null) {
      return feedEndLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeedLoading value) feedLoading,
    required TResult Function(FeedEndLoading value) feedEndLoading,
    required TResult Function(GetFeedSuccess value) getFeedSuccess,
    required TResult Function(GetFeedError value) getFeedError,
  }) {
    return feedEndLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeedLoading value)? feedLoading,
    TResult Function(FeedEndLoading value)? feedEndLoading,
    TResult Function(GetFeedSuccess value)? getFeedSuccess,
    TResult Function(GetFeedError value)? getFeedError,
  }) {
    return feedEndLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeedLoading value)? feedLoading,
    TResult Function(FeedEndLoading value)? feedEndLoading,
    TResult Function(GetFeedSuccess value)? getFeedSuccess,
    TResult Function(GetFeedError value)? getFeedError,
    required TResult orElse(),
  }) {
    if (feedEndLoading != null) {
      return feedEndLoading(this);
    }
    return orElse();
  }
}

abstract class FeedEndLoading implements FeedState {
  const factory FeedEndLoading() = _$FeedEndLoading;
}

/// @nodoc
abstract class $GetFeedSuccessCopyWith<$Res> {
  factory $GetFeedSuccessCopyWith(
          GetFeedSuccess value, $Res Function(GetFeedSuccess) then) =
      _$GetFeedSuccessCopyWithImpl<$Res>;
  $Res call({FeedResp response});
}

/// @nodoc
class _$GetFeedSuccessCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements $GetFeedSuccessCopyWith<$Res> {
  _$GetFeedSuccessCopyWithImpl(
      GetFeedSuccess _value, $Res Function(GetFeedSuccess) _then)
      : super(_value, (v) => _then(v as GetFeedSuccess));

  @override
  GetFeedSuccess get _value => super._value as GetFeedSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(GetFeedSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as FeedResp,
    ));
  }
}

/// @nodoc

class _$GetFeedSuccess implements GetFeedSuccess {
  const _$GetFeedSuccess(this.response);

  @override
  final FeedResp response;

  @override
  String toString() {
    return 'FeedState.getFeedSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetFeedSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $GetFeedSuccessCopyWith<GetFeedSuccess> get copyWith =>
      _$GetFeedSuccessCopyWithImpl<GetFeedSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedLoading,
    required TResult Function() feedEndLoading,
    required TResult Function(FeedResp response) getFeedSuccess,
    required TResult Function(ErrorsResponse errors) getFeedError,
  }) {
    return getFeedSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedLoading,
    TResult Function()? feedEndLoading,
    TResult Function(FeedResp response)? getFeedSuccess,
    TResult Function(ErrorsResponse errors)? getFeedError,
  }) {
    return getFeedSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedLoading,
    TResult Function()? feedEndLoading,
    TResult Function(FeedResp response)? getFeedSuccess,
    TResult Function(ErrorsResponse errors)? getFeedError,
    required TResult orElse(),
  }) {
    if (getFeedSuccess != null) {
      return getFeedSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeedLoading value) feedLoading,
    required TResult Function(FeedEndLoading value) feedEndLoading,
    required TResult Function(GetFeedSuccess value) getFeedSuccess,
    required TResult Function(GetFeedError value) getFeedError,
  }) {
    return getFeedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeedLoading value)? feedLoading,
    TResult Function(FeedEndLoading value)? feedEndLoading,
    TResult Function(GetFeedSuccess value)? getFeedSuccess,
    TResult Function(GetFeedError value)? getFeedError,
  }) {
    return getFeedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeedLoading value)? feedLoading,
    TResult Function(FeedEndLoading value)? feedEndLoading,
    TResult Function(GetFeedSuccess value)? getFeedSuccess,
    TResult Function(GetFeedError value)? getFeedError,
    required TResult orElse(),
  }) {
    if (getFeedSuccess != null) {
      return getFeedSuccess(this);
    }
    return orElse();
  }
}

abstract class GetFeedSuccess implements FeedState {
  const factory GetFeedSuccess(FeedResp response) = _$GetFeedSuccess;

  FeedResp get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFeedSuccessCopyWith<GetFeedSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedErrorCopyWith<$Res> {
  factory $GetFeedErrorCopyWith(
          GetFeedError value, $Res Function(GetFeedError) then) =
      _$GetFeedErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$GetFeedErrorCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements $GetFeedErrorCopyWith<$Res> {
  _$GetFeedErrorCopyWithImpl(
      GetFeedError _value, $Res Function(GetFeedError) _then)
      : super(_value, (v) => _then(v as GetFeedError));

  @override
  GetFeedError get _value => super._value as GetFeedError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(GetFeedError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$GetFeedError implements GetFeedError {
  const _$GetFeedError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'FeedState.getFeedError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetFeedError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $GetFeedErrorCopyWith<GetFeedError> get copyWith =>
      _$GetFeedErrorCopyWithImpl<GetFeedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedLoading,
    required TResult Function() feedEndLoading,
    required TResult Function(FeedResp response) getFeedSuccess,
    required TResult Function(ErrorsResponse errors) getFeedError,
  }) {
    return getFeedError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedLoading,
    TResult Function()? feedEndLoading,
    TResult Function(FeedResp response)? getFeedSuccess,
    TResult Function(ErrorsResponse errors)? getFeedError,
  }) {
    return getFeedError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedLoading,
    TResult Function()? feedEndLoading,
    TResult Function(FeedResp response)? getFeedSuccess,
    TResult Function(ErrorsResponse errors)? getFeedError,
    required TResult orElse(),
  }) {
    if (getFeedError != null) {
      return getFeedError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeedLoading value) feedLoading,
    required TResult Function(FeedEndLoading value) feedEndLoading,
    required TResult Function(GetFeedSuccess value) getFeedSuccess,
    required TResult Function(GetFeedError value) getFeedError,
  }) {
    return getFeedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeedLoading value)? feedLoading,
    TResult Function(FeedEndLoading value)? feedEndLoading,
    TResult Function(GetFeedSuccess value)? getFeedSuccess,
    TResult Function(GetFeedError value)? getFeedError,
  }) {
    return getFeedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeedLoading value)? feedLoading,
    TResult Function(FeedEndLoading value)? feedEndLoading,
    TResult Function(GetFeedSuccess value)? getFeedSuccess,
    TResult Function(GetFeedError value)? getFeedError,
    required TResult orElse(),
  }) {
    if (getFeedError != null) {
      return getFeedError(this);
    }
    return orElse();
  }
}

abstract class GetFeedError implements FeedState {
  const factory GetFeedError(ErrorsResponse errors) = _$GetFeedError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFeedErrorCopyWith<GetFeedError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FeedEventTearOff {
  const _$FeedEventTearOff();

  GetFeed getFeed(String id) {
    return GetFeed(
      id,
    );
  }
}

/// @nodoc
const $FeedEvent = _$FeedEventTearOff();

/// @nodoc
mixin _$FeedEvent {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFeed value) getFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetFeed value)? getFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFeed value)? getFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedEventCopyWith<FeedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res> implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  final FeedEvent _value;
  // ignore: unused_field
  final $Res Function(FeedEvent) _then;

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
abstract class $GetFeedCopyWith<$Res> implements $FeedEventCopyWith<$Res> {
  factory $GetFeedCopyWith(GetFeed value, $Res Function(GetFeed) then) =
      _$GetFeedCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class _$GetFeedCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements $GetFeedCopyWith<$Res> {
  _$GetFeedCopyWithImpl(GetFeed _value, $Res Function(GetFeed) _then)
      : super(_value, (v) => _then(v as GetFeed));

  @override
  GetFeed get _value => super._value as GetFeed;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(GetFeed(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFeed implements GetFeed {
  const _$GetFeed(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'FeedEvent.getFeed(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetFeed &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $GetFeedCopyWith<GetFeed> get copyWith =>
      _$GetFeedCopyWithImpl<GetFeed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getFeed,
  }) {
    return getFeed(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getFeed,
  }) {
    return getFeed?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getFeed,
    required TResult orElse(),
  }) {
    if (getFeed != null) {
      return getFeed(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFeed value) getFeed,
  }) {
    return getFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetFeed value)? getFeed,
  }) {
    return getFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFeed value)? getFeed,
    required TResult orElse(),
  }) {
    if (getFeed != null) {
      return getFeed(this);
    }
    return orElse();
  }
}

abstract class GetFeed implements FeedEvent {
  const factory GetFeed(String id) = _$GetFeed;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetFeedCopyWith<GetFeed> get copyWith => throw _privateConstructorUsedError;
}
