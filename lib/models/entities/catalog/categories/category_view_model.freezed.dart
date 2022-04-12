// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryViewModelTearOff {
  const _$CategoryViewModelTearOff();

  Category call(
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "icon") String? icon) {
    return Category(
      id,
      name,
      icon,
    );
  }
}

/// @nodoc
const $CategoryViewModel = _$CategoryViewModelTearOff();

/// @nodoc
mixin _$CategoryViewModel {
  /// Идентификатор категории
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Название категории
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  /// Ссылка на иконку категории
  @JsonKey(name: "icon")
  String? get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryViewModelCopyWith<CategoryViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryViewModelCopyWith<$Res> {
  factory $CategoryViewModelCopyWith(
          CategoryViewModel value, $Res Function(CategoryViewModel) then) =
      _$CategoryViewModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "icon") String? icon});
}

/// @nodoc
class _$CategoryViewModelCopyWithImpl<$Res>
    implements $CategoryViewModelCopyWith<$Res> {
  _$CategoryViewModelCopyWithImpl(this._value, this._then);

  final CategoryViewModel _value;
  // ignore: unused_field
  final $Res Function(CategoryViewModel) _then;

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
abstract class $CategoryCopyWith<$Res>
    implements $CategoryViewModelCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "icon") String? icon});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> extends _$CategoryViewModelCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(Category _value, $Res Function(Category) _then)
      : super(_value, (v) => _then(v as Category));

  @override
  Category get _value => super._value as Category;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(Category(
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

class _$Category implements Category {
  const _$Category(@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name, @JsonKey(name: "icon") this.icon);

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
    return 'CategoryViewModel(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Category &&
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
  $CategoryCopyWith<Category> get copyWith =>
      _$CategoryCopyWithImpl<Category>(this, _$identity);
}

abstract class Category implements CategoryViewModel {
  const factory Category(
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "icon") String? icon) = _$Category;

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
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}
