// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoreMapStateTearOff {
  const _$StoreMapStateTearOff();

  StoreMapInitial storeMapInitial() {
    return const StoreMapInitial();
  }

  StoreMapLoading storeMapLoading(FilterRequest? request) {
    return StoreMapLoading(
      request,
    );
  }

  StoreMapSuccess storeMapSuccess(List<PointItemViewModel> points) {
    return StoreMapSuccess(
      points,
    );
  }

  StoreMapError storeMapError(ErrorsResponse errors) {
    return StoreMapError(
      errors,
    );
  }
}

/// @nodoc
const $StoreMapState = _$StoreMapStateTearOff();

/// @nodoc
mixin _$StoreMapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storeMapInitial,
    required TResult Function(FilterRequest? request) storeMapLoading,
    required TResult Function(List<PointItemViewModel> points) storeMapSuccess,
    required TResult Function(ErrorsResponse errors) storeMapError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? storeMapInitial,
    TResult Function(FilterRequest? request)? storeMapLoading,
    TResult Function(List<PointItemViewModel> points)? storeMapSuccess,
    TResult Function(ErrorsResponse errors)? storeMapError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storeMapInitial,
    TResult Function(FilterRequest? request)? storeMapLoading,
    TResult Function(List<PointItemViewModel> points)? storeMapSuccess,
    TResult Function(ErrorsResponse errors)? storeMapError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreMapInitial value) storeMapInitial,
    required TResult Function(StoreMapLoading value) storeMapLoading,
    required TResult Function(StoreMapSuccess value) storeMapSuccess,
    required TResult Function(StoreMapError value) storeMapError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreMapInitial value)? storeMapInitial,
    TResult Function(StoreMapLoading value)? storeMapLoading,
    TResult Function(StoreMapSuccess value)? storeMapSuccess,
    TResult Function(StoreMapError value)? storeMapError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreMapInitial value)? storeMapInitial,
    TResult Function(StoreMapLoading value)? storeMapLoading,
    TResult Function(StoreMapSuccess value)? storeMapSuccess,
    TResult Function(StoreMapError value)? storeMapError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreMapStateCopyWith<$Res> {
  factory $StoreMapStateCopyWith(
          StoreMapState value, $Res Function(StoreMapState) then) =
      _$StoreMapStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreMapStateCopyWithImpl<$Res>
    implements $StoreMapStateCopyWith<$Res> {
  _$StoreMapStateCopyWithImpl(this._value, this._then);

  final StoreMapState _value;
  // ignore: unused_field
  final $Res Function(StoreMapState) _then;
}

/// @nodoc
abstract class $StoreMapInitialCopyWith<$Res> {
  factory $StoreMapInitialCopyWith(
          StoreMapInitial value, $Res Function(StoreMapInitial) then) =
      _$StoreMapInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreMapInitialCopyWithImpl<$Res>
    extends _$StoreMapStateCopyWithImpl<$Res>
    implements $StoreMapInitialCopyWith<$Res> {
  _$StoreMapInitialCopyWithImpl(
      StoreMapInitial _value, $Res Function(StoreMapInitial) _then)
      : super(_value, (v) => _then(v as StoreMapInitial));

  @override
  StoreMapInitial get _value => super._value as StoreMapInitial;
}

/// @nodoc

class _$StoreMapInitial implements StoreMapInitial {
  const _$StoreMapInitial();

  @override
  String toString() {
    return 'StoreMapState.storeMapInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StoreMapInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storeMapInitial,
    required TResult Function(FilterRequest? request) storeMapLoading,
    required TResult Function(List<PointItemViewModel> points) storeMapSuccess,
    required TResult Function(ErrorsResponse errors) storeMapError,
  }) {
    return storeMapInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? storeMapInitial,
    TResult Function(FilterRequest? request)? storeMapLoading,
    TResult Function(List<PointItemViewModel> points)? storeMapSuccess,
    TResult Function(ErrorsResponse errors)? storeMapError,
  }) {
    return storeMapInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storeMapInitial,
    TResult Function(FilterRequest? request)? storeMapLoading,
    TResult Function(List<PointItemViewModel> points)? storeMapSuccess,
    TResult Function(ErrorsResponse errors)? storeMapError,
    required TResult orElse(),
  }) {
    if (storeMapInitial != null) {
      return storeMapInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreMapInitial value) storeMapInitial,
    required TResult Function(StoreMapLoading value) storeMapLoading,
    required TResult Function(StoreMapSuccess value) storeMapSuccess,
    required TResult Function(StoreMapError value) storeMapError,
  }) {
    return storeMapInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreMapInitial value)? storeMapInitial,
    TResult Function(StoreMapLoading value)? storeMapLoading,
    TResult Function(StoreMapSuccess value)? storeMapSuccess,
    TResult Function(StoreMapError value)? storeMapError,
  }) {
    return storeMapInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreMapInitial value)? storeMapInitial,
    TResult Function(StoreMapLoading value)? storeMapLoading,
    TResult Function(StoreMapSuccess value)? storeMapSuccess,
    TResult Function(StoreMapError value)? storeMapError,
    required TResult orElse(),
  }) {
    if (storeMapInitial != null) {
      return storeMapInitial(this);
    }
    return orElse();
  }
}

