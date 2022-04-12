// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedResponse _$FeedResponseFromJson(Map<String, dynamic> json) {
  return FeedResp.fromJson(json);
}

/// @nodoc
class _$FeedResponseTearOff {
  const _$FeedResponseTearOff();

  FeedResp call(
      @JsonKey(name: "feed") FeedFeedItemResponse? feed,
      @JsonKey(name: "promotions") FeedPromotionsItemResponse? promotions,
      @JsonKey(name: "additional") FeedAdditionalItemResponse? additional) {
    return FeedResp(
      feed,
      promotions,
      additional,
    );
  }

  FeedResponse fromJson(Map<String, Object> json) {
    return FeedResponse.fromJson(json);
  }
}

/// @nodoc
const $FeedResponse = _$FeedResponseTearOff();

/// @nodoc
mixin _$FeedResponse {
  /// Новость
  @JsonKey(name: "feed")
  FeedFeedItemResponse? get feed => throw _privateConstructorUsedError;

  /// Связанные с новостью категории и бренды
  @JsonKey(name: "promotions")
  FeedPromotionsItemResponse? get promotions =>
      throw _privateConstructorUsedError;

  /// Связанные новости
  @JsonKey(name: "additional")
  FeedAdditionalItemResponse? get additional =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedResponseCopyWith<FeedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedResponseCopyWith<$Res> {
  factory $FeedResponseCopyWith(
          FeedResponse value, $Res Function(FeedResponse) then) =
      _$FeedResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "feed") FeedFeedItemResponse? feed,
      @JsonKey(name: "promotions") FeedPromotionsItemResponse? promotions,
      @JsonKey(name: "additional") FeedAdditionalItemResponse? additional});

  $FeedFeedItemResponseCopyWith<$Res>? get feed;
  $FeedPromotionsItemResponseCopyWith<$Res>? get promotions;
  $FeedAdditionalItemResponseCopyWith<$Res>? get additional;
}

/// @nodoc
class _$FeedResponseCopyWithImpl<$Res> implements $FeedResponseCopyWith<$Res> {
  _$FeedResponseCopyWithImpl(this._value, this._then);

  final FeedResponse _value;
  // ignore: unused_field
  final $Res Function(FeedResponse) _then;

  @override
  $Res call({
    Object? feed = freezed,
    Object? promotions = freezed,
    Object? additional = freezed,
  }) {
    return _then(_value.copyWith(
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as FeedFeedItemResponse?,
      promotions: promotions == freezed
          ? _value.promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as FeedPromotionsItemResponse?,
      additional: additional == freezed
          ? _value.additional
          : additional // ignore: cast_nullable_to_non_nullable
              as FeedAdditionalItemResponse?,
    ));
  }

  @override
  $FeedFeedItemResponseCopyWith<$Res>? get feed {
    if (_value.feed == null) {
      return null;
    }

    return $FeedFeedItemResponseCopyWith<$Res>(_value.feed!, (value) {
      return _then(_value.copyWith(feed: value));
    });
  }

  @override
  $FeedPromotionsItemResponseCopyWith<$Res>? get promotions {
    if (_value.promotions == null) {
      return null;
    }

    return $FeedPromotionsItemResponseCopyWith<$Res>(_value.promotions!,
        (value) {
      return _then(_value.copyWith(promotions: value));
    });
  }

  @override
  $FeedAdditionalItemResponseCopyWith<$Res>? get additional {
    if (_value.additional == null) {
      return null;
    }

    return $FeedAdditionalItemResponseCopyWith<$Res>(_value.additional!,
        (value) {
      return _then(_value.copyWith(additional: value));
    });
  }
}

