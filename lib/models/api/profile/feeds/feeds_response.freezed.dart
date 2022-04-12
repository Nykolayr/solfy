// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feeds_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedsResponse _$FeedsResponseFromJson(Map<String, dynamic> json) {
  return FeedsResp.fromJson(json);
}

/// @nodoc
class _$FeedsResponseTearOff {
  const _$FeedsResponseTearOff();

  FeedsResp call(@JsonKey(name: "feeds") List<FeedsFeedItemResponse>? feeds) {
    return FeedsResp(
      feeds,
    );
  }

  FeedsResponse fromJson(Map<String, Object> json) {
    return FeedsResponse.fromJson(json);
  }
}

/// @nodoc
const $FeedsResponse = _$FeedsResponseTearOff();

/// @nodoc
mixin _$FeedsResponse {
  /// Идентификатор новости
  @JsonKey(name: "feeds")
  List<FeedsFeedItemResponse>? get feeds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedsResponseCopyWith<FeedsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedsResponseCopyWith<$Res> {
  factory $FeedsResponseCopyWith(
          FeedsResponse value, $Res Function(FeedsResponse) then) =
      _$FeedsResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "feeds") List<FeedsFeedItemResponse>? feeds});
}

/// @nodoc
class _$FeedsResponseCopyWithImpl<$Res>
    implements $FeedsResponseCopyWith<$Res> {
  _$FeedsResponseCopyWithImpl(this._value, this._then);

  final FeedsResponse _value;
  // ignore: unused_field
  final $Res Function(FeedsResponse) _then;

  @override
  $Res call({
    Object? feeds = freezed,
  }) {
    return _then(_value.copyWith(
      feeds: feeds == freezed
          ? _value.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<FeedsFeedItemResponse>?,
    ));
  }
}

/// @nodoc
abstract class $FeedsRespCopyWith<$Res>
    implements $FeedsResponseCopyWith<$Res> {
  factory $FeedsRespCopyWith(FeedsResp value, $Res Function(FeedsResp) then) =
      _$FeedsRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "feeds") List<FeedsFeedItemResponse>? feeds});
}

/// @nodoc
class _$FeedsRespCopyWithImpl<$Res> extends _$FeedsResponseCopyWithImpl<$Res>
    implements $FeedsRespCopyWith<$Res> {
  _$FeedsRespCopyWithImpl(FeedsResp _value, $Res Function(FeedsResp) _then)
      : super(_value, (v) => _then(v as FeedsResp));

  @override
  FeedsResp get _value => super._value as FeedsResp;

  @override
  $Res call({
    Object? feeds = freezed,
  }) {
    return _then(FeedsResp(
      feeds == freezed
          ? _value.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<FeedsFeedItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedsResp implements FeedsResp {
  const _$FeedsResp(@JsonKey(name: "feeds") this.feeds);

  factory _$FeedsResp.fromJson(Map<String, dynamic> json) =>
      _$$FeedsRespFromJson(json);

  @override

  /// Идентификатор новости
  @JsonKey(name: "feeds")
  final List<FeedsFeedItemResponse>? feeds;

  @override
  String toString() {
    return 'FeedsResponse(feeds: $feeds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeedsResp &&
            (identical(other.feeds, feeds) ||
                const DeepCollectionEquality().equals(other.feeds, feeds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(feeds);

  @JsonKey(ignore: true)
  @override
  $FeedsRespCopyWith<FeedsResp> get copyWith =>
      _$FeedsRespCopyWithImpl<FeedsResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedsRespToJson(this);
  }
}

abstract class FeedsResp implements FeedsResponse {
  const factory FeedsResp(
      @JsonKey(name: "feeds") List<FeedsFeedItemResponse>? feeds) = _$FeedsResp;

  factory FeedsResp.fromJson(Map<String, dynamic> json) = _$FeedsResp.fromJson;

  @override

  /// Идентификатор новости
  @JsonKey(name: "feeds")
  List<FeedsFeedItemResponse>? get feeds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FeedsRespCopyWith<FeedsResp> get copyWith =>
      throw _privateConstructorUsedError;
}
