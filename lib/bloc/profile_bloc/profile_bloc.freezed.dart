// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  GetProfileSuccess getProfileSuccess(
      {required GetProfileItemResponse profile,
      required bool isMyLocationEnabled,
      required bool isBiometricEnabled}) {
    return GetProfileSuccess(
      profile: profile,
      isMyLocationEnabled: isMyLocationEnabled,
      isBiometricEnabled: isBiometricEnabled,
    );
  }

  GetProfileError getProfileError(ErrorsResponse errors) {
    return GetProfileError(
      errors,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GetProfileItemResponse profile,
            bool isMyLocationEnabled, bool isBiometricEnabled)
        getProfileSuccess,
    required TResult Function(ErrorsResponse errors) getProfileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetProfileItemResponse profile, bool isMyLocationEnabled,
            bool isBiometricEnabled)?
        getProfileSuccess,
    TResult Function(ErrorsResponse errors)? getProfileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetProfileItemResponse profile, bool isMyLocationEnabled,
            bool isBiometricEnabled)?
        getProfileSuccess,
    TResult Function(ErrorsResponse errors)? getProfileError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetProfileSuccess value) getProfileSuccess,
    required TResult Function(GetProfileError value) getProfileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    TResult Function(GetProfileError value)? getProfileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    TResult Function(GetProfileError value)? getProfileError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
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
    return 'ProfileState.initial()';
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
    required TResult Function(GetProfileItemResponse profile,
            bool isMyLocationEnabled, bool isBiometricEnabled)
        getProfileSuccess,
    required TResult Function(ErrorsResponse errors) getProfileError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetProfileItemResponse profile, bool isMyLocationEnabled,
            bool isBiometricEnabled)?
        getProfileSuccess,
    TResult Function(ErrorsResponse errors)? getProfileError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetProfileItemResponse profile, bool isMyLocationEnabled,
            bool isBiometricEnabled)?
        getProfileSuccess,
    TResult Function(ErrorsResponse errors)? getProfileError,
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
    required TResult Function(GetProfileSuccess value) getProfileSuccess,
    required TResult Function(GetProfileError value) getProfileError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    TResult Function(GetProfileError value)? getProfileError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    TResult Function(GetProfileError value)? getProfileError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProfileState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
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
    return 'ProfileState.loading()';
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
    required TResult Function(GetProfileItemResponse profile,
            bool isMyLocationEnabled, bool isBiometricEnabled)
        getProfileSuccess,
    required TResult Function(ErrorsResponse errors) getProfileError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetProfileItemResponse profile, bool isMyLocationEnabled,
            bool isBiometricEnabled)?
        getProfileSuccess,
    TResult Function(ErrorsResponse errors)? getProfileError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetProfileItemResponse profile, bool isMyLocationEnabled,
            bool isBiometricEnabled)?
        getProfileSuccess,
    TResult Function(ErrorsResponse errors)? getProfileError,
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
    required TResult Function(GetProfileSuccess value) getProfileSuccess,
    required TResult Function(GetProfileError value) getProfileError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    TResult Function(GetProfileError value)? getProfileError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    TResult Function(GetProfileError value)? getProfileError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ProfileState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $GetProfileSuccessCopyWith<$Res> {
  factory $GetProfileSuccessCopyWith(
          GetProfileSuccess value, $Res Function(GetProfileSuccess) then) =
      _$GetProfileSuccessCopyWithImpl<$Res>;
  $Res call(
      {GetProfileItemResponse profile,
      bool isMyLocationEnabled,
      bool isBiometricEnabled});

  $GetProfileItemResponseCopyWith<$Res> get profile;
}

/// @nodoc
class _$GetProfileSuccessCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $GetProfileSuccessCopyWith<$Res> {
  _$GetProfileSuccessCopyWithImpl(
      GetProfileSuccess _value, $Res Function(GetProfileSuccess) _then)
      : super(_value, (v) => _then(v as GetProfileSuccess));

  @override
  GetProfileSuccess get _value => super._value as GetProfileSuccess;