abstract class StoreMapInitial implements StoreMapState {
  const factory StoreMapInitial() = _$StoreMapInitial;
}

/// @nodoc
abstract class $StoreMapLoadingCopyWith<$Res> {
  factory $StoreMapLoadingCopyWith(
          StoreMapLoading value, $Res Function(StoreMapLoading) then) =
      _$StoreMapLoadingCopyWithImpl<$Res>;
  $Res call({FilterRequest? request});
}

/// @nodoc
class _$StoreMapLoadingCopyWithImpl<$Res>
    extends _$StoreMapStateCopyWithImpl<$Res>
    implements $StoreMapLoadingCopyWith<$Res> {
  _$StoreMapLoadingCopyWithImpl(
      StoreMapLoading _value, $Res Function(StoreMapLoading) _then)
      : super(_value, (v) => _then(v as StoreMapLoading));

  @override
  StoreMapLoading get _value => super._value as StoreMapLoading;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(StoreMapLoading(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as FilterRequest?,
    ));
  }
}

/// @nodoc

class _$StoreMapLoading implements StoreMapLoading {
  const _$StoreMapLoading(this.request);

  @override
  final FilterRequest? request;

  @override
  String toString() {
    return 'StoreMapState.storeMapLoading(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StoreMapLoading &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  $StoreMapLoadingCopyWith<StoreMapLoading> get copyWith =>
      _$StoreMapLoadingCopyWithImpl<StoreMapLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storeMapInitial,
    required TResult Function(FilterRequest? request) storeMapLoading,
    required TResult Function(List<PointItemViewModel> points) storeMapSuccess,
    required TResult Function(ErrorsResponse errors) storeMapError,
  }) {
    return storeMapLoading(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? storeMapInitial,
    TResult Function(FilterRequest? request)? storeMapLoading,
    TResult Function(List<PointItemViewModel> points)? storeMapSuccess,
    TResult Function(ErrorsResponse errors)? storeMapError,
  }) {
    return storeMapLoading?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storeMapInitial,
    TResult Function(FilterRequest? request)? storeMapLoading,
    TResult Function(List<PointItemViewModel> points)? storeMapSuccess,
    TResult Function(ErrorsResponse errors)? storeMapError,
    required TResult orElse(),
  }) {
    if (storeMapLoading != null) {
      return storeMapLoading(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreMapInitial value) storeMapInitial,
    required TResult Function(StoreMapLoading value) storeMapLoading,
    required TResult Function(StoreMapSuccess value) storeMapSuccess,
    required TResult Function(StoreMapError value) storeMapError,
  }) {
    return storeMapLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreMapInitial value)? storeMapInitial,
    TResult Function(StoreMapLoading value)? storeMapLoading,
    TResult Function(StoreMapSuccess value)? storeMapSuccess,
    TResult Function(StoreMapError value)? storeMapError,
  }) {
    return storeMapLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreMapInitial value)? storeMapInitial,
    TResult Function(StoreMapLoading value)? storeMapLoading,
    TResult Function(StoreMapSuccess value)? storeMapSuccess,
    TResult Function(StoreMapError value)? storeMapError,
    required TResult orElse(),
  }) {
    if (storeMapLoading != null) {
      return storeMapLoading(this);
    }
    return orElse();
  }
}

