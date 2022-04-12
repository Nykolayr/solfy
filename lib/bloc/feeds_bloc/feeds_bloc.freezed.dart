// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feeds_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedsStateTearOff {
  const _$FeedsStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  GetFeedsSuccess getFeedsSuccess(
      {required List<FeedsFeedItemResponse> feeds,
      required WalletViewModel wallet}) {
    return GetFeedsSuccess(
      feeds: feeds,
      wallet: wallet,
    );
  }

  GetFeedsError getFeedsError(ErrorsResponse errors) {
    return GetFeedsError(
      errors,
    );
  }
}

/// @nodoc
const $FeedsState = _$FeedsStateTearOff();

/// @nodoc
mixin _$FeedsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<FeedsFeedItemResponse> feeds, WalletViewModel wallet)
        getFeedsSuccess,
    required TResult Function(ErrorsResponse errors) getFeedsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FeedsFeedItemResponse> feeds, WalletViewModel wallet)?
        getFeedsSuccess,
    TResult Function(ErrorsResponse errors)? getFeedsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FeedsFeedItemResponse> feeds, WalletViewModel wallet)?
        getFeedsSuccess,
    TResult Function(ErrorsResponse errors)? getFeedsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetFeedsSuccess value) getFeedsSuccess,
    required TResult Function(GetFeedsError value) getFeedsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetFeedsSuccess value)? getFeedsSuccess,
    TResult Function(GetFeedsError value)? getFeedsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetFeedsSuccess value)? getFeedsSuccess,
    TResult Function(GetFeedsError value)? getFeedsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedsStateCopyWith<$Res> {
  factory $FeedsStateCopyWith(
          FeedsState value, $Res Function(FeedsState) then) =
      _$FeedsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedsStateCopyWithImpl<$Res> implements $FeedsStateCopyWith<$Res> {
  _$FeedsStateCopyWithImpl(this._value, this._then);

  final FeedsState _value;
  // ignore: unused_field
  final $Res Function(FeedsState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$FeedsStateCopyWithImpl<$Res>
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
    return 'FeedsState.initial()';
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
    required TResult Function(
            List<FeedsFeedItemResponse> feeds, WalletViewModel wallet)
        getFeedsSuccess,
    required TResult Function(ErrorsResponse errors) getFeedsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FeedsFeedItemResponse> feeds, WalletViewModel wallet)?
        getFeedsSuccess,
    TResult Function(ErrorsResponse errors)? getFeedsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FeedsFeedItemResponse> feeds, WalletViewModel wallet)?
        getFeedsSuccess,
    TResult Function(ErrorsResponse errors)? getFeedsError,
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
    required TResult Function(GetFeedsSuccess value) getFeedsSuccess,
    required TResult Function(GetFeedsError value) getFeedsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetFeedsSuccess value)? getFeedsSuccess,
    TResult Function(GetFeedsError value)? getFeedsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetFeedsSuccess value)? getFeedsSuccess,
    TResult Function(GetFeedsError value)? getFeedsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FeedsState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$FeedsStateCopyWithImpl<$Res>
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
    return 'FeedsState.loading()';
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
    required TResult Function(
            List<FeedsFeedItemResponse> feeds, WalletViewModel wallet)
        getFeedsSuccess,
    required TResult Function(ErrorsResponse errors) getFeedsError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FeedsFeedItemResponse> feeds, WalletViewModel wallet)?
        getFeedsSuccess,
    TResult Function(ErrorsResponse errors)? getFeedsError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FeedsFeedItemResponse> feeds, WalletViewModel wallet)?
        getFeedsSuccess,
    TResult Function(ErrorsResponse errors)? getFeedsError,
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
    required TResult Function(GetFeedsSuccess value) getFeedsSuccess,
    required TResult Function(GetFeedsError value) getFeedsError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetFeedsSuccess value)? getFeedsSuccess,
    TResult Function(GetFeedsError value)? getFeedsError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetFeedsSuccess value)? getFeedsSuccess,
    TResult Function(GetFeedsError value)? getFeedsError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements FeedsState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $GetFeedsSuccessCopyWith<$Res> {
  factory $GetFeedsSuccessCopyWith(
          GetFeedsSuccess value, $Res Function(GetFeedsSuccess) then) =
      _$GetFeedsSuccessCopyWithImpl<$Res>;
  $Res call({List<FeedsFeedItemResponse> feeds, WalletViewModel wallet});
}

