// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetProfileResponse _$GetProfileResponseFromJson(Map<String, dynamic> json) {
  return GetProfileResp.fromJson(json);
}

/// @nodoc
class _$GetProfileResponseTearOff {
  const _$GetProfileResponseTearOff();

  GetProfileResp call(
      @JsonKey(name: "profile") GetProfileItemResponse? profile) {
    return GetProfileResp(
      profile,
    );
  }

  GetProfileResponse fromJson(Map<String, Object> json) {
    return GetProfileResponse.fromJson(json);
  }
}

/// @nodoc
const $GetProfileResponse = _$GetProfileResponseTearOff();

/// @nodoc
mixin _$GetProfileResponse {
  /// Профиль
  @JsonKey(name: "profile")
  GetProfileItemResponse? get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProfileResponseCopyWith<GetProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileResponseCopyWith<$Res> {
  factory $GetProfileResponseCopyWith(
          GetProfileResponse value, $Res Function(GetProfileResponse) then) =
      _$GetProfileResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "profile") GetProfileItemResponse? profile});

  $GetProfileItemResponseCopyWith<$Res>? get profile;
}

/// @nodoc
class _$GetProfileResponseCopyWithImpl<$Res>
    implements $GetProfileResponseCopyWith<$Res> {
  _$GetProfileResponseCopyWithImpl(this._value, this._then);

  final GetProfileResponse _value;
  // ignore: unused_field
  final $Res Function(GetProfileResponse) _then;

  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as GetProfileItemResponse?,
    ));
  }

  @override
  $GetProfileItemResponseCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $GetProfileItemResponseCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
abstract class $GetProfileRespCopyWith<$Res>
    implements $GetProfileResponseCopyWith<$Res> {
  factory $GetProfileRespCopyWith(
          GetProfileResp value, $Res Function(GetProfileResp) then) =
      _$GetProfileRespCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "profile") GetProfileItemResponse? profile});

  @override
  $GetProfileItemResponseCopyWith<$Res>? get profile;
}

/// @nodoc
class _$GetProfileRespCopyWithImpl<$Res>
    extends _$GetProfileResponseCopyWithImpl<$Res>
    implements $GetProfileRespCopyWith<$Res> {
  _$GetProfileRespCopyWithImpl(
      GetProfileResp _value, $Res Function(GetProfileResp) _then)
      : super(_value, (v) => _then(v as GetProfileResp));

  @override
  GetProfileResp get _value => super._value as GetProfileResp;

  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(GetProfileResp(
      profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as GetProfileItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProfileResp implements GetProfileResp {
  const _$GetProfileResp(@JsonKey(name: "profile") this.profile);

  factory _$GetProfileResp.fromJson(Map<String, dynamic> json) =>
      _$$GetProfileRespFromJson(json);

  @override

  /// Профиль
  @JsonKey(name: "profile")
  final GetProfileItemResponse? profile;

  @override
  String toString() {
    return 'GetProfileResponse(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetProfileResp &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(other.profile, profile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(profile);

  @JsonKey(ignore: true)
  @override
  $GetProfileRespCopyWith<GetProfileResp> get copyWith =>
      _$GetProfileRespCopyWithImpl<GetProfileResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProfileRespToJson(this);
  }
}

abstract class GetProfileResp implements GetProfileResponse {
  const factory GetProfileResp(
          @JsonKey(name: "profile") GetProfileItemResponse? profile) =
      _$GetProfileResp;

  factory GetProfileResp.fromJson(Map<String, dynamic> json) =
      _$GetProfileResp.fromJson;

  @override

  /// Профиль
  @JsonKey(name: "profile")
  GetProfileItemResponse? get profile => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetProfileRespCopyWith<GetProfileResp> get copyWith =>
      throw _privateConstructorUsedError;
}