abstract class StoreMapLoading implements StoreMapState {
  const factory StoreMapLoading(FilterRequest? request) = _$StoreMapLoading;

  FilterRequest? get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreMapLoadingCopyWith<StoreMapLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreMapSuccessCopyWith<$Res> {
  factory $StoreMapSuccessCopyWith(
          StoreMapSuccess value, $Res Function(StoreMapSuccess) then) =
      _$StoreMapSuccessCopyWithImpl<$Res>;
  $Res call({List<PointItemViewModel> points});
}

/// @nodoc
class _$StoreMapSuccessCopyWithImpl<$Res>
    extends _$StoreMapStateCopyWithImpl<$Res>
    implements $StoreMapSuccessCopyWith<$Res> {
  _$StoreMapSuccessCopyWithImpl(
      StoreMapSuccess _value, $Res Function(StoreMapSuccess) _then)
      : super(_value, (v) => _then(v as StoreMapSuccess));

  @override
  StoreMapSuccess get _value => super._value as StoreMapSuccess;

  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(StoreMapSuccess(
      points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointItemViewModel>,
    ));
  }
}

/// @nodoc

class _$StoreMapSuccess implements StoreMapSuccess {
  const _$StoreMapSuccess(this.points);

  @override
  final List<PointItemViewModel> points;

  @override
  String toString() {
    return 'StoreMapState.storeMapSuccess(points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StoreMapSuccess &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(points);

  @JsonKey(ignore: true)
  @override
  $StoreMapSuccessCopyWith<StoreMapSuccess> get copyWith =>
      _$StoreMapSuccessCopyWithImpl<StoreMapSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storeMapInitial,
    required TResult Function(FilterRequest? request) storeMapLoading,
    required TResult Function(List<PointItemViewModel> points) storeMapSuccess,
    required TResult Function(ErrorsResponse errors) storeMapError,
  }) {
    return storeMapSuccess(points);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? storeMapInitial,
    TResult Function(FilterRequest? request)? storeMapLoading,
    TResult Function(List<PointItemViewModel> points)? storeMapSuccess,
    TResult Function(ErrorsResponse errors)? storeMapError,
  }) {
    return storeMapSuccess?.call(points);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storeMapInitial,
    TResult Function(FilterRequest? request)? storeMapLoading,
    TResult Function(List<PointItemViewModel> points)? storeMapSuccess,
    TResult Function(ErrorsResponse errors)? storeMapError,
    required TResult orElse(),
  }) {
    if (storeMapSuccess != null) {
      return storeMapSuccess(points);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreMapInitial value) storeMapInitial,
    required TResult Function(StoreMapLoading value) storeMapLoading,
    required TResult Function(StoreMapSuccess value) storeMapSuccess,
    required TResult Function(StoreMapError value) storeMapError,
  }) {
    return storeMapSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreMapInitial value)? storeMapInitial,
    TResult Function(StoreMapLoading value)? storeMapLoading,
    TResult Function(StoreMapSuccess value)? storeMapSuccess,
    TResult Function(StoreMapError value)? storeMapError,
  }) {
    return storeMapSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreMapInitial value)? storeMapInitial,
    TResult Function(StoreMapLoading value)? storeMapLoading,
    TResult Function(StoreMapSuccess value)? storeMapSuccess,
    TResult Function(StoreMapError value)? storeMapError,
    required TResult orElse(),
  }) {
    if (storeMapSuccess != null) {
      return storeMapSuccess(this);
    }
    return orElse();
  }
}