/// @nodoc
abstract class $FeedRespCopyWith<$Res> implements $FeedResponseCopyWith<$Res> {
  factory $FeedRespCopyWith(FeedResp value, $Res Function(FeedResp) then) =
      _$FeedRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "feed") FeedFeedItemResponse? feed,
      @JsonKey(name: "promotions") FeedPromotionsItemResponse? promotions,
      @JsonKey(name: "additional") FeedAdditionalItemResponse? additional});

  @override
  $FeedFeedItemResponseCopyWith<$Res>? get feed;
  @override
  $FeedPromotionsItemResponseCopyWith<$Res>? get promotions;
  @override
  $FeedAdditionalItemResponseCopyWith<$Res>? get additional;
}

/// @nodoc
class _$FeedRespCopyWithImpl<$Res> extends _$FeedResponseCopyWithImpl<$Res>
    implements $FeedRespCopyWith<$Res> {
  _$FeedRespCopyWithImpl(FeedResp _value, $Res Function(FeedResp) _then)
      : super(_value, (v) => _then(v as FeedResp));

  @override
  FeedResp get _value => super._value as FeedResp;

  @override
  $Res call({
    Object? feed = freezed,
    Object? promotions = freezed,
    Object? additional = freezed,
  }) {
    return _then(FeedResp(
      feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as FeedFeedItemResponse?,
      promotions == freezed
          ? _value.promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as FeedPromotionsItemResponse?,
      additional == freezed
          ? _value.additional
          : additional // ignore: cast_nullable_to_non_nullable
              as FeedAdditionalItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedResp implements FeedResp {
  const _$FeedResp(
      @JsonKey(name: "feed") this.feed,
      @JsonKey(name: "promotions") this.promotions,
      @JsonKey(name: "additional") this.additional);

  factory _$FeedResp.fromJson(Map<String, dynamic> json) =>
      _$$FeedRespFromJson(json);

  @override

  /// Новость
  @JsonKey(name: "feed")
  final FeedFeedItemResponse? feed;
  @override

  /// Связанные с новостью категории и бренды
  @JsonKey(name: "promotions")
  final FeedPromotionsItemResponse? promotions;
  @override

  /// Связанные новости
  @JsonKey(name: "additional")
  final FeedAdditionalItemResponse? additional;

  @override
  String toString() {
    return 'FeedResponse(feed: $feed, promotions: $promotions, additional: $additional)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeedResp &&
            (identical(other.feed, feed) ||
                const DeepCollectionEquality().equals(other.feed, feed)) &&
            (identical(other.promotions, promotions) ||
                const DeepCollectionEquality()
                    .equals(other.promotions, promotions)) &&
            (identical(other.additional, additional) ||
                const DeepCollectionEquality()
                    .equals(other.additional, additional)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(feed) ^
      const DeepCollectionEquality().hash(promotions) ^
      const DeepCollectionEquality().hash(additional);

  @JsonKey(ignore: true)
  @override
  $FeedRespCopyWith<FeedResp> get copyWith =>
      _$FeedRespCopyWithImpl<FeedResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedRespToJson(this);
  }
}

abstract class FeedResp implements FeedResponse {
  const factory FeedResp(
          @JsonKey(name: "feed") FeedFeedItemResponse? feed,
          @JsonKey(name: "promotions") FeedPromotionsItemResponse? promotions,
          @JsonKey(name: "additional") FeedAdditionalItemResponse? additional) =
      _$FeedResp;

  factory FeedResp.fromJson(Map<String, dynamic> json) = _$FeedResp.fromJson;

  @override

  /// Новость
  @JsonKey(name: "feed")
  FeedFeedItemResponse? get feed => throw _privateConstructorUsedError;
  @override

  /// Связанные с новостью категории и бренды
  @JsonKey(name: "promotions")
  FeedPromotionsItemResponse? get promotions =>
      throw _privateConstructorUsedError;
  @override

  /// Связанные новости
  @JsonKey(name: "additional")
  FeedAdditionalItemResponse? get additional =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FeedRespCopyWith<FeedResp> get copyWith =>
      throw _privateConstructorUsedError;
}
