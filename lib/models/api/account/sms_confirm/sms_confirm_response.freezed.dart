// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sms_confirm_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SmsConfirmResponse _$SmsConfirmResponseFromJson(Map<String, dynamic> json) {
  return SmsConfirmResp.fromJson(json);
}

/// @nodoc
class _$SmsConfirmResponseTearOff {
  const _$SmsConfirmResponseTearOff();

  SmsConfirmResp call(@JsonKey(name: "target") String? target) {
    return SmsConfirmResp(
      target,
    );
  }

  SmsConfirmResponse fromJson(Map<String, Object> json) {
    return SmsConfirmResponse.fromJson(json);
  }
}

/// @nodoc
const $SmsConfirmResponse = _$SmsConfirmResponseTearOff();

/// @nodoc
mixin _$SmsConfirmResponse {
  /// Следующая страница для редиректа
  @JsonKey(name: "target")
  String? get target => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmsConfirmResponseCopyWith<SmsConfirmResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsConfirmResponseCopyWith<$Res> {
  factory $SmsConfirmResponseCopyWith(
          SmsConfirmResponse value, $Res Function(SmsConfirmResponse) then) =
      _$SmsConfirmResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "target") String? target});
}

/// @nodoc
class _$SmsConfirmResponseCopyWithImpl<$Res>
    implements $SmsConfirmResponseCopyWith<$Res> {
  _$SmsConfirmResponseCopyWithImpl(this._value, this._then);

  final SmsConfirmResponse _value;
  // ignore: unused_field
  final $Res Function(SmsConfirmResponse) _then;

  @override
  $Res call({
    Object? target = freezed,
  }) {
    return _then(_value.copyWith(
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $SmsConfirmRespCopyWith<$Res>
    implements $SmsConfirmResponseCopyWith<$Res> {
  factory $SmsConfirmRespCopyWith(
          SmsConfirmResp value, $Res Function(SmsConfirmResp) then) =
      _$SmsConfirmRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "target") String? target});
}

/// @nodoc
class _$SmsConfirmRespCopyWithImpl<$Res>
    extends _$SmsConfirmResponseCopyWithImpl<$Res>
    implements $SmsConfirmRespCopyWith<$Res> {
  _$SmsConfirmRespCopyWithImpl(
      SmsConfirmResp _value, $Res Function(SmsConfirmResp) _then)
      : super(_value, (v) => _then(v as SmsConfirmResp));

  @override
  SmsConfirmResp get _value => super._value as SmsConfirmResp;

  @override
  $Res call({
    Object? target = freezed,
  }) {
    return _then(SmsConfirmResp(
      target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmsConfirmResp implements SmsConfirmResp {
  const _$SmsConfirmResp(@JsonKey(name: "target") this.target);

  factory _$SmsConfirmResp.fromJson(Map<String, dynamic> json) =>
      _$$SmsConfirmRespFromJson(json);

  @override

  /// Следующая страница для редиректа
  @JsonKey(name: "target")
  final String? target;

  @override
  String toString() {
    return 'SmsConfirmResponse(target: $target)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SmsConfirmResp &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(target);

  @JsonKey(ignore: true)
  @override
  $SmsConfirmRespCopyWith<SmsConfirmResp> get copyWith =>
      _$SmsConfirmRespCopyWithImpl<SmsConfirmResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmsConfirmRespToJson(this);
  }
}

abstract class SmsConfirmResp implements SmsConfirmResponse {
  const factory SmsConfirmResp(@JsonKey(name: "target") String? target) =
      _$SmsConfirmResp;

  factory SmsConfirmResp.fromJson(Map<String, dynamic> json) =
      _$SmsConfirmResp.fromJson;

  @override

  /// Следующая страница для редиректа
  @JsonKey(name: "target")
  String? get target => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SmsConfirmRespCopyWith<SmsConfirmResp> get copyWith =>
      throw _privateConstructorUsedError;
}
