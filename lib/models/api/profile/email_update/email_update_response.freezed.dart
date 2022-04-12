// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailUpdateResponse _$EmailUpdateResponseFromJson(Map<String, dynamic> json) {
  return EmailUpdateResp.fromJson(json);
}

/// @nodoc
class _$EmailUpdateResponseTearOff {
  const _$EmailUpdateResponseTearOff();

  EmailUpdateResp call(@JsonKey(name: "valid") bool? valid) {
    return EmailUpdateResp(
      valid,
    );
  }

  EmailUpdateResponse fromJson(Map<String, Object> json) {
    return EmailUpdateResponse.fromJson(json);
  }
}

/// @nodoc
const $EmailUpdateResponse = _$EmailUpdateResponseTearOff();

/// @nodoc
mixin _$EmailUpdateResponse {
  /// Смогли ли сменить email
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailUpdateResponseCopyWith<EmailUpdateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailUpdateResponseCopyWith<$Res> {
  factory $EmailUpdateResponseCopyWith(
          EmailUpdateResponse value, $Res Function(EmailUpdateResponse) then) =
      _$EmailUpdateResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$EmailUpdateResponseCopyWithImpl<$Res>
    implements $EmailUpdateResponseCopyWith<$Res> {
  _$EmailUpdateResponseCopyWithImpl(this._value, this._then);

  final EmailUpdateResponse _value;
  // ignore: unused_field
  final $Res Function(EmailUpdateResponse) _then;

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
abstract class $EmailUpdateRespCopyWith<$Res>
    implements $EmailUpdateResponseCopyWith<$Res> {
  factory $EmailUpdateRespCopyWith(
          EmailUpdateResp value, $Res Function(EmailUpdateResp) then) =
      _$EmailUpdateRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "valid") bool? valid});
}

/// @nodoc
class _$EmailUpdateRespCopyWithImpl<$Res>
    extends _$EmailUpdateResponseCopyWithImpl<$Res>
    implements $EmailUpdateRespCopyWith<$Res> {
  _$EmailUpdateRespCopyWithImpl(
      EmailUpdateResp _value, $Res Function(EmailUpdateResp) _then)
      : super(_value, (v) => _then(v as EmailUpdateResp));

  @override
  EmailUpdateResp get _value => super._value as EmailUpdateResp;

  @override
  $Res call({
    Object? valid = freezed,
  }) {
    return _then(EmailUpdateResp(
      valid == freezed
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailUpdateResp implements EmailUpdateResp {
  const _$EmailUpdateResp(@JsonKey(name: "valid") this.valid);

  factory _$EmailUpdateResp.fromJson(Map<String, dynamic> json) =>
      _$$EmailUpdateRespFromJson(json);

  @override

  /// Смогли ли сменить email
  @JsonKey(name: "valid")
  final bool? valid;

  @override
  String toString() {
    return 'EmailUpdateResponse(valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailUpdateResp &&
            (identical(other.valid, valid) ||
                const DeepCollectionEquality().equals(other.valid, valid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(valid);

  @JsonKey(ignore: true)
  @override
  $EmailUpdateRespCopyWith<EmailUpdateResp> get copyWith =>
      _$EmailUpdateRespCopyWithImpl<EmailUpdateResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailUpdateRespToJson(this);
  }
}

abstract class EmailUpdateResp implements EmailUpdateResponse {
  const factory EmailUpdateResp(@JsonKey(name: "valid") bool? valid) =
      _$EmailUpdateResp;

  factory EmailUpdateResp.fromJson(Map<String, dynamic> json) =
      _$EmailUpdateResp.fromJson;

  @override

  /// Смогли ли сменить email
  @JsonKey(name: "valid")
  bool? get valid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EmailUpdateRespCopyWith<EmailUpdateResp> get copyWith =>
      throw _privateConstructorUsedError;
}
