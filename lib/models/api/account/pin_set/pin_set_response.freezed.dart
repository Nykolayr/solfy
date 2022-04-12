// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pin_set_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PinSetResponse _$PinSetResponseFromJson(Map<String, dynamic> json) {
  return PinSetResp.fromJson(json);
}

/// @nodoc
class _$PinSetResponseTearOff {
  const _$PinSetResponseTearOff();

  PinSetResp call(@JsonKey(name: "target") String? target) {
    return PinSetResp(
      target,
    );
  }

  PinSetResponse fromJson(Map<String, Object> json) {
    return PinSetResponse.fromJson(json);
  }
}

/// @nodoc
const $PinSetResponse = _$PinSetResponseTearOff();

/// @nodoc
mixin _$PinSetResponse {
  /// Следующая страница для редиректа
  @JsonKey(name: "target")
  String? get target => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PinSetResponseCopyWith<PinSetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinSetResponseCopyWith<$Res> {
  factory $PinSetResponseCopyWith(
          PinSetResponse value, $Res Function(PinSetResponse) then) =
      _$PinSetResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "target") String? target});
}

/// @nodoc
class _$PinSetResponseCopyWithImpl<$Res>
    implements $PinSetResponseCopyWith<$Res> {
  _$PinSetResponseCopyWithImpl(this._value, this._then);

  final PinSetResponse _value;
  // ignore: unused_field
  final $Res Function(PinSetResponse) _then;

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
abstract class $PinSetRespCopyWith<$Res>
    implements $PinSetResponseCopyWith<$Res> {
  factory $PinSetRespCopyWith(
          PinSetResp value, $Res Function(PinSetResp) then) =
      _$PinSetRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "target") String? target});
}

/// @nodoc
class _$PinSetRespCopyWithImpl<$Res> extends _$PinSetResponseCopyWithImpl<$Res>
    implements $PinSetRespCopyWith<$Res> {
  _$PinSetRespCopyWithImpl(PinSetResp _value, $Res Function(PinSetResp) _then)
      : super(_value, (v) => _then(v as PinSetResp));

  @override
  PinSetResp get _value => super._value as PinSetResp;

  @override
  $Res call({
    Object? target = freezed,
  }) {
    return _then(PinSetResp(
      target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PinSetResp implements PinSetResp {
  const _$PinSetResp(@JsonKey(name: "target") this.target);

  factory _$PinSetResp.fromJson(Map<String, dynamic> json) =>
      _$$PinSetRespFromJson(json);

  @override

  /// Следующая страница для редиректа
  @JsonKey(name: "target")
  final String? target;

  @override
  String toString() {
    return 'PinSetResponse(target: $target)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PinSetResp &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(target);

  @JsonKey(ignore: true)
  @override
  $PinSetRespCopyWith<PinSetResp> get copyWith =>
      _$PinSetRespCopyWithImpl<PinSetResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PinSetRespToJson(this);
  }
}

abstract class PinSetResp implements PinSetResponse {
  const factory PinSetResp(@JsonKey(name: "target") String? target) =
      _$PinSetResp;

  factory PinSetResp.fromJson(Map<String, dynamic> json) =
      _$PinSetResp.fromJson;

  @override

  /// Следующая страница для редиректа
  @JsonKey(name: "target")
  String? get target => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PinSetRespCopyWith<PinSetResp> get copyWith =>
      throw _privateConstructorUsedError;
}
