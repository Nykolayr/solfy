// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportResponse _$ReportResponseFromJson(Map<String, dynamic> json) {
  return ReportResp.fromJson(json);
}

/// @nodoc
class _$ReportResponseTearOff {
  const _$ReportResponseTearOff();

  ReportResp call(@JsonKey(name: "valid") bool? valid) {
    return ReportResp(
      valid,
    );
  }

  ReportResponse fromJson(Map<String, Object> json) {
    return ReportResponse.fromJson(json);
  }
}

/// @nodoc
const $ReportResponse = _$ReportResponseTearOff();

/// @nodoc
mixin _$ReportResponse {
  /// Успешно ли отправили письмо
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportResponseCopyWith<ReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportResponseCopyWith<$Res> {
  factory $ReportResponseCopyWith(
          ReportResponse value, $Res Function(ReportResponse) then) =
      _$ReportResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$ReportResponseCopyWithImpl<$Res>
    implements $ReportResponseCopyWith<$Res> {
  _$ReportResponseCopyWithImpl(this._value, this._then);

  final ReportResponse _value;
  // ignore: unused_field
  final $Res Function(ReportResponse) _then;

  @override
  $Res call({
    Object? valid = freezed,
  }) {
    return _then(_value.copyWith(
      valid: valid == freezed
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class $ReportRespCopyWith<$Res>
    implements $ReportResponseCopyWith<$Res> {
  factory $ReportRespCopyWith(
          ReportResp value, $Res Function(ReportResp) then) =
      _$ReportRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$ReportRespCopyWithImpl<$Res> extends _$ReportResponseCopyWithImpl<$Res>
    implements $ReportRespCopyWith<$Res> {
  _$ReportRespCopyWithImpl(ReportResp _value, $Res Function(ReportResp) _then)
      : super(_value, (v) => _then(v as ReportResp));

  @override
  ReportResp get _value => super._value as ReportResp;

  @override
  $Res call({
    Object? valid = freezed,
  }) {
    return _then(ReportResp(
      valid == freezed
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportResp implements ReportResp {
  const _$ReportResp(@JsonKey(name: "valid") this.valid);

  factory _$ReportResp.fromJson(Map<String, dynamic> json) =>
      _$$ReportRespFromJson(json);

  @override

  /// Успешно ли отправили письмо
  @JsonKey(name: "valid")
  final bool? valid;

  @override
  String toString() {
    return 'ReportResponse(valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportResp &&
            (identical(other.valid, valid) ||
                const DeepCollectionEquality().equals(other.valid, valid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(valid);

  @JsonKey(ignore: true)
  @override
  $ReportRespCopyWith<ReportResp> get copyWith =>
      _$ReportRespCopyWithImpl<ReportResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportRespToJson(this);
  }
}

abstract class ReportResp implements ReportResponse {
  const factory ReportResp(@JsonKey(name: "valid") bool? valid) = _$ReportResp;

  factory ReportResp.fromJson(Map<String, dynamic> json) =
      _$ReportResp.fromJson;

  @override

  /// Успешно ли отправили письмо
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ReportRespCopyWith<ReportResp> get copyWith =>
      throw _privateConstructorUsedError;
}
