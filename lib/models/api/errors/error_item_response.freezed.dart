// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorItemResponse _$ErrorItemResponseFromJson(Map<String, dynamic> json) {
  return Error.fromJson(json);
}

/// @nodoc
class _$ErrorItemResponseTearOff {
  const _$ErrorItemResponseTearOff();

  Error call(
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "target") String? target,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "type") String? type) {
    return Error(
      code,
      title,
      message,
      target,
      status,
      type,
    );
  }

  ErrorItemResponse fromJson(Map<String, Object> json) {
    return ErrorItemResponse.fromJson(json);
  }
}

/// @nodoc
const $ErrorItemResponse = _$ErrorItemResponseTearOff();

/// @nodoc
mixin _$ErrorItemResponse {
  /// Код
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;

  /// Тайтл
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  /// Сообщение
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  /// Куда перейти
  @JsonKey(name: "target")
  String? get target => throw _privateConstructorUsedError;

  /// Статус ошибки
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;

  /// Тип ошибки
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorItemResponseCopyWith<ErrorItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorItemResponseCopyWith<$Res> {
  factory $ErrorItemResponseCopyWith(
          ErrorItemResponse value, $Res Function(ErrorItemResponse) then) =
      _$ErrorItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "target") String? target,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class _$ErrorItemResponseCopyWithImpl<$Res>
    implements $ErrorItemResponseCopyWith<$Res> {
  _$ErrorItemResponseCopyWithImpl(this._value, this._then);

  final ErrorItemResponse _value;
  // ignore: unused_field
  final $Res Function(ErrorItemResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? target = freezed,
    Object? status = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $ErrorCopyWith<$Res>
    implements $ErrorItemResponseCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "target") String? target,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$ErrorItemResponseCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? code = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? target = freezed,
    Object? status = freezed,
    Object? type = freezed,
  }) {
    return _then(Error(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Error implements Error {
  const _$Error(
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "target") this.target,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "type") this.type);

  factory _$Error.fromJson(Map<String, dynamic> json) => _$$ErrorFromJson(json);

  @override

  /// Код
  @JsonKey(name: "code")
  final String? code;
  @override

  /// Тайтл
  @JsonKey(name: "title")
  final String? title;
  @override

  /// Сообщение
  @JsonKey(name: "message")
  final String? message;
  @override

  /// Куда перейти
  @JsonKey(name: "target")
  final String? target;
  @override

  /// Статус ошибки
  @JsonKey(name: "status")
  final int? status;
  @override

  /// Тип ошибки
  @JsonKey(name: "type")
  final String? type;

  @override
  String toString() {
    return 'ErrorItemResponse(code: $code, title: $title, message: $message, target: $target, status: $status, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(target) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorToJson(this);
  }
}

abstract class Error implements ErrorItemResponse {
  const factory Error(
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "target") String? target,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "type") String? type) = _$Error;

  factory Error.fromJson(Map<String, dynamic> json) = _$Error.fromJson;

  @override

  /// Код
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @override

  /// Тайтл
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @override

  /// Сообщение
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @override

  /// Куда перейти
  @JsonKey(name: "target")
  String? get target => throw _privateConstructorUsedError;
  @override

  /// Статус ошибки
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @override

  /// Тип ошибки
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
