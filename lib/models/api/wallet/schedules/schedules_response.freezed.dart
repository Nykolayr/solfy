// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedules_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SchedulesResponse _$SchedulesResponseFromJson(Map<String, dynamic> json) {
  return SchedulesResp.fromJson(json);
}

/// @nodoc
class _$SchedulesResponseTearOff {
  const _$SchedulesResponseTearOff();

  SchedulesResp call(
      @JsonKey(name: "schedules")
          List<SchedulesScheduleItemResponse>? schedules) {
    return SchedulesResp(
      schedules,
    );
  }

  SchedulesResponse fromJson(Map<String, Object> json) {
    return SchedulesResponse.fromJson(json);
  }
}

/// @nodoc
const $SchedulesResponse = _$SchedulesResponseTearOff();

/// @nodoc
mixin _$SchedulesResponse {
  /// Графики платежей
  @JsonKey(name: "schedules")
  List<SchedulesScheduleItemResponse>? get schedules =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchedulesResponseCopyWith<SchedulesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulesResponseCopyWith<$Res> {
  factory $SchedulesResponseCopyWith(
          SchedulesResponse value, $Res Function(SchedulesResponse) then) =
      _$SchedulesResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "schedules")
          List<SchedulesScheduleItemResponse>? schedules});
}

/// @nodoc
class _$SchedulesResponseCopyWithImpl<$Res>
    implements $SchedulesResponseCopyWith<$Res> {
  _$SchedulesResponseCopyWithImpl(this._value, this._then);

  final SchedulesResponse _value;
  // ignore: unused_field
  final $Res Function(SchedulesResponse) _then;

  @override
  $Res call({
    Object? schedules = freezed,
  }) {
    return _then(_value.copyWith(
      schedules: schedules == freezed
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<SchedulesScheduleItemResponse>?,
    ));
  }
}

/// @nodoc
abstract class $SchedulesRespCopyWith<$Res>
    implements $SchedulesResponseCopyWith<$Res> {
  factory $SchedulesRespCopyWith(
          SchedulesResp value, $Res Function(SchedulesResp) then) =
      _$SchedulesRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "schedules")
          List<SchedulesScheduleItemResponse>? schedules});
}

/// @nodoc
class _$SchedulesRespCopyWithImpl<$Res>
    extends _$SchedulesResponseCopyWithImpl<$Res>
    implements $SchedulesRespCopyWith<$Res> {
  _$SchedulesRespCopyWithImpl(
      SchedulesResp _value, $Res Function(SchedulesResp) _then)
      : super(_value, (v) => _then(v as SchedulesResp));

  @override
  SchedulesResp get _value => super._value as SchedulesResp;

  @override
  $Res call({
    Object? schedules = freezed,
  }) {
    return _then(SchedulesResp(
      schedules == freezed
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<SchedulesScheduleItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchedulesResp implements SchedulesResp {
  const _$SchedulesResp(@JsonKey(name: "schedules") this.schedules);

  factory _$SchedulesResp.fromJson(Map<String, dynamic> json) =>
      _$$SchedulesRespFromJson(json);

  @override

  /// Графики платежей
  @JsonKey(name: "schedules")
  final List<SchedulesScheduleItemResponse>? schedules;

  @override
  String toString() {
    return 'SchedulesResponse(schedules: $schedules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SchedulesResp &&
            (identical(other.schedules, schedules) ||
                const DeepCollectionEquality()
                    .equals(other.schedules, schedules)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(schedules);

  @JsonKey(ignore: true)
  @override
  $SchedulesRespCopyWith<SchedulesResp> get copyWith =>
      _$SchedulesRespCopyWithImpl<SchedulesResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchedulesRespToJson(this);
  }
}

abstract class SchedulesResp implements SchedulesResponse {
  const factory SchedulesResp(
      @JsonKey(name: "schedules")
          List<SchedulesScheduleItemResponse>? schedules) = _$SchedulesResp;

  factory SchedulesResp.fromJson(Map<String, dynamic> json) =
      _$SchedulesResp.fromJson;

  @override

  /// Графики платежей
  @JsonKey(name: "schedules")
  List<SchedulesScheduleItemResponse>? get schedules =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SchedulesRespCopyWith<SchedulesResp> get copyWith =>
      throw _privateConstructorUsedError;
}
