// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'faq_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FaqResponse _$FaqResponseFromJson(Map<String, dynamic> json) {
  return FaqResp.fromJson(json);
}

/// @nodoc
class _$FaqResponseTearOff {
  const _$FaqResponseTearOff();

  FaqResp call(@JsonKey(name: "faq") FaqItemResponse? faq) {
    return FaqResp(
      faq,
    );
  }

  FaqResponse fromJson(Map<String, Object> json) {
    return FaqResponse.fromJson(json);
  }
}

/// @nodoc
const $FaqResponse = _$FaqResponseTearOff();

/// @nodoc
mixin _$FaqResponse {
  /// Faq
  @JsonKey(name: "faq")
  FaqItemResponse? get faq => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqResponseCopyWith<FaqResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqResponseCopyWith<$Res> {
  factory $FaqResponseCopyWith(
          FaqResponse value, $Res Function(FaqResponse) then) =
      _$FaqResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "faq") FaqItemResponse? faq});

  $FaqItemResponseCopyWith<$Res>? get faq;
}

/// @nodoc
class _$FaqResponseCopyWithImpl<$Res> implements $FaqResponseCopyWith<$Res> {
  _$FaqResponseCopyWithImpl(this._value, this._then);

  final FaqResponse _value;
  // ignore: unused_field
  final $Res Function(FaqResponse) _then;

  @override
  $Res call({
    Object? faq = freezed,
  }) {
    return _then(_value.copyWith(
      faq: faq == freezed
          ? _value.faq
          : faq // ignore: cast_nullable_to_non_nullable
              as FaqItemResponse?,
    ));
  }

  @override
  $FaqItemResponseCopyWith<$Res>? get faq {
    if (_value.faq == null) {
      return null;
    }

    return $FaqItemResponseCopyWith<$Res>(_value.faq!, (value) {
      return _then(_value.copyWith(faq: value));
    });
  }
}

/// @nodoc
abstract class $FaqRespCopyWith<$Res> implements $FaqResponseCopyWith<$Res> {
  factory $FaqRespCopyWith(FaqResp value, $Res Function(FaqResp) then) =
      _$FaqRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "faq") FaqItemResponse? faq});

  @override
  $FaqItemResponseCopyWith<$Res>? get faq;
}

/// @nodoc
class _$FaqRespCopyWithImpl<$Res> extends _$FaqResponseCopyWithImpl<$Res>
    implements $FaqRespCopyWith<$Res> {
  _$FaqRespCopyWithImpl(FaqResp _value, $Res Function(FaqResp) _then)
      : super(_value, (v) => _then(v as FaqResp));

  @override
  FaqResp get _value => super._value as FaqResp;

  @override
  $Res call({
    Object? faq = freezed,
  }) {
    return _then(FaqResp(
      faq == freezed
          ? _value.faq
          : faq // ignore: cast_nullable_to_non_nullable
              as FaqItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqResp implements FaqResp {
  const _$FaqResp(@JsonKey(name: "faq") this.faq);

  factory _$FaqResp.fromJson(Map<String, dynamic> json) =>
      _$$FaqRespFromJson(json);

  @override

  /// Faq
  @JsonKey(name: "faq")
  final FaqItemResponse? faq;

  @override
  String toString() {
    return 'FaqResponse(faq: $faq)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FaqResp &&
            (identical(other.faq, faq) ||
                const DeepCollectionEquality().equals(other.faq, faq)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(faq);

  @JsonKey(ignore: true)
  @override
  $FaqRespCopyWith<FaqResp> get copyWith =>
      _$FaqRespCopyWithImpl<FaqResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqRespToJson(this);
  }
}

abstract class FaqResp implements FaqResponse {
  const factory FaqResp(@JsonKey(name: "faq") FaqItemResponse? faq) = _$FaqResp;

  factory FaqResp.fromJson(Map<String, dynamic> json) = _$FaqResp.fromJson;

  @override

  /// Faq
  @JsonKey(name: "faq")
  FaqItemResponse? get faq => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FaqRespCopyWith<FaqResp> get copyWith => throw _privateConstructorUsedError;
}
