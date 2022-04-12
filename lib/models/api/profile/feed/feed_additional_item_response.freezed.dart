// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_additional_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedAdditionalItemResponse _$FeedAdditionalItemResponseFromJson(
    Map<String, dynamic> json) {
  return AdditionalItem.fromJson(json);
}

/// @nodoc
class _$FeedAdditionalItemResponseTearOff {
  const _$FeedAdditionalItemResponseTearOff();

  AdditionalItem call(@JsonKey(name: "caption") String? caption,
      @JsonKey(name: "feeds") List<FeedAdditionalFeedItemResponse>? feeds) {
    return AdditionalItem(
      caption,
      feeds,
    );
  }

  FeedAdditionalItemResponse fromJson(Map<String, Object> json) {
    return FeedAdditionalItemResponse.fromJson(json);
  }
}

/// @nodoc
const $FeedAdditionalItemResponse = _$FeedAdditionalItemResponseTearOff();

/// @nodoc
mixin _$FeedAdditionalItemResponse {
  /// Подпись
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;

  /// Новости
  @JsonKey(name: "feeds")
  List<FeedAdditionalFeedItemResponse>? get feeds =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedAdditionalItemResponseCopyWith<FeedAdditionalItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedAdditionalItemResponseCopyWith<$Res> {
  factory $FeedAdditionalItemResponseCopyWith(FeedAdditionalItemResponse value,
          $Res Function(FeedAdditionalItemResponse) then) =
      _$FeedAdditionalItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "caption") String? caption,
      @JsonKey(name: "feeds") List<FeedAdditionalFeedItemResponse>? feeds});
}

/// @nodoc
class _$FeedAdditionalItemResponseCopyWithImpl<$Res>
    implements $FeedAdditionalItemResponseCopyWith<$Res> {
  _$FeedAdditionalItemResponseCopyWithImpl(this._value, this._then);

  final FeedAdditionalItemResponse _value;
  // ignore: unused_field
  final $Res Function(FeedAdditionalItemResponse) _then;

  @override
  $Res call({
    Object? caption = freezed,
    Object? feeds = freezed,
  }) {
    return _then(_value.copyWith(
      caption: caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      feeds: feeds == freezed
          ? _value.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<FeedAdditionalFeedItemResponse>?,
    ));
  }
}

/// @nodoc
abstract class $AdditionalItemCopyWith<$Res>
    implements $FeedAdditionalItemResponseCopyWith<$Res> {
  factory $AdditionalItemCopyWith(
          AdditionalItem value, $Res Function(AdditionalItem) then) =
      _$AdditionalItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "caption") String? caption,
      @JsonKey(name: "feeds") List<FeedAdditionalFeedItemResponse>? feeds});
}

/// @nodoc
class _$AdditionalItemCopyWithImpl<$Res>
    extends _$FeedAdditionalItemResponseCopyWithImpl<$Res>
    implements $AdditionalItemCopyWith<$Res> {
  _$AdditionalItemCopyWithImpl(
      AdditionalItem _value, $Res Function(AdditionalItem) _then)
      : super(_value, (v) => _then(v as AdditionalItem));

  @override
  AdditionalItem get _value => super._value as AdditionalItem;

  @override
  $Res call({
    Object? caption = freezed,
    Object? feeds = freezed,
  }) {
    return _then(AdditionalItem(
      caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      feeds == freezed
          ? _value.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<FeedAdditionalFeedItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionalItem implements AdditionalItem {
  const _$AdditionalItem(@JsonKey(name: "caption") this.caption,
      @JsonKey(name: "feeds") this.feeds);

  factory _$AdditionalItem.fromJson(Map<String, dynamic> json) =>
      _$$AdditionalItemFromJson(json);

  @override

  /// Подпись
  @JsonKey(name: "caption")
  final String? caption;
  @override

  /// Новости
  @JsonKey(name: "feeds")
  final List<FeedAdditionalFeedItemResponse>? feeds;

  @override
  String toString() {
    return 'FeedAdditionalItemResponse(caption: $caption, feeds: $feeds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdditionalItem &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.feeds, feeds) ||
                const DeepCollectionEquality().equals(other.feeds, feeds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(feeds);

  @JsonKey(ignore: true)
  @override
  $AdditionalItemCopyWith<AdditionalItem> get copyWith =>
      _$AdditionalItemCopyWithImpl<AdditionalItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalItemToJson(this);
  }
}

abstract class AdditionalItem implements FeedAdditionalItemResponse {
  const factory AdditionalItem(@JsonKey(name: "caption") String? caption,
          @JsonKey(name: "feeds") List<FeedAdditionalFeedItemResponse>? feeds) =
      _$AdditionalItem;

  factory AdditionalItem.fromJson(Map<String, dynamic> json) =
      _$AdditionalItem.fromJson;

  @override

  /// Подпись
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;
  @override

  /// Новости
  @JsonKey(name: "feeds")
  List<FeedAdditionalFeedItemResponse>? get feeds =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AdditionalItemCopyWith<AdditionalItem> get copyWith =>
      throw _privateConstructorUsedError;
}
