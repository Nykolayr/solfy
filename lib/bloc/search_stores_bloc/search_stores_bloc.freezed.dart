// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_stores_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchStoresStateTearOff {
  const _$SearchStoresStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loadInProgress() {
    return const Loading();
  }

  LessThenThreeSymbols lessThenThreeSymbols() {
    return const LessThenThreeSymbols();
  }

  EmptyQuery emptyQuery() {
    return const EmptyQuery();
  }

  FoundSuccess foundSuccess(
      SearchResp search, bool isCategories, bool isBrands) {
    return FoundSuccess(
      search,
      isCategories,
      isBrands,
    );
  }

  EmptyResults emptyResults() {
    return const EmptyResults();
  }

  FoundError foundError(ErrorsResponse errors) {
    return FoundError(
      errors,
    );
  }
}

/// @nodoc
const $SearchStoresState = _$SearchStoresStateTearOff();

/// @nodoc
mixin _$SearchStoresState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() lessThenThreeSymbols,
    required TResult Function() emptyQuery,
    required TResult Function(
            SearchResp search, bool isCategories, bool isBrands)
        foundSuccess,
    required TResult Function() emptyResults,
    required TResult Function(ErrorsResponse errors) foundError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loadInProgress,
    required TResult Function(LessThenThreeSymbols value) lessThenThreeSymbols,
    required TResult Function(EmptyQuery value) emptyQuery,
    required TResult Function(FoundSuccess value) foundSuccess,
    required TResult Function(EmptyResults value) emptyResults,
    required TResult Function(FoundError value) foundError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStoresStateCopyWith<$Res> {
  factory $SearchStoresStateCopyWith(
          SearchStoresState value, $Res Function(SearchStoresState) then) =
      _$SearchStoresStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStoresStateCopyWithImpl<$Res>
    implements $SearchStoresStateCopyWith<$Res> {
  _$SearchStoresStateCopyWithImpl(this._value, this._then);

  final SearchStoresState _value;
  // ignore: unused_field
  final $Res Function(SearchStoresState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SearchStoresStateCopyWithImpl<$Res>
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
    return 'SearchStoresState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function() lessThenThreeSymbols,
    required TResult Function() emptyQuery,
    required TResult Function(
            SearchResp search, bool isCategories, bool isBrands)
        foundSuccess,
    required TResult Function() emptyResults,
    required TResult Function(ErrorsResponse errors) foundError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
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
    required TResult Function(Loading value) loadInProgress,
    required TResult Function(LessThenThreeSymbols value) lessThenThreeSymbols,
    required TResult Function(EmptyQuery value) emptyQuery,
    required TResult Function(FoundSuccess value) foundSuccess,
    required TResult Function(EmptyResults value) emptyResults,
    required TResult Function(FoundError value) foundError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SearchStoresState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$SearchStoresStateCopyWithImpl<$Res>
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
    return 'SearchStoresState.loadInProgress()';
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
    required TResult Function() loadInProgress,
    required TResult Function() lessThenThreeSymbols,
    required TResult Function() emptyQuery,
    required TResult Function(
            SearchResp search, bool isCategories, bool isBrands)
        foundSuccess,
    required TResult Function() emptyResults,
    required TResult Function(ErrorsResponse errors) foundError,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loadInProgress,
    required TResult Function(LessThenThreeSymbols value) lessThenThreeSymbols,
    required TResult Function(EmptyQuery value) emptyQuery,
    required TResult Function(FoundSuccess value) foundSuccess,
    required TResult Function(EmptyResults value) emptyResults,
    required TResult Function(FoundError value) foundError,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class Loading implements SearchStoresState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LessThenThreeSymbolsCopyWith<$Res> {
  factory $LessThenThreeSymbolsCopyWith(LessThenThreeSymbols value,
          $Res Function(LessThenThreeSymbols) then) =
      _$LessThenThreeSymbolsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LessThenThreeSymbolsCopyWithImpl<$Res>
    extends _$SearchStoresStateCopyWithImpl<$Res>
    implements $LessThenThreeSymbolsCopyWith<$Res> {
  _$LessThenThreeSymbolsCopyWithImpl(
      LessThenThreeSymbols _value, $Res Function(LessThenThreeSymbols) _then)
      : super(_value, (v) => _then(v as LessThenThreeSymbols));

  @override
  LessThenThreeSymbols get _value => super._value as LessThenThreeSymbols;
}

/// @nodoc

class _$LessThenThreeSymbols implements LessThenThreeSymbols {
  const _$LessThenThreeSymbols();

  @override
  String toString() {
    return 'SearchStoresState.lessThenThreeSymbols()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LessThenThreeSymbols);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() lessThenThreeSymbols,
    required TResult Function() emptyQuery,
    required TResult Function(
            SearchResp search, bool isCategories, bool isBrands)
        foundSuccess,
    required TResult Function() emptyResults,
    required TResult Function(ErrorsResponse errors) foundError,
  }) {
    return lessThenThreeSymbols();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
  }) {
    return lessThenThreeSymbols?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
    required TResult orElse(),
  }) {
    if (lessThenThreeSymbols != null) {
      return lessThenThreeSymbols();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loadInProgress,
    required TResult Function(LessThenThreeSymbols value) lessThenThreeSymbols,
    required TResult Function(EmptyQuery value) emptyQuery,
    required TResult Function(FoundSuccess value) foundSuccess,
    required TResult Function(EmptyResults value) emptyResults,
    required TResult Function(FoundError value) foundError,
  }) {
    return lessThenThreeSymbols(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
  }) {
    return lessThenThreeSymbols?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
    required TResult orElse(),
  }) {
    if (lessThenThreeSymbols != null) {
      return lessThenThreeSymbols(this);
    }
    return orElse();
  }
}

