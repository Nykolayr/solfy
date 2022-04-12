// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brands_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BrandsStateTearOff {
  const _$BrandsStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading(Map<CurrentTab, FilterRequest> request) {
    return Loading(
      request,
    );
  }

  GetBrandsSuccess getBrandsSuccess(
      {required BrandsViewModel brands,
      required List<PointItemViewModel> points,
      int? cityId}) {
    return GetBrandsSuccess(
      brands: brands,
      points: points,
      cityId: cityId,
    );
  }

  GetBrandsError getBrandsError(ErrorsResponse errors) {
    return GetBrandsError(
      errors,
    );
  }
}

/// @nodoc
const $BrandsState = _$BrandsStateTearOff();

/// @nodoc
mixin _$BrandsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<CurrentTab, FilterRequest> request) loading,
    required TResult Function(BrandsViewModel brands,
            List<PointItemViewModel> points, int? cityId)
        getBrandsSuccess,
    required TResult Function(ErrorsResponse errors) getBrandsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<CurrentTab, FilterRequest> request)? loading,
    TResult Function(BrandsViewModel brands, List<PointItemViewModel> points,
            int? cityId)?
        getBrandsSuccess,
    TResult Function(ErrorsResponse errors)? getBrandsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<CurrentTab, FilterRequest> request)? loading,
    TResult Function(BrandsViewModel brands, List<PointItemViewModel> points,
            int? cityId)?
        getBrandsSuccess,
    TResult Function(ErrorsResponse errors)? getBrandsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetBrandsSuccess value) getBrandsSuccess,
    required TResult Function(GetBrandsError value) getBrandsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetBrandsSuccess value)? getBrandsSuccess,
    TResult Function(GetBrandsError value)? getBrandsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetBrandsSuccess value)? getBrandsSuccess,
    TResult Function(GetBrandsError value)? getBrandsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsStateCopyWith<$Res> {
  factory $BrandsStateCopyWith(
          BrandsState value, $Res Function(BrandsState) then) =
      _$BrandsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BrandsStateCopyWithImpl<$Res> implements $BrandsStateCopyWith<$Res> {
  _$BrandsStateCopyWithImpl(this._value, this._then);

  final BrandsState _value;
  // ignore: unused_field
  final $Res Function(BrandsState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$BrandsStateCopyWithImpl<$Res>
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
    return 'BrandsState.initial()';
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
    required TResult Function(Map<CurrentTab, FilterRequest> request) loading,
    required TResult Function(BrandsViewModel brands,
            List<PointItemViewModel> points, int? cityId)
        getBrandsSuccess,
    required TResult Function(ErrorsResponse errors) getBrandsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<CurrentTab, FilterRequest> request)? loading,
    TResult Function(BrandsViewModel brands, List<PointItemViewModel> points,
            int? cityId)?
        getBrandsSuccess,
    TResult Function(ErrorsResponse errors)? getBrandsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<CurrentTab, FilterRequest> request)? loading,
    TResult Function(BrandsViewModel brands, List<PointItemViewModel> points,
            int? cityId)?
        getBrandsSuccess,
    TResult Function(ErrorsResponse errors)? getBrandsError,
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
    required TResult Function(GetBrandsSuccess value) getBrandsSuccess,
    required TResult Function(GetBrandsError value) getBrandsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetBrandsSuccess value)? getBrandsSuccess,
    TResult Function(GetBrandsError value)? getBrandsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetBrandsSuccess value)? getBrandsSuccess,
    TResult Function(GetBrandsError value)? getBrandsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BrandsState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  $Res call({Map<CurrentTab, FilterRequest> request});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$BrandsStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(Loading(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Map<CurrentTab, FilterRequest>,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading(this.request);

  @override
  final Map<CurrentTab, FilterRequest> request;

  @override
  String toString() {
    return 'BrandsState.loading(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<CurrentTab, FilterRequest> request) loading,
    required TResult Function(BrandsViewModel brands,
            List<PointItemViewModel> points, int? cityId)
        getBrandsSuccess,
    required TResult Function(ErrorsResponse errors) getBrandsError,
  }) {
    return loading(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<CurrentTab, FilterRequest> request)? loading,
    TResult Function(BrandsViewModel brands, List<PointItemViewModel> points,
            int? cityId)?
        getBrandsSuccess,
    TResult Function(ErrorsResponse errors)? getBrandsError,
  }) {
    return loading?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<CurrentTab, FilterRequest> request)? loading,
    TResult Function(BrandsViewModel brands, List<PointItemViewModel> points,
            int? cityId)?
        getBrandsSuccess,
    TResult Function(ErrorsResponse errors)? getBrandsError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetBrandsSuccess value) getBrandsSuccess,
    required TResult Function(GetBrandsError value) getBrandsError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetBrandsSuccess value)? getBrandsSuccess,
    TResult Function(GetBrandsError value)? getBrandsError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetBrandsSuccess value)? getBrandsSuccess,
    TResult Function(GetBrandsError value)? getBrandsError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BrandsState {
  const factory Loading(Map<CurrentTab, FilterRequest> request) = _$Loading;

  Map<CurrentTab, FilterRequest> get request =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBrandsSuccessCopyWith<$Res> {
  factory $GetBrandsSuccessCopyWith(
          GetBrandsSuccess value, $Res Function(GetBrandsSuccess) then) =
      _$GetBrandsSuccessCopyWithImpl<$Res>;
  $Res call(
      {BrandsViewModel brands, List<PointItemViewModel> points, int? cityId});

  $BrandsViewModelCopyWith<$Res> get brands;
}

/// @nodoc
class _$GetBrandsSuccessCopyWithImpl<$Res>
    extends _$BrandsStateCopyWithImpl<$Res>
    implements $GetBrandsSuccessCopyWith<$Res> {
  _$GetBrandsSuccessCopyWithImpl(
      GetBrandsSuccess _value, $Res Function(GetBrandsSuccess) _then)
      : super(_value, (v) => _then(v as GetBrandsSuccess));

  @override
  GetBrandsSuccess get _value => super._value as GetBrandsSuccess;

  @override
  $Res call({
    Object? brands = freezed,
    Object? points = freezed,
    Object? cityId = freezed,
  }) {
    return _then(GetBrandsSuccess(
      brands: brands == freezed
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as BrandsViewModel,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointItemViewModel>,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $BrandsViewModelCopyWith<$Res> get brands {
    return $BrandsViewModelCopyWith<$Res>(_value.brands, (value) {
      return _then(_value.copyWith(brands: value));
    });
  }
}

/// @nodoc

class _$GetBrandsSuccess implements GetBrandsSuccess {
  const _$GetBrandsSuccess(
      {required this.brands, required this.points, this.cityId});

  @override
  final BrandsViewModel brands;
  @override
  final List<PointItemViewModel> points;
  @override
  final int? cityId;

  @override
  String toString() {
    return 'BrandsState.getBrandsSuccess(brands: $brands, points: $points, cityId: $cityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetBrandsSuccess &&
            (identical(other.brands, brands) ||
                const DeepCollectionEquality().equals(other.brands, brands)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(brands) ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(cityId);

  @JsonKey(ignore: true)
  @override
  $GetBrandsSuccessCopyWith<GetBrandsSuccess> get copyWith =>
      _$GetBrandsSuccessCopyWithImpl<GetBrandsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<CurrentTab, FilterRequest> request) loading,
    required TResult Function(BrandsViewModel brands,
            List<PointItemViewModel> points, int? cityId)
        getBrandsSuccess,
    required TResult Function(ErrorsResponse errors) getBrandsError,
  }) {
    return getBrandsSuccess(brands, points, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<CurrentTab, FilterRequest> request)? loading,
    TResult Function(BrandsViewModel brands, List<PointItemViewModel> points,
            int? cityId)?
        getBrandsSuccess,
    TResult Function(ErrorsResponse errors)? getBrandsError,
  }) {
    return getBrandsSuccess?.call(brands, points, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<CurrentTab, FilterRequest> request)? loading,
    TResult Function(BrandsViewModel brands, List<PointItemViewModel> points,
            int? cityId)?
        getBrandsSuccess,
    TResult Function(ErrorsResponse errors)? getBrandsError,
    required TResult orElse(),
  }) {
    if (getBrandsSuccess != null) {
      return getBrandsSuccess(brands, points, cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetBrandsSuccess value) getBrandsSuccess,
    required TResult Function(GetBrandsError value) getBrandsError,
  }) {
    return getBrandsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetBrandsSuccess value)? getBrandsSuccess,
    TResult Function(GetBrandsError value)? getBrandsError,
  }) {
    return getBrandsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetBrandsSuccess value)? getBrandsSuccess,
    TResult Function(GetBrandsError value)? getBrandsError,
    required TResult orElse(),
  }) {
    if (getBrandsSuccess != null) {
      return getBrandsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetBrandsSuccess implements BrandsState {
  const factory GetBrandsSuccess(
      {required BrandsViewModel brands,
      required List<PointItemViewModel> points,
      int? cityId}) = _$GetBrandsSuccess;

  BrandsViewModel get brands => throw _privateConstructorUsedError;
  List<PointItemViewModel> get points => throw _privateConstructorUsedError;
  int? get cityId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBrandsSuccessCopyWith<GetBrandsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBrandsErrorCopyWith<$Res> {
  factory $GetBrandsErrorCopyWith(
          GetBrandsError value, $Res Function(GetBrandsError) then) =
      _$GetBrandsErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$GetBrandsErrorCopyWithImpl<$Res> extends _$BrandsStateCopyWithImpl<$Res>
    implements $GetBrandsErrorCopyWith<$Res> {
  _$GetBrandsErrorCopyWithImpl(
      GetBrandsError _value, $Res Function(GetBrandsError) _then)
      : super(_value, (v) => _then(v as GetBrandsError));

  @override
  GetBrandsError get _value => super._value as GetBrandsError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(GetBrandsError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$GetBrandsError implements GetBrandsError {
  const _$GetBrandsError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'BrandsState.getBrandsError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetBrandsError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $GetBrandsErrorCopyWith<GetBrandsError> get copyWith =>
      _$GetBrandsErrorCopyWithImpl<GetBrandsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<CurrentTab, FilterRequest> request) loading,
    required TResult Function(BrandsViewModel brands,
            List<PointItemViewModel> points, int? cityId)
        getBrandsSuccess,
    required TResult Function(ErrorsResponse errors) getBrandsError,
  }) {
    return getBrandsError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<CurrentTab, FilterRequest> request)? loading,
    TResult Function(BrandsViewModel brands, List<PointItemViewModel> points,
            int? cityId)?
        getBrandsSuccess,
    TResult Function(ErrorsResponse errors)? getBrandsError,
  }) {
    return getBrandsError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<CurrentTab, FilterRequest> request)? loading,
    TResult Function(BrandsViewModel brands, List<PointItemViewModel> points,
            int? cityId)?
        getBrandsSuccess,
    TResult Function(ErrorsResponse errors)? getBrandsError,
    required TResult orElse(),
  }) {
    if (getBrandsError != null) {
      return getBrandsError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetBrandsSuccess value) getBrandsSuccess,
    required TResult Function(GetBrandsError value) getBrandsError,
  }) {
    return getBrandsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetBrandsSuccess value)? getBrandsSuccess,
    TResult Function(GetBrandsError value)? getBrandsError,
  }) {
    return getBrandsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetBrandsSuccess value)? getBrandsSuccess,
    TResult Function(GetBrandsError value)? getBrandsError,
    required TResult orElse(),
  }) {
    if (getBrandsError != null) {
      return getBrandsError(this);
    }
    return orElse();
  }
}

