// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brands_feed_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandsFeedItemResponse _$BrandsFeedItemResponseFromJson(
    Map<String, dynamic> json) {
  return FeedItem.fromJson(json);
}

/// @nodoc
class _$BrandsFeedItemResponseTearOff {
  const _$BrandsFeedItemResponseTearOff();

  FeedItem call(
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "brand_logo") String? brandLogo,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "short_description") String? shortDescription) {
    return FeedItem(
      id,
      brandLogo,
      image,
      title,
      shortDescription,
    );
  }

  BrandsFeedItemResponse fromJson(Map<String, Object> json) {
    return BrandsFeedItemResponse.fromJson(json);
  }
}

/// @nodoc
const $BrandsFeedItemResponse = _$BrandsFeedItemResponseTearOff();

/// @nodoc
mixin _$BrandsFeedItemResponse {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandsFeedItemResponseCopyWith<BrandsFeedItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsFeedItemResponseCopyWith<$Res> {
  factory $BrandsFeedItemResponseCopyWith(BrandsFeedItemResponse value,
          $Res Function(BrandsFeedItemResponse) then) =
      _$BrandsFeedItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "brand_logo") String? brandLogo,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "short_description") String? shortDescription});
}

/// @nodoc
class _$BrandsFeedItemResponseCopyWithImpl<$Res>
    implements $BrandsFeedItemResponseCopyWith<$Res> {
  _$BrandsFeedItemResponseCopyWithImpl(this._value, this._then);

  final BrandsFeedItemResponse _value;
  // ignore: unused_field
  final $Res Function(BrandsFeedItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? brandLogo = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? shortDescription = freezed,
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
    ));
  }
}

/// @nodoc
abstract class $FeedItemCopyWith<$Res>
    implements $BrandsFeedItemResponseCopyWith<$Res> {
  factory $FeedItemCopyWith(FeedItem value, $Res Function(FeedItem) then) =
      _$FeedItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "brand_logo") String? brandLogo,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "short_description") String? shortDescription});
}

/// @nodoc
class _$FeedItemCopyWithImpl<$Res>
    extends _$BrandsFeedItemResponseCopyWithImpl<$Res>
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
  }) {
    return _then(FeedItem(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      brandLogo == freezed
          ? _value.brandLogo
          : brandLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedItem implements FeedItem {
  const _$FeedItem(
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "brand_logo") this.brandLogo,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "short_description") this.shortDescription);

  factory _$FeedItem.fromJson(Map<String, dynamic> json) =>
      _$$FeedItemFromJson(json);

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
  String toString() {
    return 'BrandsFeedItemResponse(id: $id, brandLogo: $brandLogo, image: $image, title: $title, shortDescription: $shortDescription)';
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
                    .equals(other.shortDescription, shortDescription)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(brandLogo) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(shortDescription);

  @JsonKey(ignore: true)
  @override
  $FeedItemCopyWith<FeedItem> get copyWith =>
      _$FeedItemCopyWithImpl<FeedItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedItemToJson(this);
  }
}

abstract class FeedItem implements BrandsFeedItemResponse {
  const factory FeedItem(
          @JsonKey(name: "id") int? id,
          @JsonKey(name: "brand_logo") String? brandLogo,
          @JsonKey(name: "image") String? image,
          @JsonKey(name: "title") String? title,
          @JsonKey(name: "short_description") String? shortDescription) =
      _$FeedItem;

  factory FeedItem.fromJson(Map<String, dynamic> json) = _$FeedItem.fromJson;

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
  @JsonKey(ignore: true)
  $FeedItemCopyWith<FeedItem> get copyWith =>
      throw _privateConstructorUsedError;
}