abstract class LessThenThreeSymbols implements SearchStoresState {
  const factory LessThenThreeSymbols() = _$LessThenThreeSymbols;
}

/// @nodoc
abstract class $EmptyQueryCopyWith<$Res> {
  factory $EmptyQueryCopyWith(
          EmptyQuery value, $Res Function(EmptyQuery) then) =
      _$EmptyQueryCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyQueryCopyWithImpl<$Res>
    extends _$SearchStoresStateCopyWithImpl<$Res>
    implements $EmptyQueryCopyWith<$Res> {
  _$EmptyQueryCopyWithImpl(EmptyQuery _value, $Res Function(EmptyQuery) _then)
      : super(_value, (v) => _then(v as EmptyQuery));

  @override
  EmptyQuery get _value => super._value as EmptyQuery;
}

/// @nodoc

class _$EmptyQuery implements EmptyQuery {
  const _$EmptyQuery();

  @override
  String toString() {
    return 'SearchStoresState.emptyQuery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyQuery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() lessThenThreeSymbols,
    required TResult Function() emptyQuery,
    required TResult Function(
            SearchResp search, bool isCategories, bool isBrands)
        foundSuccess,
    required TResult Function() emptyResults,
    required TResult Function(ErrorsResponse errors) foundError,
  }) {
    return emptyQuery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
  }) {
    return emptyQuery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
    required TResult orElse(),
  }) {
    if (emptyQuery != null) {
      return emptyQuery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loadInProgress,
    required TResult Function(LessThenThreeSymbols value) lessThenThreeSymbols,
    required TResult Function(EmptyQuery value) emptyQuery,
    required TResult Function(FoundSuccess value) foundSuccess,
    required TResult Function(EmptyResults value) emptyResults,
    required TResult Function(FoundError value) foundError,
  }) {
    return emptyQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
  }) {
    return emptyQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
    required TResult orElse(),
  }) {
    if (emptyQuery != null) {
      return emptyQuery(this);
    }
    return orElse();
  }
}

abstract class EmptyQuery implements SearchStoresState {
  const factory EmptyQuery() = _$EmptyQuery;
}