abstract class GetBrandsError implements BrandsState {
  const factory GetBrandsError(ErrorsResponse errors) = _$GetBrandsError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBrandsErrorCopyWith<GetBrandsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BrandsEventTearOff {
  const _$BrandsEventTearOff();

  GetBrands getBrands() {
    return const GetBrands();
  }
}

/// @nodoc
const $BrandsEvent = _$BrandsEventTearOff();

/// @nodoc
mixin _$BrandsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBrands,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getBrands,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBrands,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBrands value) getBrands,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetBrands value)? getBrands,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBrands value)? getBrands,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsEventCopyWith<$Res> {
  factory $BrandsEventCopyWith(
          BrandsEvent value, $Res Function(BrandsEvent) then) =
      _$BrandsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BrandsEventCopyWithImpl<$Res> implements $BrandsEventCopyWith<$Res> {
  _$BrandsEventCopyWithImpl(this._value, this._then);

  final BrandsEvent _value;
  // ignore: unused_field
  final $Res Function(BrandsEvent) _then;
}

/// @nodoc
abstract class $GetBrandsCopyWith<$Res> {
  factory $GetBrandsCopyWith(GetBrands value, $Res Function(GetBrands) then) =
      _$GetBrandsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetBrandsCopyWithImpl<$Res> extends _$BrandsEventCopyWithImpl<$Res>
    implements $GetBrandsCopyWith<$Res> {
  _$GetBrandsCopyWithImpl(GetBrands _value, $Res Function(GetBrands) _then)
      : super(_value, (v) => _then(v as GetBrands));

  @override
  GetBrands get _value => super._value as GetBrands;
}

/// @nodoc

class _$GetBrands implements GetBrands {
  const _$GetBrands();

  @override
  String toString() {
    return 'BrandsEvent.getBrands()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetBrands);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBrands,
  }) {
    return getBrands();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getBrands,
  }) {
    return getBrands?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBrands,
    required TResult orElse(),
  }) {
    if (getBrands != null) {
      return getBrands();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBrands value) getBrands,
  }) {
    return getBrands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetBrands value)? getBrands,
  }) {
    return getBrands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBrands value)? getBrands,
    required TResult orElse(),
  }) {
    if (getBrands != null) {
      return getBrands(this);
    }
    return orElse();
  }
}

abstract class GetBrands implements BrandsEvent {
  const factory GetBrands() = _$GetBrands;
}
