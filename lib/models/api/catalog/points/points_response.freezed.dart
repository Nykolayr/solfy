// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'points_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PointsResponse _$PointsResponseFromJson(Map<String, dynamic> json) {
  return PointsResp.fromJson(json);
}

/// @nodoc
class _$PointsResponseTearOff {
  const _$PointsResponseTearOff();

  PointsResp call(
      @JsonKey(name: "points") List<PointsPointItemResponse>? points) {
    return PointsResp(
      points,
    );
  }

  PointsResponse fromJson(Map<String, Object> json) {
    return PointsResponse.fromJson(json);
  }
}

/// @nodoc
const $PointsResponse = _$PointsResponseTearOff();

/// @nodoc
mixin _$PointsResponse {
  /// Точки на карте
  @JsonKey(name: "points")
  List<PointsPointItemResponse>? get points =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointsResponseCopyWith<PointsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointsResponseCopyWith<$Res> {
  factory $PointsResponseCopyWith(
          PointsResponse value, $Res Function(PointsResponse) then) =
      _$PointsResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "points") List<PointsPointItemResponse>? points});
}

/// @nodoc
class _$PointsResponseCopyWithImpl<$Res>
    implements $PointsResponseCopyWith<$Res> {
  _$PointsResponseCopyWithImpl(this._value, this._then);

  final PointsResponse _value;
  // ignore: unused_field
  final $Res Function(PointsResponse) _then;

  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointsPointItemResponse>?,
    ));
  }
}

/// @nodoc
abstract class $PointsRespCopyWith<$Res>
    implements $PointsResponseCopyWith<$Res> {
  factory $PointsRespCopyWith(
          PointsResp value, $Res Function(PointsResp) then) =
      _$PointsRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "points") List<PointsPointItemResponse>? points});
}

/// @nodoc
class _$PointsRespCopyWithImpl<$Res> extends _$PointsResponseCopyWithImpl<$Res>
    implements $PointsRespCopyWith<$Res> {
  _$PointsRespCopyWithImpl(PointsResp _value, $Res Function(PointsResp) _then)
      : super(_value, (v) => _then(v as PointsResp));

  @override
  PointsResp get _value => super._value as PointsResp;

  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(PointsResp(
      points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointsPointItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PointsResp implements PointsResp {
  const _$PointsResp(@JsonKey(name: "points") this.points);

  factory _$PointsResp.fromJson(Map<String, dynamic> json) =>
      _$$PointsRespFromJson(json);

  @override

  /// Точки на карте
  @JsonKey(name: "points")
  final List<PointsPointItemResponse>? points;

  @override
  String toString() {
    return 'PointsResponse(points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PointsResp &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(points);

  @JsonKey(ignore: true)
  @override
  $PointsRespCopyWith<PointsResp> get copyWith =>
      _$PointsRespCopyWithImpl<PointsResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointsRespToJson(this);
  }
}

abstract class PointsResp implements PointsResponse {
  const factory PointsResp(
          @JsonKey(name: "points") List<PointsPointItemResponse>? points) =
      _$PointsResp;

  factory PointsResp.fromJson(Map<String, dynamic> json) =
      _$PointsResp.fromJson;

  @override

  /// Точки на карте
  @JsonKey(name: "points")
  List<PointsPointItemResponse>? get points =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PointsRespCopyWith<PointsResp> get copyWith =>
      throw _privateConstructorUsedError;
}