/// @nodoc
abstract class $FoundSuccessCopyWith<$Res> {
  factory $FoundSuccessCopyWith(
          FoundSuccess value, $Res Function(FoundSuccess) then) =
      _$FoundSuccessCopyWithImpl<$Res>;
  $Res call({SearchResp search, bool isCategories, bool isBrands});
}

/// @nodoc
class _$FoundSuccessCopyWithImpl<$Res>
    extends _$SearchStoresStateCopyWithImpl<$Res>
    implements $FoundSuccessCopyWith<$Res> {
  _$FoundSuccessCopyWithImpl(
      FoundSuccess _value, $Res Function(FoundSuccess) _then)
      : super(_value, (v) => _then(v as FoundSuccess));

  @override
  FoundSuccess get _value => super._value as FoundSuccess;

  @override
  $Res call({
    Object? search = freezed,
    Object? isCategories = freezed,
    Object? isBrands = freezed,
  }) {
    return _then(FoundSuccess(
      search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as SearchResp,
      isCategories == freezed
          ? _value.isCategories
          : isCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      isBrands == freezed
          ? _value.isBrands
          : isBrands // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FoundSuccess implements FoundSuccess {
  const _$FoundSuccess(this.search, this.isCategories, this.isBrands);

  @override
  final SearchResp search;
  @override
  final bool isCategories;
  @override
  final bool isBrands;

  @override
  String toString() {
    return 'SearchStoresState.foundSuccess(search: $search, isCategories: $isCategories, isBrands: $isBrands)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FoundSuccess &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.isCategories, isCategories) ||
                const DeepCollectionEquality()
                    .equals(other.isCategories, isCategories)) &&
            (identical(other.isBrands, isBrands) ||
                const DeepCollectionEquality()
                    .equals(other.isBrands, isBrands)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(isCategories) ^
      const DeepCollectionEquality().hash(isBrands);

  @JsonKey(ignore: true)
  @override
  $FoundSuccessCopyWith<FoundSuccess> get copyWith =>
      _$FoundSuccessCopyWithImpl<FoundSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() lessThenThreeSymbols,
    required TResult Function() emptyQuery,
    required TResult Function(
            SearchResp search, bool isCategories, bool isBrands)
        foundSuccess,
    required TResult Function() emptyResults,
    required TResult Function(ErrorsResponse errors) foundError,
  }) {
    return foundSuccess(search, isCategories, isBrands);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
  }) {
    return foundSuccess?.call(search, isCategories, isBrands);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
    required TResult orElse(),
  }) {
    if (foundSuccess != null) {
      return foundSuccess(search, isCategories, isBrands);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loadInProgress,
    required TResult Function(LessThenThreeSymbols value) lessThenThreeSymbols,
    required TResult Function(EmptyQuery value) emptyQuery,
    required TResult Function(FoundSuccess value) foundSuccess,
    required TResult Function(EmptyResults value) emptyResults,
    required TResult Function(FoundError value) foundError,
  }) {
    return foundSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
  }) {
    return foundSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
    required TResult orElse(),
  }) {
    if (foundSuccess != null) {
      return foundSuccess(this);
    }
    return orElse();
  }
}

abstract class FoundSuccess implements SearchStoresState {
  const factory FoundSuccess(
      SearchResp search, bool isCategories, bool isBrands) = _$FoundSuccess;