  @override
  $Res call({
    Object? profile = freezed,
    Object? isMyLocationEnabled = freezed,
    Object? isBiometricEnabled = freezed,
  }) {
    return _then(GetProfileSuccess(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as GetProfileItemResponse,
      isMyLocationEnabled: isMyLocationEnabled == freezed
          ? _value.isMyLocationEnabled
          : isMyLocationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isBiometricEnabled: isBiometricEnabled == freezed
          ? _value.isBiometricEnabled
          : isBiometricEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $GetProfileItemResponseCopyWith<$Res> get profile {
    return $GetProfileItemResponseCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$GetProfileSuccess implements GetProfileSuccess {
  const _$GetProfileSuccess(
      {required this.profile,
      required this.isMyLocationEnabled,
      required this.isBiometricEnabled});

  @override
  final GetProfileItemResponse profile;
  @override
  final bool isMyLocationEnabled;
  @override
  final bool isBiometricEnabled;

  @override
  String toString() {
    return 'ProfileState.getProfileSuccess(profile: $profile, isMyLocationEnabled: $isMyLocationEnabled, isBiometricEnabled: $isBiometricEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetProfileSuccess &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.isMyLocationEnabled, isMyLocationEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isMyLocationEnabled, isMyLocationEnabled)) &&
            (identical(other.isBiometricEnabled, isBiometricEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isBiometricEnabled, isBiometricEnabled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(isMyLocationEnabled) ^
      const DeepCollectionEquality().hash(isBiometricEnabled);

  @JsonKey(ignore: true)
  @override
  $GetProfileSuccessCopyWith<GetProfileSuccess> get copyWith =>
      _$GetProfileSuccessCopyWithImpl<GetProfileSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GetProfileItemResponse profile,
            bool isMyLocationEnabled, bool isBiometricEnabled)
        getProfileSuccess,
    required TResult Function(ErrorsResponse errors) getProfileError,
  }) {
    return getProfileSuccess(profile, isMyLocationEnabled, isBiometricEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetProfileItemResponse profile, bool isMyLocationEnabled,
            bool isBiometricEnabled)?
        getProfileSuccess,
    TResult Function(ErrorsResponse errors)? getProfileError,
  }) {
    return getProfileSuccess?.call(
        profile, isMyLocationEnabled, isBiometricEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetProfileItemResponse profile, bool isMyLocationEnabled,
            bool isBiometricEnabled)?
        getProfileSuccess,
    TResult Function(ErrorsResponse errors)? getProfileError,
    required TResult orElse(),
  }) {
    if (getProfileSuccess != null) {
      return getProfileSuccess(
          profile, isMyLocationEnabled, isBiometricEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetProfileSuccess value) getProfileSuccess,
    required TResult Function(GetProfileError value) getProfileError,
  }) {
    return getProfileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    TResult Function(GetProfileError value)? getProfileError,
  }) {
    return getProfileSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    TResult Function(GetProfileError value)? getProfileError,
    required TResult orElse(),
  }) {
    if (getProfileSuccess != null) {
      return getProfileSuccess(this);
    }
    return orElse();
  }
}

abstract class GetProfileSuccess implements ProfileState {
  const factory GetProfileSuccess(
      {required GetProfileItemResponse profile,
      required bool isMyLocationEnabled,
      required bool isBiometricEnabled}) = _$GetProfileSuccess;

  GetProfileItemResponse get profile => throw _privateConstructorUsedError;
  bool get isMyLocationEnabled => throw _privateConstructorUsedError;
  bool get isBiometricEnabled => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProfileSuccessCopyWith<GetProfileSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileErrorCopyWith<$Res> {
  factory $GetProfileErrorCopyWith(
          GetProfileError value, $Res Function(GetProfileError) then) =
      _$GetProfileErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$GetProfileErrorCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $GetProfileErrorCopyWith<$Res> {
  _$GetProfileErrorCopyWithImpl(
      GetProfileError _value, $Res Function(GetProfileError) _then)
      : super(_value, (v) => _then(v as GetProfileError));

  @override
  GetProfileError get _value => super._value as GetProfileError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(GetProfileError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$GetProfileError implements GetProfileError {
  const _$GetProfileError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'ProfileState.getProfileError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetProfileError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $GetProfileErrorCopyWith<GetProfileError> get copyWith =>
      _$GetProfileErrorCopyWithImpl<GetProfileError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GetProfileItemResponse profile,
            bool isMyLocationEnabled, bool isBiometricEnabled)
        getProfileSuccess,
    required TResult Function(ErrorsResponse errors) getProfileError,
  }) {
    return getProfileError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetProfileItemResponse profile, bool isMyLocationEnabled,
            bool isBiometricEnabled)?
        getProfileSuccess,
    TResult Function(ErrorsResponse errors)? getProfileError,
  }) {
    return getProfileError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetProfileItemResponse profile, bool isMyLocationEnabled,
            bool isBiometricEnabled)?
        getProfileSuccess,
    TResult Function(ErrorsResponse errors)? getProfileError,
    required TResult orElse(),
  }) {
    if (getProfileError != null) {
      return getProfileError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetProfileSuccess value) getProfileSuccess,
    required TResult Function(GetProfileError value) getProfileError,
  }) {
    return getProfileError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    TResult Function(GetProfileError value)? getProfileError,
  }) {
    return getProfileError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    TResult Function(GetProfileError value)? getProfileError,
    required TResult orElse(),
  }) {
    if (getProfileError != null) {
      return getProfileError(this);
    }
    return orElse();
  }
}

