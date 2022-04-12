// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agreement_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgreementResponse _$AgreementResponseFromJson(Map<String, dynamic> json) {
  return AgreementSuccessResponse.fromJson(json);
}

/// @nodoc
class _$AgreementResponseTearOff {
  const _$AgreementResponseTearOff();

  AgreementSuccessResponse call(
      @JsonKey(name: "agreement") AgreementItemResponse? agreement) {
    return AgreementSuccessResponse(
      agreement,
    );
  }

  AgreementResponse fromJson(Map<String, Object> json) {
    return AgreementResponse.fromJson(json);
  }
}

/// @nodoc
const $AgreementResponse = _$AgreementResponseTearOff();

/// @nodoc
mixin _$AgreementResponse {
  /// Соглашение
  @JsonKey(name: "agreement")
  AgreementItemResponse? get agreement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementResponseCopyWith<AgreementResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementResponseCopyWith<$Res> {
  factory $AgreementResponseCopyWith(
          AgreementResponse value, $Res Function(AgreementResponse) then) =
      _$AgreementResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "agreement") AgreementItemResponse? agreement});

  $AgreementItemResponseCopyWith<$Res>? get agreement;
}

/// @nodoc
class _$AgreementResponseCopyWithImpl<$Res>
    implements $AgreementResponseCopyWith<$Res> {
  _$AgreementResponseCopyWithImpl(this._value, this._then);

  final AgreementResponse _value;
  // ignore: unused_field
  final $Res Function(AgreementResponse) _then;

  @override
  $Res call({
    Object? agreement = freezed,
  }) {
    return _then(_value.copyWith(
      agreement: agreement == freezed
          ? _value.agreement
          : agreement // ignore: cast_nullable_to_non_nullable
              as AgreementItemResponse?,
    ));
  }

  @override
  $AgreementItemResponseCopyWith<$Res>? get agreement {
    if (_value.agreement == null) {
      return null;
    }

    return $AgreementItemResponseCopyWith<$Res>(_value.agreement!, (value) {
      return _then(_value.copyWith(agreement: value));
    });
  }
}

/// @nodoc
abstract class $AgreementSuccessResponseCopyWith<$Res>
    implements $AgreementResponseCopyWith<$Res> {
  factory $AgreementSuccessResponseCopyWith(AgreementSuccessResponse value,
          $Res Function(AgreementSuccessResponse) then) =
      _$AgreementSuccessResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "agreement") AgreementItemResponse? agreement});

  @override
  $AgreementItemResponseCopyWith<$Res>? get agreement;
}

/// @nodoc
class _$AgreementSuccessResponseCopyWithImpl<$Res>
    extends _$AgreementResponseCopyWithImpl<$Res>
    implements $AgreementSuccessResponseCopyWith<$Res> {
  _$AgreementSuccessResponseCopyWithImpl(AgreementSuccessResponse _value,
      $Res Function(AgreementSuccessResponse) _then)
      : super(_value, (v) => _then(v as AgreementSuccessResponse));

  @override
  AgreementSuccessResponse get _value =>
      super._value as AgreementSuccessResponse;

  @override
  $Res call({
    Object? agreement = freezed,
  }) {
    return _then(AgreementSuccessResponse(
      agreement == freezed
          ? _value.agreement
          : agreement // ignore: cast_nullable_to_non_nullable
              as AgreementItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementSuccessResponse implements AgreementSuccessResponse {
  const _$AgreementSuccessResponse(@JsonKey(name: "agreement") this.agreement);

  factory _$AgreementSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$$AgreementSuccessResponseFromJson(json);

  @override

  /// Соглашение
  @JsonKey(name: "agreement")
  final AgreementItemResponse? agreement;

  @override
  String toString() {
    return 'AgreementResponse(agreement: $agreement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AgreementSuccessResponse &&
            (identical(other.agreement, agreement) ||
                const DeepCollectionEquality()
                    .equals(other.agreement, agreement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(agreement);

  @JsonKey(ignore: true)
  @override
  $AgreementSuccessResponseCopyWith<AgreementSuccessResponse> get copyWith =>
      _$AgreementSuccessResponseCopyWithImpl<AgreementSuccessResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementSuccessResponseToJson(this);
  }
}

abstract class AgreementSuccessResponse implements AgreementResponse {
  const factory AgreementSuccessResponse(
          @JsonKey(name: "agreement") AgreementItemResponse? agreement) =
      _$AgreementSuccessResponse;

  factory AgreementSuccessResponse.fromJson(Map<String, dynamic> json) =
      _$AgreementSuccessResponse.fromJson;

  @override

  /// Соглашение
  @JsonKey(name: "agreement")
  AgreementItemResponse? get agreement => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AgreementSuccessResponseCopyWith<AgreementSuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
