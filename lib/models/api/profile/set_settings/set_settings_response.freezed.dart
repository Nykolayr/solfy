// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'set_settings_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetSettingsResponse _$SetSettingsResponseFromJson(Map<String, dynamic> json) {
  return SetSettingsResp.fromJson(json);
}

/// @nodoc
class _$SetSettingsResponseTearOff {
  const _$SetSettingsResponseTearOff();

  SetSettingsResp call(@JsonKey(name: "valid") bool? valid) {
    return SetSettingsResp(
      valid,
    );
  }

  SetSettingsResponse fromJson(Map<String, Object> json) {
    return SetSettingsResponse.fromJson(json);
  }
}

/// @nodoc
const $SetSettingsResponse = _$SetSettingsResponseTearOff();

/// @nodoc
mixin _$SetSettingsResponse {
  /// Успешно ли сменили настройки
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetSettingsResponseCopyWith<SetSettingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSettingsResponseCopyWith<$Res> {
  factory $SetSettingsResponseCopyWith(
          SetSettingsResponse value, $Res Function(SetSettingsResponse) then) =
      _$SetSettingsResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$SetSettingsResponseCopyWithImpl<$Res>
    implements $SetSettingsResponseCopyWith<$Res> {
  _$SetSettingsResponseCopyWithImpl(this._value, this._then);

  final SetSettingsResponse _value;
  // ignore: unused_field
  final $Res Function(SetSettingsResponse) _then;

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
abstract class $SetSettingsRespCopyWith<$Res>
    implements $SetSettingsResponseCopyWith<$Res> {
  factory $SetSettingsRespCopyWith(
          SetSettingsResp value, $Res Function(SetSettingsResp) then) =
      _$SetSettingsRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$SetSettingsRespCopyWithImpl<$Res>
    extends _$SetSettingsResponseCopyWithImpl<$Res>
    implements $SetSettingsRespCopyWith<$Res> {
  _$SetSettingsRespCopyWithImpl(
      SetSettingsResp _value, $Res Function(SetSettingsResp) _then)
      : super(_value, (v) => _then(v as SetSettingsResp));

  @override
  SetSettingsResp get _value => super._value as SetSettingsResp;

  @override
  $Res call({
    Object? valid = freezed,
  }) {
    return _then(SetSettingsResp(
      valid == freezed
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetSettingsResp implements SetSettingsResp {
  const _$SetSettingsResp(@JsonKey(name: "valid") this.valid);

  factory _$SetSettingsResp.fromJson(Map<String, dynamic> json) =>
      _$$SetSettingsRespFromJson(json);

  @override

  /// Успешно ли сменили настройки
  @JsonKey(name: "valid")
  final bool? valid;

  @override
  String toString() {
    return 'SetSettingsResponse(valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetSettingsResp &&
            (identical(other.valid, valid) ||
                const DeepCollectionEquality().equals(other.valid, valid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(valid);

  @JsonKey(ignore: true)
  @override
  $SetSettingsRespCopyWith<SetSettingsResp> get copyWith =>
      _$SetSettingsRespCopyWithImpl<SetSettingsResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetSettingsRespToJson(this);
  }
}

abstract class SetSettingsResp implements SetSettingsResponse {
  const factory SetSettingsResp(@JsonKey(name: "valid") bool? valid) =
      _$SetSettingsResp;

  factory SetSettingsResp.fromJson(Map<String, dynamic> json) =
      _$SetSettingsResp.fromJson;

  @override

  /// Успешно ли сменили настройки
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SetSettingsRespCopyWith<SetSettingsResp> get copyWith =>
      throw _privateConstructorUsedError;
}