abstract class GetProfileError implements ProfileState {
  const factory GetProfileError(ErrorsResponse errors) = _$GetProfileError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProfileErrorCopyWith<GetProfileError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  GetProfile getProfile(
      {bool cacheResponseIfExist = false, bool isUpdateEvent = false}) {
    return GetProfile(
      cacheResponseIfExist: cacheResponseIfExist,
      isUpdateEvent: isUpdateEvent,
    );
  }

  DisableBiometric disableBiometric() {
    return const DisableBiometric();
  }

  EnableBiometric enableBiometric() {
    return const EnableBiometric();
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool cacheResponseIfExist, bool isUpdateEvent)
        getProfile,
    required TResult Function() disableBiometric,
    required TResult Function() enableBiometric,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool cacheResponseIfExist, bool isUpdateEvent)? getProfile,
    TResult Function()? disableBiometric,
    TResult Function()? enableBiometric,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool cacheResponseIfExist, bool isUpdateEvent)? getProfile,
    TResult Function()? disableBiometric,
    TResult Function()? enableBiometric,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfile value) getProfile,
    required TResult Function(DisableBiometric value) disableBiometric,
    required TResult Function(EnableBiometric value) enableBiometric,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetProfile value)? getProfile,
    TResult Function(DisableBiometric value)? disableBiometric,
    TResult Function(EnableBiometric value)? enableBiometric,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfile value)? getProfile,
    TResult Function(DisableBiometric value)? disableBiometric,
    TResult Function(EnableBiometric value)? enableBiometric,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class $GetProfileCopyWith<$Res> {
  factory $GetProfileCopyWith(
          GetProfile value, $Res Function(GetProfile) then) =
      _$GetProfileCopyWithImpl<$Res>;
  $Res call({bool cacheResponseIfExist, bool isUpdateEvent});
}

/// @nodoc
class _$GetProfileCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements $GetProfileCopyWith<$Res> {
  _$GetProfileCopyWithImpl(GetProfile _value, $Res Function(GetProfile) _then)
      : super(_value, (v) => _then(v as GetProfile));

  @override
  GetProfile get _value => super._value as GetProfile;

  @override
  $Res call({
    Object? cacheResponseIfExist = freezed,
    Object? isUpdateEvent = freezed,
  }) {
    return _then(GetProfile(
      cacheResponseIfExist: cacheResponseIfExist == freezed
          ? _value.cacheResponseIfExist
          : cacheResponseIfExist // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateEvent: isUpdateEvent == freezed
          ? _value.isUpdateEvent
          : isUpdateEvent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetProfile implements GetProfile {
  const _$GetProfile(
      {this.cacheResponseIfExist = false, this.isUpdateEvent = false});

  @JsonKey(defaultValue: false)
  @override
  final bool cacheResponseIfExist;
  @JsonKey(defaultValue: false)
  @override
  final bool isUpdateEvent;

  @override
  String toString() {
    return 'ProfileEvent.getProfile(cacheResponseIfExist: $cacheResponseIfExist, isUpdateEvent: $isUpdateEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetProfile &&
            (identical(other.cacheResponseIfExist, cacheResponseIfExist) ||
                const DeepCollectionEquality().equals(
                    other.cacheResponseIfExist, cacheResponseIfExist)) &&
            (identical(other.isUpdateEvent, isUpdateEvent) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdateEvent, isUpdateEvent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cacheResponseIfExist) ^
      const DeepCollectionEquality().hash(isUpdateEvent);

  @JsonKey(ignore: true)
  @override
  $GetProfileCopyWith<GetProfile> get copyWith =>
      _$GetProfileCopyWithImpl<GetProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool cacheResponseIfExist, bool isUpdateEvent)
        getProfile,
    required TResult Function() disableBiometric,
    required TResult Function() enableBiometric,
  }) {
    return getProfile(cacheResponseIfExist, isUpdateEvent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool cacheResponseIfExist, bool isUpdateEvent)? getProfile,
    TResult Function()? disableBiometric,
    TResult Function()? enableBiometric,
  }) {
    return getProfile?.call(cacheResponseIfExist, isUpdateEvent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool cacheResponseIfExist, bool isUpdateEvent)? getProfile,
    TResult Function()? disableBiometric,
    TResult Function()? enableBiometric,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(cacheResponseIfExist, isUpdateEvent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfile value) getProfile,
    required TResult Function(DisableBiometric value) disableBiometric,
    required TResult Function(EnableBiometric value) enableBiometric,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetProfile value)? getProfile,
    TResult Function(DisableBiometric value)? disableBiometric,
    TResult Function(EnableBiometric value)? enableBiometric,
  }) {
    return getProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfile value)? getProfile,
    TResult Function(DisableBiometric value)? disableBiometric,
    TResult Function(EnableBiometric value)? enableBiometric,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class GetProfile implements ProfileEvent {
  const factory GetProfile({bool cacheResponseIfExist, bool isUpdateEvent}) =
      _$GetProfile;

  bool get cacheResponseIfExist => throw _privateConstructorUsedError;
  bool get isUpdateEvent => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProfileCopyWith<GetProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisableBiometricCopyWith<$Res> {
  factory $DisableBiometricCopyWith(
          DisableBiometric value, $Res Function(DisableBiometric) then) =
      _$DisableBiometricCopyWithImpl<$Res>;
}

/// @nodoc
class _$DisableBiometricCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $DisableBiometricCopyWith<$Res> {
  _$DisableBiometricCopyWithImpl(
      DisableBiometric _value, $Res Function(DisableBiometric) _then)
      : super(_value, (v) => _then(v as DisableBiometric));

  @override
  DisableBiometric get _value => super._value as DisableBiometric;
}

/// @nodoc

class _$DisableBiometric implements DisableBiometric {
  const _$DisableBiometric();

  @override
  String toString() {
    return 'ProfileEvent.disableBiometric()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DisableBiometric);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool cacheResponseIfExist, bool isUpdateEvent)
        getProfile,
    required TResult Function() disableBiometric,
    required TResult Function() enableBiometric,
  }) {
    return disableBiometric();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool cacheResponseIfExist, bool isUpdateEvent)? getProfile,
    TResult Function()? disableBiometric,
    TResult Function()? enableBiometric,
  }) {
    return disableBiometric?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool cacheResponseIfExist, bool isUpdateEvent)? getProfile,
    TResult Function()? disableBiometric,
    TResult Function()? enableBiometric,
    required TResult orElse(),
  }) {
    if (disableBiometric != null) {
      return disableBiometric();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfile value) getProfile,
    required TResult Function(DisableBiometric value) disableBiometric,
    required TResult Function(EnableBiometric value) enableBiometric,
  }) {
    return disableBiometric(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetProfile value)? getProfile,
    TResult Function(DisableBiometric value)? disableBiometric,
    TResult Function(EnableBiometric value)? enableBiometric,
  }) {
    return disableBiometric?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfile value)? getProfile,
    TResult Function(DisableBiometric value)? disableBiometric,
    TResult Function(EnableBiometric value)? enableBiometric,
    required TResult orElse(),
  }) {
    if (disableBiometric != null) {
      return disableBiometric(this);
    }
    return orElse();
  }
}