abstract class StoreMapSuccess implements StoreMapState {
  const factory StoreMapSuccess(List<PointItemViewModel> points) =
      _$StoreMapSuccess;

  List<PointItemViewModel> get points => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreMapSuccessCopyWith<StoreMapSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreMapErrorCopyWith<$Res> {
  factory $StoreMapErrorCopyWith(
          StoreMapError value, $Res Function(StoreMapError) then) =
      _$StoreMapErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$StoreMapErrorCopyWithImpl<$Res>
    extends _$StoreMapStateCopyWithImpl<$Res>
    implements $StoreMapErrorCopyWith<$Res> {
  _$StoreMapErrorCopyWithImpl(
      StoreMapError _value, $Res Function(StoreMapError) _then)
      : super(_value, (v) => _then(v as StoreMapError));

  @override
  StoreMapError get _value => super._value as StoreMapError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(StoreMapError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$StoreMapError implements StoreMapError {
  const _$StoreMapError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'StoreMapState.storeMapError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StoreMapError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $StoreMapErrorCopyWith<StoreMapError> get copyWith =>
      _$StoreMapErrorCopyWithImpl<StoreMapError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storeMapInitial,
    required TResult Function(FilterRequest? request) storeMapLoading,
    required TResult Function(List<PointItemViewModel> points) storeMapSuccess,
    required TResult Function(ErrorsResponse errors) storeMapError,
  }) {
    return storeMapError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? storeMapInitial,
    TResult Function(FilterRequest? request)? storeMapLoading,
    TResult Function(List<PointItemViewModel> points)? storeMapSuccess,
    TResult Function(ErrorsResponse errors)? storeMapError,
  }) {
    return storeMapError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storeMapInitial,
    TResult Function(FilterRequest? request)? storeMapLoading,
    TResult Function(List<PointItemViewModel> points)? storeMapSuccess,
    TResult Function(ErrorsResponse errors)? storeMapError,
    required TResult orElse(),
  }) {
    if (storeMapError != null) {
      return storeMapError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreMapInitial value) storeMapInitial,
    required TResult Function(StoreMapLoading value) storeMapLoading,
    required TResult Function(StoreMapSuccess value) storeMapSuccess,
    required TResult Function(StoreMapError value) storeMapError,
  }) {
    return storeMapError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreMapInitial value)? storeMapInitial,
    TResult Function(StoreMapLoading value)? storeMapLoading,
    TResult Function(StoreMapSuccess value)? storeMapSuccess,
    TResult Function(StoreMapError value)? storeMapError,
  }) {
    return storeMapError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreMapInitial value)? storeMapInitial,
    TResult Function(StoreMapLoading value)? storeMapLoading,
    TResult Function(StoreMapSuccess value)? storeMapSuccess,
    TResult Function(StoreMapError value)? storeMapError,
    required TResult orElse(),
  }) {
    if (storeMapError != null) {
      return storeMapError(this);
    }
    return orElse();
  }
}

abstract class StoreMapError implements StoreMapState {
  const factory StoreMapError(ErrorsResponse errors) = _$StoreMapError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreMapErrorCopyWith<StoreMapError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StoreMapEventTearOff {
  const _$StoreMapEventTearOff();

  GetStoreMapPoints getStoreMapPoint({FilterRequest? customFilter}) {
    return GetStoreMapPoints(
      customFilter: customFilter,
    );
  }
}

/// @nodoc
const $StoreMapEvent = _$StoreMapEventTearOff();

/// @nodoc
mixin _$StoreMapEvent {
  FilterRequest? get customFilter => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilterRequest? customFilter) getStoreMapPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FilterRequest? customFilter)? getStoreMapPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilterRequest? customFilter)? getStoreMapPoint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetStoreMapPoints value) getStoreMapPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetStoreMapPoints value)? getStoreMapPoint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetStoreMapPoints value)? getStoreMapPoint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreMapEventCopyWith<StoreMapEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreMapEventCopyWith<$Res> {
  factory $StoreMapEventCopyWith(
          StoreMapEvent value, $Res Function(StoreMapEvent) then) =
      _$StoreMapEventCopyWithImpl<$Res>;
  $Res call({FilterRequest? customFilter});
}

