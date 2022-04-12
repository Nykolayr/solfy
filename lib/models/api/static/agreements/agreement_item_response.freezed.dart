// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agreement_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgreementItemResponse _$AgreementItemResponseFromJson(
    Map<String, dynamic> json) {
  return Agreement.fromJson(json);
}

/// @nodoc
class _$AgreementItemResponseTearOff {
  const _$AgreementItemResponseTearOff();

  Agreement call(@JsonKey(name: "text") String? text) {
    return Agreement(
      text,
    );
  }

  AgreementItemResponse fromJson(Map<String, Object> json) {
    return AgreementItemResponse.fromJson(json);
  }
}

/// @nodoc
const $AgreementItemResponse = _$AgreementItemResponseTearOff();

/// @nodoc
mixin _$AgreementItemResponse {
  /// Текст соглашения
  @JsonKey(name: "text")
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementItemResponseCopyWith<AgreementItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementItemResponseCopyWith<$Res> {
  factory $AgreementItemResponseCopyWith(AgreementItemResponse value,
          $Res Function(AgreementItemResponse) then) =
      _$AgreementItemResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "text") String? text});
}

/// @nodoc
class _$AgreementItemResponseCopyWithImpl<$Res>
    implements $AgreementItemResponseCopyWith<$Res> {
  _$AgreementItemResponseCopyWithImpl(this._value, this._then);

  final AgreementItemResponse _value;
  // ignore: unused_field
  final $Res Function(AgreementItemResponse) _then;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $AgreementCopyWith<$Res>
    implements $AgreementItemResponseCopyWith<$Res> {
  factory $AgreementCopyWith(Agreement value, $Res Function(Agreement) then) =
      _$AgreementCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "text") String? text});
}

/// @nodoc
class _$AgreementCopyWithImpl<$Res>
    extends _$AgreementItemResponseCopyWithImpl<$Res>
    implements $AgreementCopyWith<$Res> {
  _$AgreementCopyWithImpl(Agreement _value, $Res Function(Agreement) _then)
      : super(_value, (v) => _then(v as Agreement));

  @override
  Agreement get _value => super._value as Agreement;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(Agreement(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Agreement implements Agreement {
  const _$Agreement(@JsonKey(name: "text") this.text);

  factory _$Agreement.fromJson(Map<String, dynamic> json) =>
      _$$AgreementFromJson(json);

  @override

  /// Текст соглашения
  @JsonKey(name: "text")
  final String? text;

  @override
  String toString() {
    return 'AgreementItemResponse(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Agreement &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $AgreementCopyWith<Agreement> get copyWith =>
      _$AgreementCopyWithImpl<Agreement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementToJson(this);
  }
}

abstract class Agreement implements AgreementItemResponse {
  const factory Agreement(@JsonKey(name: "text") String? text) = _$Agreement;

  factory Agreement.fromJson(Map<String, dynamic> json) = _$Agreement.fromJson;

  @override

  /// Текст соглашения
  @JsonKey(name: "text")
  String? get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AgreementCopyWith<Agreement> get copyWith =>
      throw _privateConstructorUsedError;
}