/// @nodoc
class _$GetFeedsSuccessCopyWithImpl<$Res> extends _$FeedsStateCopyWithImpl<$Res>
    implements $GetFeedsSuccessCopyWith<$Res> {
  _$GetFeedsSuccessCopyWithImpl(
      GetFeedsSuccess _value, $Res Function(GetFeedsSuccess) _then)
      : super(_value, (v) => _then(v as GetFeedsSuccess));

  @override
  GetFeedsSuccess get _value => super._value as GetFeedsSuccess;

  @override
  $Res call({
    Object? feeds = freezed,
    Object? wallet = freezed,
  }) {
    return _then(GetFeedsSuccess(
      feeds: feeds == freezed
          ? _value.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<FeedsFeedItemResponse>,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletViewModel,
    ));
  }
}

/// @nodoc

class _$GetFeedsSuccess implements GetFeedsSuccess {
  const _$GetFeedsSuccess({required this.feeds, required this.wallet});

  @override
  final List<FeedsFeedItemResponse> feeds;
  @override
  final WalletViewModel wallet;

  @override
  String toString() {
    return 'FeedsState.getFeedsSuccess(feeds: $feeds, wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetFeedsSuccess &&
            (identical(other.feeds, feeds) ||
                const DeepCollectionEquality().equals(other.feeds, feeds)) &&
            (identical(other.wallet, wallet) ||
                const DeepCollectionEquality().equals(other.wallet, wallet)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(feeds) ^
      const DeepCollectionEquality().hash(wallet);

  @JsonKey(ignore: true)
  @override
  $GetFeedsSuccessCopyWith<GetFeedsSuccess> get copyWith =>
      _$GetFeedsSuccessCopyWithImpl<GetFeedsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<FeedsFeedItemResponse> feeds, WalletViewModel wallet)
        getFeedsSuccess,
    required TResult Function(ErrorsResponse errors) getFeedsError,
  }) {
    return getFeedsSuccess(feeds, wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FeedsFeedItemResponse> feeds, WalletViewModel wallet)?
        getFeedsSuccess,
    TResult Function(ErrorsResponse errors)? getFeedsError,
  }) {
    return getFeedsSuccess?.call(feeds, wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FeedsFeedItemResponse> feeds, WalletViewModel wallet)?
        getFeedsSuccess,
    TResult Function(ErrorsResponse errors)? getFeedsError,
    required TResult orElse(),
  }) {
    if (getFeedsSuccess != null) {
      return getFeedsSuccess(feeds, wallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetFeedsSuccess value) getFeedsSuccess,
    required TResult Function(GetFeedsError value) getFeedsError,
  }) {
    return getFeedsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetFeedsSuccess value)? getFeedsSuccess,
    TResult Function(GetFeedsError value)? getFeedsError,
  }) {
    return getFeedsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetFeedsSuccess value)? getFeedsSuccess,
    TResult Function(GetFeedsError value)? getFeedsError,
    required TResult orElse(),
  }) {
    if (getFeedsSuccess != null) {
      return getFeedsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetFeedsSuccess implements FeedsState {
  const factory GetFeedsSuccess(
      {required List<FeedsFeedItemResponse> feeds,
      required WalletViewModel wallet}) = _$GetFeedsSuccess;

  List<FeedsFeedItemResponse> get feeds => throw _privateConstructorUsedError;
  WalletViewModel get wallet => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFeedsSuccessCopyWith<GetFeedsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedsErrorCopyWith<$Res> {
  factory $GetFeedsErrorCopyWith(
          GetFeedsError value, $Res Function(GetFeedsError) then) =
      _$GetFeedsErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$GetFeedsErrorCopyWithImpl<$Res> extends _$FeedsStateCopyWithImpl<$Res>
    implements $GetFeedsErrorCopyWith<$Res> {
  _$GetFeedsErrorCopyWithImpl(
      GetFeedsError _value, $Res Function(GetFeedsError) _then)
      : super(_value, (v) => _then(v as GetFeedsError));

  @override
  GetFeedsError get _value => super._value as GetFeedsError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(GetFeedsError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$GetFeedsError implements GetFeedsError {
  const _$GetFeedsError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'FeedsState.getFeedsError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetFeedsError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $GetFeedsErrorCopyWith<GetFeedsError> get copyWith =>
      _$GetFeedsErrorCopyWithImpl<GetFeedsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<FeedsFeedItemResponse> feeds, WalletViewModel wallet)
        getFeedsSuccess,
    required TResult Function(ErrorsResponse errors) getFeedsError,
  }) {
    return getFeedsError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FeedsFeedItemResponse> feeds, WalletViewModel wallet)?
        getFeedsSuccess,
    TResult Function(ErrorsResponse errors)? getFeedsError,
  }) {
    return getFeedsError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FeedsFeedItemResponse> feeds, WalletViewModel wallet)?
        getFeedsSuccess,
    TResult Function(ErrorsResponse errors)? getFeedsError,
    required TResult orElse(),
  }) {
    if (getFeedsError != null) {
      return getFeedsError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetFeedsSuccess value) getFeedsSuccess,
    required TResult Function(GetFeedsError value) getFeedsError,
  }) {
    return getFeedsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetFeedsSuccess value)? getFeedsSuccess,
    TResult Function(GetFeedsError value)? getFeedsError,
  }) {
    return getFeedsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetFeedsSuccess value)? getFeedsSuccess,
    TResult Function(GetFeedsError value)? getFeedsError,
    required TResult orElse(),
  }) {
    if (getFeedsError != null) {
      return getFeedsError(this);
    }
    return orElse();
  }
}

