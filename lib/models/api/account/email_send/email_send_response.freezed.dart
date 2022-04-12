// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email_send_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailSendResponse _$EmailSendResponseFromJson(Map<String, dynamic> json) {
  return EmailSendResp.fromJson(json);
}

/// @nodoc
class _$EmailSendResponseTearOff {
  const _$EmailSendResponseTearOff();

  EmailSendResp call(@JsonKey(name: "target") String? target) {
    return EmailSendResp(
      target,
    );
  }

  EmailSendResponse fromJson(Map<String, Object> json) {
    return EmailSendResponse.fromJson(json);
  }
}

/// @nodoc
const $EmailSendResponse = _$EmailSendResponseTearOff();

/// @nodoc
mixin _$EmailSendResponse {
  /// Следующая страница для редиректа
  @JsonKey(name: "target")
  String? get target => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailSendResponseCopyWith<EmailSendResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailSendResponseCopyWith<$Res> {
  factory $EmailSendResponseCopyWith(
          EmailSendResponse value, $Res Function(EmailSendResponse) then) =
      _$EmailSendResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "target") String? target});
}

/// @nodoc
class _$EmailSendResponseCopyWithImpl<$Res>
    implements $EmailSendResponseCopyWith<$Res> {
  _$EmailSendResponseCopyWithImpl(this._value, this._then);

  final EmailSendResponse _value;
  // ignore: unused_field
  final $Res Function(EmailSendResponse) _then;

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
abstract class $EmailSendRespCopyWith<$Res>
    implements $EmailSendResponseCopyWith<$Res> {
  factory $EmailSendRespCopyWith(
          EmailSendResp value, $Res Function(EmailSendResp) then) =
      _$EmailSendRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "target") String? target});
}

/// @nodoc
class _$EmailSendRespCopyWithImpl<$Res>
    extends _$EmailSendResponseCopyWithImpl<$Res>
    implements $EmailSendRespCopyWith<$Res> {
  _$EmailSendRespCopyWithImpl(
      EmailSendResp _value, $Res Function(EmailSendResp) _then)
      : super(_value, (v) => _then(v as EmailSendResp));

  @override
  EmailSendResp get _value => super._value as EmailSendResp;

  @override
  $Res call({
    Object? target = freezed,
  }) {
    return _then(EmailSendResp(
      target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailSendResp implements EmailSendResp {
  const _$EmailSendResp(@JsonKey(name: "target") this.target);

  factory _$EmailSendResp.fromJson(Map<String, dynamic> json) =>
      _$$EmailSendRespFromJson(json);

  @override

  /// Следующая страница для редиректа
  @JsonKey(name: "target")
  final String? target;

  @override
  String toString() {
    return 'EmailSendResponse(target: $target)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailSendResp &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(target);

  @JsonKey(ignore: true)
  @override
  $EmailSendRespCopyWith<EmailSendResp> get copyWith =>
      _$EmailSendRespCopyWithImpl<EmailSendResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailSendRespToJson(this);
  }
}

abstract class EmailSendResp implements EmailSendResponse {
  const factory EmailSendResp(@JsonKey(name: "target") String? target) =
      _$EmailSendResp;

  factory EmailSendResp.fromJson(Map<String, dynamic> json) =
      _$EmailSendResp.fromJson;

  @override

  /// Следующая страница для редиректа
  @JsonKey(name: "target")
  String? get target => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EmailSendRespCopyWith<EmailSendResp> get copyWith =>
      throw _privateConstructorUsedError;
}
