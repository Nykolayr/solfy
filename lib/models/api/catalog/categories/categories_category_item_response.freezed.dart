// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_category_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesCategoryItemResponse _$CategoriesCategoryItemResponseFromJson(
    Map<String, dynamic> json) {
  return CategoryItem.fromJson(json);
}

/// @nodoc
class _$CategoriesCategoryItemResponseTearOff {
  const _$CategoriesCategoryItemResponseTearOff();

  CategoryItem call(
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "icon") String? icon) {
    return CategoryItem(
      id,
      name,
      icon,
    );
  }

  CategoriesCategoryItemResponse fromJson(Map<String, Object> json) {
    return CategoriesCategoryItemResponse.fromJson(json);
  }
}

/// @nodoc
const $CategoriesCategoryItemResponse =
    _$CategoriesCategoryItemResponseTearOff();

/// @nodoc
mixin _$CategoriesCategoryItemResponse {
  /// Идентификатор категории
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Название категории
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  /// Ссылка на иконку категории
  @JsonKey(name: "icon")
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesCategoryItemResponseCopyWith<CategoriesCategoryItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesCategoryItemResponseCopyWith<$Res> {
  factory $CategoriesCategoryItemResponseCopyWith(
          CategoriesCategoryItemResponse value,
          $Res Function(CategoriesCategoryItemResponse) then) =
      _$CategoriesCategoryItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "icon") String? icon});
}

/// @nodoc
class _$CategoriesCategoryItemResponseCopyWithImpl<$Res>
    implements $CategoriesCategoryItemResponseCopyWith<$Res> {
  _$CategoriesCategoryItemResponseCopyWithImpl(this._value, this._then);

  final CategoriesCategoryItemResponse _value;
  // ignore: unused_field
  final $Res Function(CategoriesCategoryItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $CategoryItemCopyWith<$Res>
    implements $CategoriesCategoryItemResponseCopyWith<$Res> {
  factory $CategoryItemCopyWith(
          CategoryItem value, $Res Function(CategoryItem) then) =
      _$CategoryItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "icon") String? icon});
}

/// @nodoc
class _$CategoryItemCopyWithImpl<$Res>
    extends _$CategoriesCategoryItemResponseCopyWithImpl<$Res>
    implements $CategoryItemCopyWith<$Res> {
  _$CategoryItemCopyWithImpl(
      CategoryItem _value, $Res Function(CategoryItem) _then)
      : super(_value, (v) => _then(v as CategoryItem));

  @override
  CategoryItem get _value => super._value as CategoryItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(CategoryItem(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryItem implements CategoryItem {
  const _$CategoryItem(@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name, @JsonKey(name: "icon") this.icon);

  factory _$CategoryItem.fromJson(Map<String, dynamic> json) =>
      _$$CategoryItemFromJson(json);

  @override

  /// Идентификатор категории
  @JsonKey(name: "id")
  final int? id;
  @override

  /// Название категории
  @JsonKey(name: "name")
  final String? name;
  @override

  /// Ссылка на иконку категории
  @JsonKey(name: "icon")
  final String? icon;

  @override
  String toString() {
    return 'CategoriesCategoryItemResponse(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(icon);

  @JsonKey(ignore: true)
  @override
  $CategoryItemCopyWith<CategoryItem> get copyWith =>
      _$CategoryItemCopyWithImpl<CategoryItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryItemToJson(this);
  }
}

abstract class CategoryItem implements CategoriesCategoryItemResponse {
  const factory CategoryItem(
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "icon") String? icon) = _$CategoryItem;

  factory CategoryItem.fromJson(Map<String, dynamic> json) =
      _$CategoryItem.fromJson;

  @override

  /// Идентификатор категории
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override

  /// Название категории
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @override

  /// Ссылка на иконку категории
  @JsonKey(name: "icon")
  String? get icon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CategoryItemCopyWith<CategoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}
