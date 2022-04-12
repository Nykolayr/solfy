// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_settings_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetSettingsResponse _$GetSettingsResponseFromJson(Map<String, dynamic> json) {
  return GetSettingsResp.fromJson(json);
}

/// @nodoc
class _$GetSettingsResponseTearOff {
  const _$GetSettingsResponseTearOff();

  GetSettingsResp call(
      @JsonKey(name: "settings") GetSettingsSettingsItemResponse? settings) {
    return GetSettingsResp(
      settings,
    );
  }

  GetSettingsResponse fromJson(Map<String, Object> json) {
    return GetSettingsResponse.fromJson(json);
  }
}

/// @nodoc
const $GetSettingsResponse = _$GetSettingsResponseTearOff();

/// @nodoc
mixin _$GetSettingsResponse {
  /// Настройки
  @JsonKey(name: "settings")
  GetSettingsSettingsItemResponse? get settings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSettingsResponseCopyWith<GetSettingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSettingsResponseCopyWith<$Res> {
  factory $GetSettingsResponseCopyWith(
          GetSettingsResponse value, $Res Function(GetSettingsResponse) then) =
      _$GetSettingsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "settings") GetSettingsSettingsItemResponse? settings});

  $GetSettingsSettingsItemResponseCopyWith<$Res>? get settings;
}

/// @nodoc
class _$GetSettingsResponseCopyWithImpl<$Res>
    implements $GetSettingsResponseCopyWith<$Res> {
  _$GetSettingsResponseCopyWithImpl(this._value, this._then);

  final GetSettingsResponse _value;
  // ignore: unused_field
  final $Res Function(GetSettingsResponse) _then;

  @override
  $Res call({
    Object? settings = freezed,
  }) {
    return _then(_value.copyWith(
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as GetSettingsSettingsItemResponse?,
    ));
  }

  @override
  $GetSettingsSettingsItemResponseCopyWith<$Res>? get settings {
    if (_value.settings == null) {
      return null;
    }

    return $GetSettingsSettingsItemResponseCopyWith<$Res>(_value.settings!,
        (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc
abstract class $GetSettingsRespCopyWith<$Res>
    implements $GetSettingsResponseCopyWith<$Res> {
  factory $GetSettingsRespCopyWith(
          GetSettingsResp value, $Res Function(GetSettingsResp) then) =
      _$GetSettingsRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "settings") GetSettingsSettingsItemResponse? settings});

  @override
  $GetSettingsSettingsItemResponseCopyWith<$Res>? get settings;
}

/// @nodoc
class _$GetSettingsRespCopyWithImpl<$Res>
    extends _$GetSettingsResponseCopyWithImpl<$Res>
    implements $GetSettingsRespCopyWith<$Res> {
  _$GetSettingsRespCopyWithImpl(
      GetSettingsResp _value, $Res Function(GetSettingsResp) _then)
      : super(_value, (v) => _then(v as GetSettingsResp));

  @override
  GetSettingsResp get _value => super._value as GetSettingsResp;

  @override
  $Res call({
    Object? settings = freezed,
  }) {
    return _then(GetSettingsResp(
      settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as GetSettingsSettingsItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetSettingsResp implements GetSettingsResp {
  const _$GetSettingsResp(@JsonKey(name: "settings") this.settings);

  factory _$GetSettingsResp.fromJson(Map<String, dynamic> json) =>
      _$$GetSettingsRespFromJson(json);

  @override

  /// Настройки
  @JsonKey(name: "settings")
  final GetSettingsSettingsItemResponse? settings;

  @override
  String toString() {
    return 'GetSettingsResponse(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSettingsResp &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(settings);

  @JsonKey(ignore: true)
  @override
  $GetSettingsRespCopyWith<GetSettingsResp> get copyWith =>
      _$GetSettingsRespCopyWithImpl<GetSettingsResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetSettingsRespToJson(this);
  }
}

abstract class GetSettingsResp implements GetSettingsResponse {
  const factory GetSettingsResp(
      @JsonKey(name: "settings")
          GetSettingsSettingsItemResponse? settings) = _$GetSettingsResp;

  factory GetSettingsResp.fromJson(Map<String, dynamic> json) =
      _$GetSettingsResp.fromJson;

  @override

  /// Настройки
  @JsonKey(name: "settings")
  GetSettingsSettingsItemResponse? get settings =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetSettingsRespCopyWith<GetSettingsResp> get copyWith =>
      throw _privateConstructorUsedError;
}
