// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_profile_city_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetProfileCityItemResponse _$GetProfileCityItemResponseFromJson(
    Map<String, dynamic> json) {
  return CityItem.fromJson(json);
}

/// @nodoc
class _$GetProfileCityItemResponseTearOff {
  const _$GetProfileCityItemResponseTearOff();

  CityItem call(
      @JsonKey(name: "id") int? id, @JsonKey(name: "name") String? value) {
    return CityItem(
      id,
      value,
    );
  }

  GetProfileCityItemResponse fromJson(Map<String, Object> json) {
    return GetProfileCityItemResponse.fromJson(json);
  }
}

/// @nodoc
const $GetProfileCityItemResponse = _$GetProfileCityItemResponseTearOff();

/// @nodoc
mixin _$GetProfileCityItemResponse {
  /// Идентификатор
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Значение
  @JsonKey(name: "name")
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProfileCityItemResponseCopyWith<GetProfileCityItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileCityItemResponseCopyWith<$Res> {
  factory $GetProfileCityItemResponseCopyWith(GetProfileCityItemResponse value,
          $Res Function(GetProfileCityItemResponse) then) =
      _$GetProfileCityItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? value});
}

/// @nodoc
class _$GetProfileCityItemResponseCopyWithImpl<$Res>
    implements $GetProfileCityItemResponseCopyWith<$Res> {
  _$GetProfileCityItemResponseCopyWithImpl(this._value, this._then);

  final GetProfileCityItemResponse _value;
  // ignore: unused_field
  final $Res Function(GetProfileCityItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $CityItemCopyWith<$Res>
    implements $GetProfileCityItemResponseCopyWith<$Res> {
  factory $CityItemCopyWith(CityItem value, $Res Function(CityItem) then) =
      _$CityItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? value});
}

/// @nodoc
class _$CityItemCopyWithImpl<$Res>
    extends _$GetProfileCityItemResponseCopyWithImpl<$Res>
    implements $CityItemCopyWith<$Res> {
  _$CityItemCopyWithImpl(CityItem _value, $Res Function(CityItem) _then)
      : super(_value, (v) => _then(v as CityItem));

  @override
  CityItem get _value => super._value as CityItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(CityItem(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityItem implements CityItem {
  const _$CityItem(
      @JsonKey(name: "id") this.id, @JsonKey(name: "name") this.value);

  factory _$CityItem.fromJson(Map<String, dynamic> json) =>
      _$$CityItemFromJson(json);

  @override

  /// Идентификатор
  @JsonKey(name: "id")
  final int? id;
  @override

  /// Значение
  @JsonKey(name: "name")
  final String? value;

  @override
  String toString() {
    return 'GetProfileCityItemResponse(id: $id, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CityItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $CityItemCopyWith<CityItem> get copyWith =>
      _$CityItemCopyWithImpl<CityItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityItemToJson(this);
  }
}

abstract class CityItem implements GetProfileCityItemResponse {
  const factory CityItem(
          @JsonKey(name: "id") int? id, @JsonKey(name: "name") String? value) =
      _$CityItem;

  factory CityItem.fromJson(Map<String, dynamic> json) = _$CityItem.fromJson;

  @override

  /// Идентификатор
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override

  /// Значение
  @JsonKey(name: "name")
  String? get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CityItemCopyWith<CityItem> get copyWith =>
      throw _privateConstructorUsedError;
}