/// @nodoc
class _$StoreMapEventCopyWithImpl<$Res>
    implements $StoreMapEventCopyWith<$Res> {
  _$StoreMapEventCopyWithImpl(this._value, this._then);

  final StoreMapEvent _value;
  // ignore: unused_field
  final $Res Function(StoreMapEvent) _then;

  @override
  $Res call({
    Object? customFilter = freezed,
  }) {
    return _then(_value.copyWith(
      customFilter: customFilter == freezed
          ? _value.customFilter
          : customFilter // ignore: cast_nullable_to_non_nullable
              as FilterRequest?,
    ));
  }
}

/// @nodoc
abstract class $GetStoreMapPointsCopyWith<$Res>
    implements $StoreMapEventCopyWith<$Res> {
  factory $GetStoreMapPointsCopyWith(
          GetStoreMapPoints value, $Res Function(GetStoreMapPoints) then) =
      _$GetStoreMapPointsCopyWithImpl<$Res>;
  @override
  $Res call({FilterRequest? customFilter});
}

/// @nodoc
class _$GetStoreMapPointsCopyWithImpl<$Res>
    extends _$StoreMapEventCopyWithImpl<$Res>
    implements $GetStoreMapPointsCopyWith<$Res> {
  _$GetStoreMapPointsCopyWithImpl(
      GetStoreMapPoints _value, $Res Function(GetStoreMapPoints) _then)
      : super(_value, (v) => _then(v as GetStoreMapPoints));

  @override
  GetStoreMapPoints get _value => super._value as GetStoreMapPoints;

  @override
  $Res call({
    Object? customFilter = freezed,
  }) {
    return _then(GetStoreMapPoints(
      customFilter: customFilter == freezed
          ? _value.customFilter
          : customFilter // ignore: cast_nullable_to_non_nullable
              as FilterRequest?,
    ));
  }
}

/// @nodoc

class _$GetStoreMapPoints implements GetStoreMapPoints {
  const _$GetStoreMapPoints({this.customFilter});

  @override
  final FilterRequest? customFilter;

  @override
  String toString() {
    return 'StoreMapEvent.getStoreMapPoint(customFilter: $customFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetStoreMapPoints &&
            (identical(other.customFilter, customFilter) ||
                const DeepCollectionEquality()
                    .equals(other.customFilter, customFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(customFilter);

  @JsonKey(ignore: true)
  @override
  $GetStoreMapPointsCopyWith<GetStoreMapPoints> get copyWith =>
      _$GetStoreMapPointsCopyWithImpl<GetStoreMapPoints>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilterRequest? customFilter) getStoreMapPoint,
  }) {
    return getStoreMapPoint(customFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FilterRequest? customFilter)? getStoreMapPoint,
  }) {
    return getStoreMapPoint?.call(customFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilterRequest? customFilter)? getStoreMapPoint,
    required TResult orElse(),
  }) {
    if (getStoreMapPoint != null) {
      return getStoreMapPoint(customFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetStoreMapPoints value) getStoreMapPoint,
  }) {
    return getStoreMapPoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetStoreMapPoints value)? getStoreMapPoint,
  }) {
    return getStoreMapPoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetStoreMapPoints value)? getStoreMapPoint,
    required TResult orElse(),
  }) {
    if (getStoreMapPoint != null) {
      return getStoreMapPoint(this);
    }
    return orElse();
  }
}

abstract class GetStoreMapPoints implements StoreMapEvent {
  const factory GetStoreMapPoints({FilterRequest? customFilter}) =
      _$GetStoreMapPoints;

  @override
  FilterRequest? get customFilter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetStoreMapPointsCopyWith<GetStoreMapPoints> get copyWith =>
      throw _privateConstructorUsedError;
}
