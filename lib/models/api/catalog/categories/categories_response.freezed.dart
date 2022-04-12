// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesResponse _$CategoriesResponseFromJson(Map<String, dynamic> json) {
  return CategoriesResp.fromJson(json);
}

/// @nodoc
class _$CategoriesResponseTearOff {
  const _$CategoriesResponseTearOff();

  CategoriesResp call(
      @JsonKey(name: "categories")
          List<CategoriesCategoryItemResponse>? categories,
      @JsonKey(name: "collections")
          List<CategoriesCategoryItemResponse>? collections,
      @JsonKey(name: "info")
          CategoriesInfoItemResponse? info) {
    return CategoriesResp(
      categories,
      collections,
      info,
    );
  }

  CategoriesResponse fromJson(Map<String, Object> json) {
    return CategoriesResponse.fromJson(json);
  }
}

/// @nodoc
const $CategoriesResponse = _$CategoriesResponseTearOff();

/// @nodoc
mixin _$CategoriesResponse {
  /// Категории
  @JsonKey(name: "categories")
  List<CategoriesCategoryItemResponse>? get categories =>
      throw _privateConstructorUsedError;

  /// Коллекции
  @JsonKey(name: "collections")
  List<CategoriesCategoryItemResponse>? get collections =>
      throw _privateConstructorUsedError;

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  CategoriesInfoItemResponse? get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesResponseCopyWith<CategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesResponseCopyWith<$Res> {
  factory $CategoriesResponseCopyWith(
          CategoriesResponse value, $Res Function(CategoriesResponse) then) =
      _$CategoriesResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "categories")
          List<CategoriesCategoryItemResponse>? categories,
      @JsonKey(name: "collections")
          List<CategoriesCategoryItemResponse>? collections,
      @JsonKey(name: "info")
          CategoriesInfoItemResponse? info});

  $CategoriesInfoItemResponseCopyWith<$Res>? get info;
}

/// @nodoc
class _$CategoriesResponseCopyWithImpl<$Res>
    implements $CategoriesResponseCopyWith<$Res> {
  _$CategoriesResponseCopyWithImpl(this._value, this._then);

  final CategoriesResponse _value;
  // ignore: unused_field
  final $Res Function(CategoriesResponse) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? collections = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesCategoryItemResponse>?,
      collections: collections == freezed
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<CategoriesCategoryItemResponse>?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CategoriesInfoItemResponse?,
    ));
  }

  @override
  $CategoriesInfoItemResponseCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $CategoriesInfoItemResponseCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class $CategoriesRespCopyWith<$Res>
    implements $CategoriesResponseCopyWith<$Res> {
  factory $CategoriesRespCopyWith(
          CategoriesResp value, $Res Function(CategoriesResp) then) =
      _$CategoriesRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "categories")
          List<CategoriesCategoryItemResponse>? categories,
      @JsonKey(name: "collections")
          List<CategoriesCategoryItemResponse>? collections,
      @JsonKey(name: "info")
          CategoriesInfoItemResponse? info});

  @override
  $CategoriesInfoItemResponseCopyWith<$Res>? get info;
}

/// @nodoc
class _$CategoriesRespCopyWithImpl<$Res>
    extends _$CategoriesResponseCopyWithImpl<$Res>
    implements $CategoriesRespCopyWith<$Res> {
  _$CategoriesRespCopyWithImpl(
      CategoriesResp _value, $Res Function(CategoriesResp) _then)
      : super(_value, (v) => _then(v as CategoriesResp));

  @override
  CategoriesResp get _value => super._value as CategoriesResp;

  @override
  $Res call({
    Object? categories = freezed,
    Object? collections = freezed,
    Object? info = freezed,
  }) {
    return _then(CategoriesResp(
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesCategoryItemResponse>?,
      collections == freezed
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<CategoriesCategoryItemResponse>?,
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CategoriesInfoItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesResp implements CategoriesResp {
  const _$CategoriesResp(
      @JsonKey(name: "categories") this.categories,
      @JsonKey(name: "collections") this.collections,
      @JsonKey(name: "info") this.info);

  factory _$CategoriesResp.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesRespFromJson(json);

  @override

  /// Категории
  @JsonKey(name: "categories")
  final List<CategoriesCategoryItemResponse>? categories;
  @override

  /// Коллекции
  @JsonKey(name: "collections")
  final List<CategoriesCategoryItemResponse>? collections;
  @override

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  final CategoriesInfoItemResponse? info;

  @override
  String toString() {
    return 'CategoriesResponse(categories: $categories, collections: $collections, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoriesResp &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.collections, collections) ||
                const DeepCollectionEquality()
                    .equals(other.collections, collections)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(collections) ^
      const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $CategoriesRespCopyWith<CategoriesResp> get copyWith =>
      _$CategoriesRespCopyWithImpl<CategoriesResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesRespToJson(this);
  }
}

abstract class CategoriesResp implements CategoriesResponse {
  const factory CategoriesResp(
      @JsonKey(name: "categories")
          List<CategoriesCategoryItemResponse>? categories,
      @JsonKey(name: "collections")
          List<CategoriesCategoryItemResponse>? collections,
      @JsonKey(name: "info")
          CategoriesInfoItemResponse? info) = _$CategoriesResp;

  factory CategoriesResp.fromJson(Map<String, dynamic> json) =
      _$CategoriesResp.fromJson;

  @override

  /// Категории
  @JsonKey(name: "categories")
  List<CategoriesCategoryItemResponse>? get categories =>
      throw _privateConstructorUsedError;
  @override

  /// Коллекции
  @JsonKey(name: "collections")
  List<CategoriesCategoryItemResponse>? get collections =>
      throw _privateConstructorUsedError;
  @override

  /// Информация о количестве магазинов и гео
  @JsonKey(name: "info")
  CategoriesInfoItemResponse? get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CategoriesRespCopyWith<CategoriesResp> get copyWith =>
      throw _privateConstructorUsedError;
}