  SearchResp get search => throw _privateConstructorUsedError;
  bool get isCategories => throw _privateConstructorUsedError;
  bool get isBrands => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoundSuccessCopyWith<FoundSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyResultsCopyWith<$Res> {
  factory $EmptyResultsCopyWith(
          EmptyResults value, $Res Function(EmptyResults) then) =
      _$EmptyResultsCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyResultsCopyWithImpl<$Res>
    extends _$SearchStoresStateCopyWithImpl<$Res>
    implements $EmptyResultsCopyWith<$Res> {
  _$EmptyResultsCopyWithImpl(
      EmptyResults _value, $Res Function(EmptyResults) _then)
      : super(_value, (v) => _then(v as EmptyResults));

  @override
  EmptyResults get _value => super._value as EmptyResults;
}

/// @nodoc

class _$EmptyResults implements EmptyResults {
  const _$EmptyResults();

  @override
  String toString() {
    return 'SearchStoresState.emptyResults()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyResults);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() lessThenThreeSymbols,
    required TResult Function() emptyQuery,
    required TResult Function(
            SearchResp search, bool isCategories, bool isBrands)
        foundSuccess,
    required TResult Function() emptyResults,
    required TResult Function(ErrorsResponse errors) foundError,
  }) {
    return emptyResults();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
  }) {
    return emptyResults?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
    required TResult orElse(),
  }) {
    if (emptyResults != null) {
      return emptyResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loadInProgress,
    required TResult Function(LessThenThreeSymbols value) lessThenThreeSymbols,
    required TResult Function(EmptyQuery value) emptyQuery,
    required TResult Function(FoundSuccess value) foundSuccess,
    required TResult Function(EmptyResults value) emptyResults,
    required TResult Function(FoundError value) foundError,
  }) {
    return emptyResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
  }) {
    return emptyResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
    required TResult orElse(),
  }) {
    if (emptyResults != null) {
      return emptyResults(this);
    }
    return orElse();
  }
}

abstract class EmptyResults implements SearchStoresState {
  const factory EmptyResults() = _$EmptyResults;
}

/// @nodoc
abstract class $FoundErrorCopyWith<$Res> {
  factory $FoundErrorCopyWith(
          FoundError value, $Res Function(FoundError) then) =
      _$FoundErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$FoundErrorCopyWithImpl<$Res>
    extends _$SearchStoresStateCopyWithImpl<$Res>
    implements $FoundErrorCopyWith<$Res> {
  _$FoundErrorCopyWithImpl(FoundError _value, $Res Function(FoundError) _then)
      : super(_value, (v) => _then(v as FoundError));

  @override
  FoundError get _value => super._value as FoundError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(FoundError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$FoundError implements FoundError {
  const _$FoundError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'SearchStoresState.foundError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FoundError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $FoundErrorCopyWith<FoundError> get copyWith =>
      _$FoundErrorCopyWithImpl<FoundError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() lessThenThreeSymbols,
    required TResult Function() emptyQuery,
    required TResult Function(
            SearchResp search, bool isCategories, bool isBrands)
        foundSuccess,
    required TResult Function() emptyResults,
    required TResult Function(ErrorsResponse errors) foundError,
  }) {
    return foundError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
  }) {
    return foundError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? lessThenThreeSymbols,
    TResult Function()? emptyQuery,
    TResult Function(SearchResp search, bool isCategories, bool isBrands)?
        foundSuccess,
    TResult Function()? emptyResults,
    TResult Function(ErrorsResponse errors)? foundError,
    required TResult orElse(),
  }) {
    if (foundError != null) {
      return foundError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loadInProgress,
    required TResult Function(LessThenThreeSymbols value) lessThenThreeSymbols,
    required TResult Function(EmptyQuery value) emptyQuery,
    required TResult Function(FoundSuccess value) foundSuccess,
    required TResult Function(EmptyResults value) emptyResults,
    required TResult Function(FoundError value) foundError,
  }) {
    return foundError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
  }) {
    return foundError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loadInProgress,
    TResult Function(LessThenThreeSymbols value)? lessThenThreeSymbols,
    TResult Function(EmptyQuery value)? emptyQuery,
    TResult Function(FoundSuccess value)? foundSuccess,
    TResult Function(EmptyResults value)? emptyResults,
    TResult Function(FoundError value)? foundError,
    required TResult orElse(),
  }) {
    if (foundError != null) {
      return foundError(this);
    }
    return orElse();
  }
}

