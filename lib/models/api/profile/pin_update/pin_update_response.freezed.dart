// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pin_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PinUpdateResponse _$PinUpdateResponseFromJson(Map<String, dynamic> json) {
  return PinUpdateResp.fromJson(json);
}

/// @nodoc
class _$PinUpdateResponseTearOff {
  const _$PinUpdateResponseTearOff();

  PinUpdateResp call(@JsonKey(name: "valid") bool? valid) {
    return PinUpdateResp(
      valid,
    );
  }

  PinUpdateResponse fromJson(Map<String, Object> json) {
    return PinUpdateResponse.fromJson(json);
  }
}

/// @nodoc
const $PinUpdateResponse = _$PinUpdateResponseTearOff();

/// @nodoc
mixin _$PinUpdateResponse {
  /// Успешно ли сменили пин-код
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PinUpdateResponseCopyWith<PinUpdateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinUpdateResponseCopyWith<$Res> {
  factory $PinUpdateResponseCopyWith(
          PinUpdateResponse value, $Res Function(PinUpdateResponse) then) =
      _$PinUpdateResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$PinUpdateResponseCopyWithImpl<$Res>
    implements $PinUpdateResponseCopyWith<$Res> {
  _$PinUpdateResponseCopyWithImpl(this._value, this._then);

  final PinUpdateResponse _value;
  // ignore: unused_field
  final $Res Function(PinUpdateResponse) _then;

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
abstract class $PinUpdateRespCopyWith<$Res>
    implements $PinUpdateResponseCopyWith<$Res> {
  factory $PinUpdateRespCopyWith(
          PinUpdateResp value, $Res Function(PinUpdateResp) then) =
      _$PinUpdateRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$PinUpdateRespCopyWithImpl<$Res>
    extends _$PinUpdateResponseCopyWithImpl<$Res>
    implements $PinUpdateRespCopyWith<$Res> {
  _$PinUpdateRespCopyWithImpl(
      PinUpdateResp _value, $Res Function(PinUpdateResp) _then)
      : super(_value, (v) => _then(v as PinUpdateResp));

  @override
  PinUpdateResp get _value => super._value as PinUpdateResp;

  @override
  $Res call({
    Object? valid = freezed,
  }) {
    return _then(PinUpdateResp(
      valid == freezed
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PinUpdateResp implements PinUpdateResp {
  const _$PinUpdateResp(@JsonKey(name: "valid") this.valid);

  factory _$PinUpdateResp.fromJson(Map<String, dynamic> json) =>
      _$$PinUpdateRespFromJson(json);

  @override

  /// Успешно ли сменили пин-код
  @JsonKey(name: "valid")
  final bool? valid;

  @override
  String toString() {
    return 'PinUpdateResponse(valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PinUpdateResp &&
            (identical(other.valid, valid) ||
                const DeepCollectionEquality().equals(other.valid, valid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(valid);

  @JsonKey(ignore: true)
  @override
  $PinUpdateRespCopyWith<PinUpdateResp> get copyWith =>
      _$PinUpdateRespCopyWithImpl<PinUpdateResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PinUpdateRespToJson(this);
  }
}

abstract class PinUpdateResp implements PinUpdateResponse {
  const factory PinUpdateResp(@JsonKey(name: "valid") bool? valid) =
      _$PinUpdateResp;

  factory PinUpdateResp.fromJson(Map<String, dynamic> json) =
      _$PinUpdateResp.fromJson;

  @override

  /// Успешно ли сменили пин-код
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PinUpdateRespCopyWith<PinUpdateResp> get copyWith =>
      throw _privateConstructorUsedError;
}
