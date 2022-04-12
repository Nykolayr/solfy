// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sms_send_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SmsSendResponse _$SmsSendResponseFromJson(Map<String, dynamic> json) {
  return SmsSendResp.fromJson(json);
}

/// @nodoc
class _$SmsSendResponseTearOff {
  const _$SmsSendResponseTearOff();

  SmsSendResp call(
      @JsonKey(name: "session_token") String? sessionToken,
      @JsonKey(name: "session_id") String? sessionId,
      @JsonKey(name: "target") String? target,
      @JsonKey(name: "message") String? message) {
    return SmsSendResp(
      sessionToken,
      sessionId,
      target,
      message,
    );
  }

  SmsSendResponse fromJson(Map<String, Object> json) {
    return SmsSendResponse.fromJson(json);
  }
}

/// @nodoc
const $SmsSendResponse = _$SmsSendResponseTearOff();

/// @nodoc
mixin _$SmsSendResponse {
  /// Токен текущей сессии (для онбординга)
  @JsonKey(name: "session_token")
  String? get sessionToken => throw _privateConstructorUsedError;

  /// Идентификатор сессии
  @JsonKey(name: "session_id")
  String? get sessionId => throw _privateConstructorUsedError;

  /// Следующая страница для редиректа
  @JsonKey(name: "target")
  String? get target => throw _privateConstructorUsedError;

  /// Сообщение
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmsSendResponseCopyWith<SmsSendResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsSendResponseCopyWith<$Res> {
  factory $SmsSendResponseCopyWith(
          SmsSendResponse value, $Res Function(SmsSendResponse) then) =
      _$SmsSendResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "session_token") String? sessionToken,
      @JsonKey(name: "session_id") String? sessionId,
      @JsonKey(name: "target") String? target,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class _$SmsSendResponseCopyWithImpl<$Res>
    implements $SmsSendResponseCopyWith<$Res> {
  _$SmsSendResponseCopyWithImpl(this._value, this._then);

  final SmsSendResponse _value;
  // ignore: unused_field
  final $Res Function(SmsSendResponse) _then;

  @override
  $Res call({
    Object? sessionToken = freezed,
    Object? sessionId = freezed,
    Object? target = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      sessionToken: sessionToken == freezed
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $SmsSendRespCopyWith<$Res>
    implements $SmsSendResponseCopyWith<$Res> {
  factory $SmsSendRespCopyWith(
          SmsSendResp value, $Res Function(SmsSendResp) then) =
      _$SmsSendRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "session_token") String? sessionToken,
      @JsonKey(name: "session_id") String? sessionId,
      @JsonKey(name: "target") String? target,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class _$SmsSendRespCopyWithImpl<$Res>
    extends _$SmsSendResponseCopyWithImpl<$Res>
    implements $SmsSendRespCopyWith<$Res> {
  _$SmsSendRespCopyWithImpl(
      SmsSendResp _value, $Res Function(SmsSendResp) _then)
      : super(_value, (v) => _then(v as SmsSendResp));

  @override
  SmsSendResp get _value => super._value as SmsSendResp;

  @override
  $Res call({
    Object? sessionToken = freezed,
    Object? sessionId = freezed,
    Object? target = freezed,
    Object? message = freezed,
  }) {
    return _then(SmsSendResp(
      sessionToken == freezed
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmsSendResp implements SmsSendResp {
  const _$SmsSendResp(
      @JsonKey(name: "session_token") this.sessionToken,
      @JsonKey(name: "session_id") this.sessionId,
      @JsonKey(name: "target") this.target,
      @JsonKey(name: "message") this.message);

  factory _$SmsSendResp.fromJson(Map<String, dynamic> json) =>
      _$$SmsSendRespFromJson(json);

  @override

  /// Токен текущей сессии (для онбординга)
  @JsonKey(name: "session_token")
  final String? sessionToken;
  @override

  /// Идентификатор сессии
  @JsonKey(name: "session_id")
  final String? sessionId;
  @override

  /// Следующая страница для редиректа
  @JsonKey(name: "target")
  final String? target;
  @override

  /// Сообщение
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'SmsSendResponse(sessionToken: $sessionToken, sessionId: $sessionId, target: $target, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SmsSendResp &&
            (identical(other.sessionToken, sessionToken) ||
                const DeepCollectionEquality()
                    .equals(other.sessionToken, sessionToken)) &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)) &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sessionToken) ^
      const DeepCollectionEquality().hash(sessionId) ^
      const DeepCollectionEquality().hash(target) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $SmsSendRespCopyWith<SmsSendResp> get copyWith =>
      _$SmsSendRespCopyWithImpl<SmsSendResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmsSendRespToJson(this);
  }
}

abstract class SmsSendResp implements SmsSendResponse {
  const factory SmsSendResp(
      @JsonKey(name: "session_token") String? sessionToken,
      @JsonKey(name: "session_id") String? sessionId,
      @JsonKey(name: "target") String? target,
      @JsonKey(name: "message") String? message) = _$SmsSendResp;

  factory SmsSendResp.fromJson(Map<String, dynamic> json) =
      _$SmsSendResp.fromJson;

  @override

  /// Токен текущей сессии (для онбординга)
  @JsonKey(name: "session_token")
  String? get sessionToken => throw _privateConstructorUsedError;
  @override

  /// Идентификатор сессии
  @JsonKey(name: "session_id")
  String? get sessionId => throw _privateConstructorUsedError;
  @override

  /// Следующая страница для редиректа
  @JsonKey(name: "target")
  String? get target => throw _privateConstructorUsedError;
  @override

  /// Сообщение
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SmsSendRespCopyWith<SmsSendResp> get copyWith =>
      throw _privateConstructorUsedError;
}
