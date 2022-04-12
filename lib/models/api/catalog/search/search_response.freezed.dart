// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) {
  return SearchResp.fromJson(json);
}

/// @nodoc
class _$SearchResponseTearOff {
  const _$SearchResponseTearOff();

  SearchResp call(
      @JsonKey(name: "categories") List<SearchCategoryItemResponse>? categories,
      @JsonKey(name: "brands") List<SearchBrandItemResponse>? brands) {
    return SearchResp(
      categories,
      brands,
    );
  }

  SearchResponse fromJson(Map<String, Object> json) {
    return SearchResponse.fromJson(json);
  }
}

/// @nodoc
const $SearchResponse = _$SearchResponseTearOff();

/// @nodoc
mixin _$SearchResponse {
  /// Категории
  @JsonKey(name: "categories")
  List<SearchCategoryItemResponse>? get categories =>
      throw _privateConstructorUsedError;

  /// Коллекции
  @JsonKey(name: "brands")
  List<SearchBrandItemResponse>? get brands =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseCopyWith<SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseCopyWith<$Res> {
  factory $SearchResponseCopyWith(
          SearchResponse value, $Res Function(SearchResponse) then) =
      _$SearchResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "categories")
          List<SearchCategoryItemResponse>? categories,
      @JsonKey(name: "brands")
          List<SearchBrandItemResponse>? brands});
}

/// @nodoc
class _$SearchResponseCopyWithImpl<$Res>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._value, this._then);

  final SearchResponse _value;
  // ignore: unused_field
  final $Res Function(SearchResponse) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? brands = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SearchCategoryItemResponse>?,
      brands: brands == freezed
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<SearchBrandItemResponse>?,
    ));
  }
}

/// @nodoc
abstract class $SearchRespCopyWith<$Res>
    implements $SearchResponseCopyWith<$Res> {
  factory $SearchRespCopyWith(
          SearchResp value, $Res Function(SearchResp) then) =
      _$SearchRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "categories")
          List<SearchCategoryItemResponse>? categories,
      @JsonKey(name: "brands")
          List<SearchBrandItemResponse>? brands});
}

/// @nodoc
class _$SearchRespCopyWithImpl<$Res> extends _$SearchResponseCopyWithImpl<$Res>
    implements $SearchRespCopyWith<$Res> {
  _$SearchRespCopyWithImpl(SearchResp _value, $Res Function(SearchResp) _then)
      : super(_value, (v) => _then(v as SearchResp));

  @override
  SearchResp get _value => super._value as SearchResp;

  @override
  $Res call({
    Object? categories = freezed,
    Object? brands = freezed,
  }) {
    return _then(SearchResp(
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SearchCategoryItemResponse>?,
      brands == freezed
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<SearchBrandItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResp implements SearchResp {
  const _$SearchResp(@JsonKey(name: "categories") this.categories,
      @JsonKey(name: "brands") this.brands);

  factory _$SearchResp.fromJson(Map<String, dynamic> json) =>
      _$$SearchRespFromJson(json);

  @override

  /// Категории
  @JsonKey(name: "categories")
  final List<SearchCategoryItemResponse>? categories;
  @override

  /// Коллекции
  @JsonKey(name: "brands")
  final List<SearchBrandItemResponse>? brands;

  @override
  String toString() {
    return 'SearchResponse(categories: $categories, brands: $brands)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchResp &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.brands, brands) ||
                const DeepCollectionEquality().equals(other.brands, brands)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(brands);

  @JsonKey(ignore: true)
  @override
  $SearchRespCopyWith<SearchResp> get copyWith =>
      _$SearchRespCopyWithImpl<SearchResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRespToJson(this);
  }
}

abstract class SearchResp implements SearchResponse {
  const factory SearchResp(
      @JsonKey(name: "categories")
          List<SearchCategoryItemResponse>? categories,
      @JsonKey(name: "brands")
          List<SearchBrandItemResponse>? brands) = _$SearchResp;

  factory SearchResp.fromJson(Map<String, dynamic> json) =
      _$SearchResp.fromJson;

  @override

  /// Категории
  @JsonKey(name: "categories")
  List<SearchCategoryItemResponse>? get categories =>
      throw _privateConstructorUsedError;
  @override

  /// Коллекции
  @JsonKey(name: "brands")
  List<SearchBrandItemResponse>? get brands =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SearchRespCopyWith<SearchResp> get copyWith =>
      throw _privateConstructorUsedError;
}