abstract class FoundError implements SearchStoresState {
  const factory FoundError(ErrorsResponse errors) = _$FoundError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoundErrorCopyWith<FoundError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchStoresEventTearOff {
  const _$SearchStoresEventTearOff();

  Search search(String query) {
    return Search(
      query,
    );
  }

  SetCategoryId setCategoryId(int id) {
    return SetCategoryId(
      id,
    );
  }
}

/// @nodoc
const $SearchStoresEvent = _$SearchStoresEventTearOff();

/// @nodoc
mixin _$SearchStoresEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(int id) setCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(int id)? setCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(int id)? setCategoryId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search value) search,
    required TResult Function(SetCategoryId value) setCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Search value)? search,
    TResult Function(SetCategoryId value)? setCategoryId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search value)? search,
    TResult Function(SetCategoryId value)? setCategoryId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStoresEventCopyWith<$Res> {
  factory $SearchStoresEventCopyWith(
          SearchStoresEvent value, $Res Function(SearchStoresEvent) then) =
      _$SearchStoresEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStoresEventCopyWithImpl<$Res>
    implements $SearchStoresEventCopyWith<$Res> {
  _$SearchStoresEventCopyWithImpl(this._value, this._then);

  final SearchStoresEvent _value;
  // ignore: unused_field
  final $Res Function(SearchStoresEvent) _then;
}

/// @nodoc
abstract class $SearchCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) then) =
      _$SearchCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchCopyWithImpl<$Res> extends _$SearchStoresEventCopyWithImpl<$Res>
    implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(Search _value, $Res Function(Search) _then)
      : super(_value, (v) => _then(v as Search));

  @override
  Search get _value => super._value as Search;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(Search(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Search implements Search {
  const _$Search(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchStoresEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Search &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  $SearchCopyWith<Search> get copyWith =>
      _$SearchCopyWithImpl<Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(int id) setCategoryId,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(int id)? setCategoryId,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(int id)? setCategoryId,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search value) search,
    required TResult Function(SetCategoryId value) setCategoryId,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Search value)? search,
    TResult Function(SetCategoryId value)? setCategoryId,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search value)? search,
    TResult Function(SetCategoryId value)? setCategoryId,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements SearchStoresEvent {
  const factory Search(String query) = _$Search;

  String get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCopyWith<Search> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetCategoryIdCopyWith<$Res> {
  factory $SetCategoryIdCopyWith(
          SetCategoryId value, $Res Function(SetCategoryId) then) =
      _$SetCategoryIdCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$SetCategoryIdCopyWithImpl<$Res>
    extends _$SearchStoresEventCopyWithImpl<$Res>
    implements $SetCategoryIdCopyWith<$Res> {
  _$SetCategoryIdCopyWithImpl(
      SetCategoryId _value, $Res Function(SetCategoryId) _then)
      : super(_value, (v) => _then(v as SetCategoryId));

  @override
  SetCategoryId get _value => super._value as SetCategoryId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(SetCategoryId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetCategoryId implements SetCategoryId {
  const _$SetCategoryId(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'SearchStoresEvent.setCategoryId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetCategoryId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $SetCategoryIdCopyWith<SetCategoryId> get copyWith =>
      _$SetCategoryIdCopyWithImpl<SetCategoryId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(int id) setCategoryId,
  }) {
    return setCategoryId(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(int id)? setCategoryId,
  }) {
    return setCategoryId?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(int id)? setCategoryId,
    required TResult orElse(),
  }) {
    if (setCategoryId != null) {
      return setCategoryId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search value) search,
    required TResult Function(SetCategoryId value) setCategoryId,
  }) {
    return setCategoryId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Search value)? search,
    TResult Function(SetCategoryId value)? setCategoryId,
  }) {
    return setCategoryId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search value)? search,
    TResult Function(SetCategoryId value)? setCategoryId,
    required TResult orElse(),
  }) {
    if (setCategoryId != null) {
      return setCategoryId(this);
    }
    return orElse();
  }
}

abstract class SetCategoryId implements SearchStoresEvent {
  const factory SetCategoryId(int id) = _$SetCategoryId;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetCategoryIdCopyWith<SetCategoryId> get copyWith =>
      throw _privateConstructorUsedError;
}