abstract class GetFeedsError implements FeedsState {
  const factory GetFeedsError(ErrorsResponse errors) = _$GetFeedsError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFeedsErrorCopyWith<GetFeedsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FeedsEventTearOff {
  const _$FeedsEventTearOff();

  GetFeeds getFeeds() {
    return const GetFeeds();
  }
}

/// @nodoc
const $FeedsEvent = _$FeedsEventTearOff();

/// @nodoc
mixin _$FeedsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeeds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFeeds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeeds,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFeeds value) getFeeds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetFeeds value)? getFeeds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFeeds value)? getFeeds,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedsEventCopyWith<$Res> {
  factory $FeedsEventCopyWith(
          FeedsEvent value, $Res Function(FeedsEvent) then) =
      _$FeedsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedsEventCopyWithImpl<$Res> implements $FeedsEventCopyWith<$Res> {
  _$FeedsEventCopyWithImpl(this._value, this._then);

  final FeedsEvent _value;
  // ignore: unused_field
  final $Res Function(FeedsEvent) _then;
}

/// @nodoc
abstract class $GetFeedsCopyWith<$Res> {
  factory $GetFeedsCopyWith(GetFeeds value, $Res Function(GetFeeds) then) =
      _$GetFeedsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetFeedsCopyWithImpl<$Res> extends _$FeedsEventCopyWithImpl<$Res>
    implements $GetFeedsCopyWith<$Res> {
  _$GetFeedsCopyWithImpl(GetFeeds _value, $Res Function(GetFeeds) _then)
      : super(_value, (v) => _then(v as GetFeeds));

  @override
  GetFeeds get _value => super._value as GetFeeds;
}

/// @nodoc

class _$GetFeeds implements GetFeeds {
  const _$GetFeeds();

  @override
  String toString() {
    return 'FeedsEvent.getFeeds()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetFeeds);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeeds,
  }) {
    return getFeeds();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFeeds,
  }) {
    return getFeeds?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeeds,
    required TResult orElse(),
  }) {
    if (getFeeds != null) {
      return getFeeds();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFeeds value) getFeeds,
  }) {
    return getFeeds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetFeeds value)? getFeeds,
  }) {
    return getFeeds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFeeds value)? getFeeds,
    required TResult orElse(),
  }) {
    if (getFeeds != null) {
      return getFeeds(this);
    }
    return orElse();
  }
}

abstract class GetFeeds implements FeedsEvent {
  const factory GetFeeds() = _$GetFeeds;
}
