// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_item_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedItemViewModelTearOff {
  const _$FeedItemViewModelTearOff();

  FeedItem call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "brand_logo") String? brandLogo,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "created_at") String? createdAt}) {
    return FeedItem(
      id: id,
      brandLogo: brandLogo,
      image: image,
      title: title,
      shortDescription: shortDescription,
      description: description,
      createdAt: createdAt,
    );
  }
}

/// @nodoc
const $FeedItemViewModel = _$FeedItemViewModelTearOff();

/// @nodoc
mixin _$FeedItemViewModel {
  /// Идентификатор новости
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Ссылка на логотип бренда
  @JsonKey(name: "brand_logo")
  String? get brandLogo => throw _privateConstructorUsedError;

  /// Ссылка на изображение новости
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;

  /// Заголовок новости
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  /// Краткое описание новости (подзаголовок)
  @JsonKey(name: "short_description")
  String? get shortDescription => throw _privateConstructorUsedError;

  /// Описание
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;

  /// Создан
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedItemViewModelCopyWith<FeedItemViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedItemViewModelCopyWith<$Res> {
  factory $FeedItemViewModelCopyWith(
          FeedItemViewModel value, $Res Function(FeedItemViewModel) then) =
      _$FeedItemViewModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "brand_logo") String? brandLogo,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "created_at") String? createdAt});
}

/// @nodoc
class _$FeedItemViewModelCopyWithImpl<$Res>
    implements $FeedItemViewModelCopyWith<$Res> {
  _$FeedItemViewModelCopyWithImpl(this._value, this._then);

  final FeedItemViewModel _value;
  // ignore: unused_field
  final $Res Function(FeedItemViewModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? brandLogo = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      brandLogo: brandLogo == freezed
          ? _value.brandLogo
          : brandLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $FeedItemCopyWith<$Res>
    implements $FeedItemViewModelCopyWith<$Res> {
  factory $FeedItemCopyWith(FeedItem value, $Res Function(FeedItem) then) =
      _$FeedItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "brand_logo") String? brandLogo,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "created_at") String? createdAt});
}

/// @nodoc
class _$FeedItemCopyWithImpl<$Res> extends _$FeedItemViewModelCopyWithImpl<$Res>
    implements $FeedItemCopyWith<$Res> {
  _$FeedItemCopyWithImpl(FeedItem _value, $Res Function(FeedItem) _then)
      : super(_value, (v) => _then(v as FeedItem));

  @override
  FeedItem get _value => super._value as FeedItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? brandLogo = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(FeedItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      brandLogo: brandLogo == freezed
          ? _value.brandLogo
          : brandLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FeedItem implements FeedItem {
  const _$FeedItem(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "brand_logo") this.brandLogo,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "short_description") this.shortDescription,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "created_at") this.createdAt});

  @override

  /// Идентификатор новости
  @JsonKey(name: "id")
  final int? id;
  @override

  /// Ссылка на логотип бренда
  @JsonKey(name: "brand_logo")
  final String? brandLogo;
  @override

  /// Ссылка на изображение новости
  @JsonKey(name: "image")
  final String? image;
  @override

  /// Заголовок новости
  @JsonKey(name: "title")
  final String? title;
  @override

  /// Краткое описание новости (подзаголовок)
  @JsonKey(name: "short_description")
  final String? shortDescription;
  @override

  /// Описание
  @JsonKey(name: "description")
  final String? description;
  @override

  /// Создан
  @JsonKey(name: "created_at")
  final String? createdAt;

  @override
  String toString() {
    return 'FeedItemViewModel(id: $id, brandLogo: $brandLogo, image: $image, title: $title, shortDescription: $shortDescription, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeedItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.brandLogo, brandLogo) ||
                const DeepCollectionEquality()
                    .equals(other.brandLogo, brandLogo)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.shortDescription, shortDescription) ||
                const DeepCollectionEquality()
                    .equals(other.shortDescription, shortDescription)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(brandLogo) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(shortDescription) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  $FeedItemCopyWith<FeedItem> get copyWith =>
      _$FeedItemCopyWithImpl<FeedItem>(this, _$identity);
}

abstract class FeedItem implements FeedItemViewModel {
  const factory FeedItem(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "brand_logo") String? brandLogo,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "created_at") String? createdAt}) = _$FeedItem;

  @override

  /// Идентификатор новости
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override

  /// Ссылка на логотип бренда
  @JsonKey(name: "brand_logo")
  String? get brandLogo => throw _privateConstructorUsedError;
  @override

  /// Ссылка на изображение новости
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @override

  /// Заголовок новости
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @override

  /// Краткое описание новости (подзаголовок)
  @JsonKey(name: "short_description")
  String? get shortDescription => throw _privateConstructorUsedError;
  @override

  /// Описание
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @override

  /// Создан
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FeedItemCopyWith<FeedItem> get copyWith =>
      throw _privateConstructorUsedError;
}