abstract class DisableBiometric implements ProfileEvent {
  const factory DisableBiometric() = _$DisableBiometric;
}

/// @nodoc
abstract class $EnableBiometricCopyWith<$Res> {
  factory $EnableBiometricCopyWith(
          EnableBiometric value, $Res Function(EnableBiometric) then) =
      _$EnableBiometricCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnableBiometricCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $EnableBiometricCopyWith<$Res> {
  _$EnableBiometricCopyWithImpl(
      EnableBiometric _value, $Res Function(EnableBiometric) _then)
      : super(_value, (v) => _then(v as EnableBiometric));

  @override
  EnableBiometric get _value => super._value as EnableBiometric;
}

/// @nodoc

class _$EnableBiometric implements EnableBiometric {
  const _$EnableBiometric();

  @override
  String toString() {
    return 'ProfileEvent.enableBiometric()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EnableBiometric);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool cacheResponseIfExist, bool isUpdateEvent)
        getProfile,
    required TResult Function() disableBiometric,
    required TResult Function() enableBiometric,
  }) {
    return enableBiometric();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool cacheResponseIfExist, bool isUpdateEvent)? getProfile,
    TResult Function()? disableBiometric,
    TResult Function()? enableBiometric,
  }) {
    return enableBiometric?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool cacheResponseIfExist, bool isUpdateEvent)? getProfile,
    TResult Function()? disableBiometric,
    TResult Function()? enableBiometric,
    required TResult orElse(),
  }) {
    if (enableBiometric != null) {
      return enableBiometric();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfile value) getProfile,
    required TResult Function(DisableBiometric value) disableBiometric,
    required TResult Function(EnableBiometric value) enableBiometric,
  }) {
    return enableBiometric(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetProfile value)? getProfile,
    TResult Function(DisableBiometric value)? disableBiometric,
    TResult Function(EnableBiometric value)? enableBiometric,
  }) {
    return enableBiometric?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfile value)? getProfile,
    TResult Function(DisableBiometric value)? disableBiometric,
    TResult Function(EnableBiometric value)? enableBiometric,
    required TResult orElse(),
  }) {
    if (enableBiometric != null) {
      return enableBiometric(this);
    }
    return orElse();
  }
}

abstract class EnableBiometric implements ProfileEvent {
  const factory EnableBiometric() = _$EnableBiometric;
}
