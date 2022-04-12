// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoriesStateTearOff {
  const _$CategoriesStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading(FilterRequest request) {
    return Loading(
      request,
    );
  }

  GetCategoriesSuccess getCategoriesSuccess(
      {required CategoriesViewModel categories,
      required List<PointItemViewModel> points,
      int? cityId}) {
    return GetCategoriesSuccess(
      categories: categories,
      points: points,
      cityId: cityId,
    );
  }

  GetCategoriesError getCategoriesError(ErrorsResponse errors) {
    return GetCategoriesError(
      errors,
    );
  }
}

/// @nodoc
const $CategoriesState = _$CategoriesStateTearOff();

/// @nodoc
mixin _$CategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FilterRequest request) loading,
    required TResult Function(CategoriesViewModel categories,
            List<PointItemViewModel> points, int? cityId)
        getCategoriesSuccess,
    required TResult Function(ErrorsResponse errors) getCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FilterRequest request)? loading,
    TResult Function(CategoriesViewModel categories,
            List<PointItemViewModel> points, int? cityId)?
        getCategoriesSuccess,
    TResult Function(ErrorsResponse errors)? getCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FilterRequest request)? loading,
    TResult Function(CategoriesViewModel categories,
            List<PointItemViewModel> points, int? cityId)?
        getCategoriesSuccess,
    TResult Function(ErrorsResponse errors)? getCategoriesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
    required TResult Function(GetCategoriesError value) getCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    TResult Function(GetCategoriesError value)? getCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    TResult Function(GetCategoriesError value)? getCategoriesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  final CategoriesState _value;
  // ignore: unused_field
  final $Res Function(CategoriesState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$CategoriesStateCopyWithImpl<$Res>
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
    return 'CategoriesState.initial()';
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
    required TResult Function(FilterRequest request) loading,
    required TResult Function(CategoriesViewModel categories,
            List<PointItemViewModel> points, int? cityId)
        getCategoriesSuccess,
    required TResult Function(ErrorsResponse errors) getCategoriesError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FilterRequest request)? loading,
    TResult Function(CategoriesViewModel categories,
            List<PointItemViewModel> points, int? cityId)?
        getCategoriesSuccess,
    TResult Function(ErrorsResponse errors)? getCategoriesError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FilterRequest request)? loading,
    TResult Function(CategoriesViewModel categories,
            List<PointItemViewModel> points, int? cityId)?
        getCategoriesSuccess,
    TResult Function(ErrorsResponse errors)? getCategoriesError,
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
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
    required TResult Function(GetCategoriesError value) getCategoriesError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    TResult Function(GetCategoriesError value)? getCategoriesError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    TResult Function(GetCategoriesError value)? getCategoriesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CategoriesState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  $Res call({FilterRequest request});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$CategoriesStateCopyWithImpl<$Res>
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
              as FilterRequest,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading(this.request);

  @override
  final FilterRequest request;

  @override
  String toString() {
    return 'CategoriesState.loading(request: $request)';
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
    required TResult Function(FilterRequest request) loading,
    required TResult Function(CategoriesViewModel categories,
            List<PointItemViewModel> points, int? cityId)
        getCategoriesSuccess,
    required TResult Function(ErrorsResponse errors) getCategoriesError,
  }) {
    return loading(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FilterRequest request)? loading,
    TResult Function(CategoriesViewModel categories,
            List<PointItemViewModel> points, int? cityId)?
        getCategoriesSuccess,
    TResult Function(ErrorsResponse errors)? getCategoriesError,
  }) {
    return loading?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FilterRequest request)? loading,
    TResult Function(CategoriesViewModel categories,
            List<PointItemViewModel> points, int? cityId)?
        getCategoriesSuccess,
    TResult Function(ErrorsResponse errors)? getCategoriesError,
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
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
    required TResult Function(GetCategoriesError value) getCategoriesError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    TResult Function(GetCategoriesError value)? getCategoriesError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    TResult Function(GetCategoriesError value)? getCategoriesError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CategoriesState {
  const factory Loading(FilterRequest request) = _$Loading;

  FilterRequest get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCategoriesSuccessCopyWith<$Res> {
  factory $GetCategoriesSuccessCopyWith(GetCategoriesSuccess value,
          $Res Function(GetCategoriesSuccess) then) =
      _$GetCategoriesSuccessCopyWithImpl<$Res>;
  $Res call(
      {CategoriesViewModel categories,
      List<PointItemViewModel> points,
      int? cityId});

  $CategoriesViewModelCopyWith<$Res> get categories;
}

/// @nodoc
class _$GetCategoriesSuccessCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res>
    implements $GetCategoriesSuccessCopyWith<$Res> {
  _$GetCategoriesSuccessCopyWithImpl(
      GetCategoriesSuccess _value, $Res Function(GetCategoriesSuccess) _then)
      : super(_value, (v) => _then(v as GetCategoriesSuccess));

  @override
  GetCategoriesSuccess get _value => super._value as GetCategoriesSuccess;

  @override
  $Res call({
    Object? categories = freezed,
    Object? points = freezed,
    Object? cityId = freezed,
  }) {
    return _then(GetCategoriesSuccess(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoriesViewModel,
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
  $CategoriesViewModelCopyWith<$Res> get categories {
    return $CategoriesViewModelCopyWith<$Res>(_value.categories, (value) {
      return _then(_value.copyWith(categories: value));
    });
  }
}

/// @nodoc

class _$GetCategoriesSuccess implements GetCategoriesSuccess {
  const _$GetCategoriesSuccess(
      {required this.categories, required this.points, this.cityId});

  @override
  final CategoriesViewModel categories;
  @override
  final List<PointItemViewModel> points;
  @override
  final int? cityId;

  @override
  String toString() {
    return 'CategoriesState.getCategoriesSuccess(categories: $categories, points: $points, cityId: $cityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCategoriesSuccess &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(cityId);

  @JsonKey(ignore: true)
  @override
  $GetCategoriesSuccessCopyWith<GetCategoriesSuccess> get copyWith =>
      _$GetCategoriesSuccessCopyWithImpl<GetCategoriesSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FilterRequest request) loading,
    required TResult Function(CategoriesViewModel categories,
            List<PointItemViewModel> points, int? cityId)
        getCategoriesSuccess,
    required TResult Function(ErrorsResponse errors) getCategoriesError,
  }) {
    return getCategoriesSuccess(categories, points, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FilterRequest request)? loading,
    TResult Function(CategoriesViewModel categories,
            List<PointItemViewModel> points, int? cityId)?
        getCategoriesSuccess,
    TResult Function(ErrorsResponse errors)? getCategoriesError,
  }) {
    return getCategoriesSuccess?.call(categories, points, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FilterRequest request)? loading,
    TResult Function(CategoriesViewModel categories,
            List<PointItemViewModel> points, int? cityId)?
        getCategoriesSuccess,
    TResult Function(ErrorsResponse errors)? getCategoriesError,
    required TResult orElse(),
  }) {
    if (getCategoriesSuccess != null) {
      return getCategoriesSuccess(categories, points, cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
    required TResult Function(GetCategoriesError value) getCategoriesError,
  }) {
    return getCategoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    TResult Function(GetCategoriesError value)? getCategoriesError,
  }) {
    return getCategoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    TResult Function(GetCategoriesError value)? getCategoriesError,
    required TResult orElse(),
  }) {
    if (getCategoriesSuccess != null) {
      return getCategoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesSuccess implements CategoriesState {
  const factory GetCategoriesSuccess(
      {required CategoriesViewModel categories,
      required List<PointItemViewModel> points,
      int? cityId}) = _$GetCategoriesSuccess;

  CategoriesViewModel get categories => throw _privateConstructorUsedError;
  List<PointItemViewModel> get points => throw _privateConstructorUsedError;
  int? get cityId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCategoriesSuccessCopyWith<GetCategoriesSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCategoriesErrorCopyWith<$Res> {
  factory $GetCategoriesErrorCopyWith(
          GetCategoriesError value, $Res Function(GetCategoriesError) then) =
      _$GetCategoriesErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$GetCategoriesErrorCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res>
    implements $GetCategoriesErrorCopyWith<$Res> {
  _$GetCategoriesErrorCopyWithImpl(
      GetCategoriesError _value, $Res Function(GetCategoriesError) _then)
      : super(_value, (v) => _then(v as GetCategoriesError));

  @override
  GetCategoriesError get _value => super._value as GetCategoriesError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(GetCategoriesError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$GetCategoriesError implements GetCategoriesError {
  const _$GetCategoriesError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'CategoriesState.getCategoriesError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCategoriesError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $GetCategoriesErrorCopyWith<GetCategoriesError> get copyWith =>
      _$GetCategoriesErrorCopyWithImpl<GetCategoriesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FilterRequest request) loading,
    required TResult Function(CategoriesViewModel categories,
            List<PointItemViewModel> points, int? cityId)
        getCategoriesSuccess,
    required TResult Function(ErrorsResponse errors) getCategoriesError,
  }) {
    return getCategoriesError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FilterRequest request)? loading,
    TResult Function(CategoriesViewModel categories,
            List<PointItemViewModel> points, int? cityId)?
        getCategoriesSuccess,
    TResult Function(ErrorsResponse errors)? getCategoriesError,
  }) {
    return getCategoriesError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FilterRequest request)? loading,
    TResult Function(CategoriesViewModel categories,
            List<PointItemViewModel> points, int? cityId)?
        getCategoriesSuccess,
    TResult Function(ErrorsResponse errors)? getCategoriesError,
    required TResult orElse(),
  }) {
    if (getCategoriesError != null) {
      return getCategoriesError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetCategoriesSuccess value) getCategoriesSuccess,
    required TResult Function(GetCategoriesError value) getCategoriesError,
  }) {
    return getCategoriesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    TResult Function(GetCategoriesError value)? getCategoriesError,
  }) {
    return getCategoriesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetCategoriesSuccess value)? getCategoriesSuccess,
    TResult Function(GetCategoriesError value)? getCategoriesError,
    required TResult orElse(),
  }) {
    if (getCategoriesError != null) {
      return getCategoriesError(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesError implements CategoriesState {
  const factory GetCategoriesError(ErrorsResponse errors) =
      _$GetCategoriesError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCategoriesErrorCopyWith<GetCategoriesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CategoriesEventTearOff {
  const _$CategoriesEventTearOff();

  GetCategories getCategories() {
    return const GetCategories();
  }

  SetCategoryId setCategoryId(int? categoryId) {
    return SetCategoryId(
      categoryId,
    );
  }
}

/// @nodoc
const $CategoriesEvent = _$CategoriesEventTearOff();

/// @nodoc
mixin _$CategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(int? categoryId) setCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(int? categoryId)? setCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(int? categoryId)? setCategoryId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(SetCategoryId value) setCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCategories value)? getCategories,
    TResult Function(SetCategoryId value)? setCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategories value)? getCategories,
    TResult Function(SetCategoryId value)? setCategoryId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

  final CategoriesEvent _value;
  // ignore: unused_field
  final $Res Function(CategoriesEvent) _then;
}

/// @nodoc
abstract class $GetCategoriesCopyWith<$Res> {
  factory $GetCategoriesCopyWith(
          GetCategories value, $Res Function(GetCategories) then) =
      _$GetCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCategoriesCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res>
    implements $GetCategoriesCopyWith<$Res> {
  _$GetCategoriesCopyWithImpl(
      GetCategories _value, $Res Function(GetCategories) _then)
      : super(_value, (v) => _then(v as GetCategories));

  @override
  GetCategories get _value => super._value as GetCategories;
}

/// @nodoc

class _$GetCategories implements GetCategories {
  const _$GetCategories();

  @override
  String toString() {
    return 'CategoriesEvent.getCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(int? categoryId) setCategoryId,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(int? categoryId)? setCategoryId,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(int? categoryId)? setCategoryId,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(SetCategoryId value) setCategoryId,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCategories value)? getCategories,
    TResult Function(SetCategoryId value)? setCategoryId,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategories value)? getCategories,
    TResult Function(SetCategoryId value)? setCategoryId,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class GetCategories implements CategoriesEvent {
  const factory GetCategories() = _$GetCategories;
}

/// @nodoc
abstract class $SetCategoryIdCopyWith<$Res> {
  factory $SetCategoryIdCopyWith(
          SetCategoryId value, $Res Function(SetCategoryId) then) =
      _$SetCategoryIdCopyWithImpl<$Res>;
  $Res call({int? categoryId});
}

/// @nodoc
class _$SetCategoryIdCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res>
    implements $SetCategoryIdCopyWith<$Res> {
  _$SetCategoryIdCopyWithImpl(
      SetCategoryId _value, $Res Function(SetCategoryId) _then)
      : super(_value, (v) => _then(v as SetCategoryId));

  @override
  SetCategoryId get _value => super._value as SetCategoryId;

  @override
  $Res call({
    Object? categoryId = freezed,
  }) {
    return _then(SetCategoryId(
      categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SetCategoryId implements SetCategoryId {
  const _$SetCategoryId(this.categoryId);

  @override
  final int? categoryId;

  @override
  String toString() {
    return 'CategoriesEvent.setCategoryId(categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetCategoryId &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categoryId);

  @JsonKey(ignore: true)
  @override
  $SetCategoryIdCopyWith<SetCategoryId> get copyWith =>
      _$SetCategoryIdCopyWithImpl<SetCategoryId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(int? categoryId) setCategoryId,
  }) {
    return setCategoryId(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(int? categoryId)? setCategoryId,
  }) {
    return setCategoryId?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(int? categoryId)? setCategoryId,
    required TResult orElse(),
  }) {
    if (setCategoryId != null) {
      return setCategoryId(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(SetCategoryId value) setCategoryId,
  }) {
    return setCategoryId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCategories value)? getCategories,
    TResult Function(SetCategoryId value)? setCategoryId,
  }) {
    return setCategoryId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategories value)? getCategories,
    TResult Function(SetCategoryId value)? setCategoryId,
    required TResult orElse(),
  }) {
    if (setCategoryId != null) {
      return setCategoryId(this);
    }
    return orElse();
  }
}

abstract class SetCategoryId implements CategoriesEvent {
  const factory SetCategoryId(int? categoryId) = _$SetCategoryId;

  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetCategoryIdCopyWith<SetCategoryId> get copyWith =>
      throw _privateConstructorUsedError;
}
