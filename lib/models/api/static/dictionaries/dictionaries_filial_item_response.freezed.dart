// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dictionaries_filial_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DictionariesFilialItemResponse _$DictionariesFilialItemResponseFromJson(
    Map<String, dynamic> json) {
  return Filial.fromJson(json);
}

/// @nodoc
class _$DictionariesFilialItemResponseTearOff {
  const _$DictionariesFilialItemResponseTearOff();

  Filial call(
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "value") String? value,
      @JsonKey(name: "hint") String? hint,
      @JsonKey(name: "geo") DictionariesFilialGeoItemResponse? geo) {
    return Filial(
      id,
      value,
      hint,
      geo,
    );
  }

  DictionariesFilialItemResponse fromJson(Map<String, Object> json) {
    return DictionariesFilialItemResponse.fromJson(json);
  }
}

/// @nodoc
const $DictionariesFilialItemResponse =
    _$DictionariesFilialItemResponseTearOff();

/// @nodoc
mixin _$DictionariesFilialItemResponse {
  /// Идентификатор филиала
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Название филиала
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;

  /// Адрес филиала
  @JsonKey(name: "hint")
  String? get hint => throw _privateConstructorUsedError;

  /// Гео филиала
  @JsonKey(name: "geo")
  DictionariesFilialGeoItemResponse? get geo =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionariesFilialItemResponseCopyWith<DictionariesFilialItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionariesFilialItemResponseCopyWith<$Res> {
  factory $DictionariesFilialItemResponseCopyWith(
          DictionariesFilialItemResponse value,
          $Res Function(DictionariesFilialItemResponse) then) =
      _$DictionariesFilialItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "value") String? value,
      @JsonKey(name: "hint") String? hint,
      @JsonKey(name: "geo") DictionariesFilialGeoItemResponse? geo});

  $DictionariesFilialGeoItemResponseCopyWith<$Res>? get geo;
}

/// @nodoc
class _$DictionariesFilialItemResponseCopyWithImpl<$Res>
    implements $DictionariesFilialItemResponseCopyWith<$Res> {
  _$DictionariesFilialItemResponseCopyWithImpl(this._value, this._then);

  final DictionariesFilialItemResponse _value;
  // ignore: unused_field
  final $Res Function(DictionariesFilialItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? hint = freezed,
    Object? geo = freezed,
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
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as DictionariesFilialGeoItemResponse?,
    ));
  }

  @override
  $DictionariesFilialGeoItemResponseCopyWith<$Res>? get geo {
    if (_value.geo == null) {
      return null;
    }

    return $DictionariesFilialGeoItemResponseCopyWith<$Res>(_value.geo!,
        (value) {
      return _then(_value.copyWith(geo: value));
    });
  }
}

/// @nodoc
abstract class $FilialCopyWith<$Res>
    implements $DictionariesFilialItemResponseCopyWith<$Res> {
  factory $FilialCopyWith(Filial value, $Res Function(Filial) then) =
      _$FilialCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "value") String? value,
      @JsonKey(name: "hint") String? hint,
      @JsonKey(name: "geo") DictionariesFilialGeoItemResponse? geo});

  @override
  $DictionariesFilialGeoItemResponseCopyWith<$Res>? get geo;
}

/// @nodoc
class _$FilialCopyWithImpl<$Res>
    extends _$DictionariesFilialItemResponseCopyWithImpl<$Res>
    implements $FilialCopyWith<$Res> {
  _$FilialCopyWithImpl(Filial _value, $Res Function(Filial) _then)
      : super(_value, (v) => _then(v as Filial));

  @override
  Filial get _value => super._value as Filial;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? hint = freezed,
    Object? geo = freezed,
  }) {
    return _then(Filial(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as DictionariesFilialGeoItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Filial implements Filial {
  const _$Filial(
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "value") this.value,
      @JsonKey(name: "hint") this.hint,
      @JsonKey(name: "geo") this.geo);

  factory _$Filial.fromJson(Map<String, dynamic> json) =>
      _$$FilialFromJson(json);

  @override

  /// Идентификатор филиала
  @JsonKey(name: "id")
  final int? id;
  @override

  /// Название филиала
  @JsonKey(name: "value")
  final String? value;
  @override

  /// Адрес филиала
  @JsonKey(name: "hint")
  final String? hint;
  @override

  /// Гео филиала
  @JsonKey(name: "geo")
  final DictionariesFilialGeoItemResponse? geo;

  @override
  String toString() {
    return 'DictionariesFilialItemResponse(id: $id, value: $value, hint: $hint, geo: $geo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Filial &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.hint, hint) ||
                const DeepCollectionEquality().equals(other.hint, hint)) &&
            (identical(other.geo, geo) ||
                const DeepCollectionEquality().equals(other.geo, geo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(hint) ^
      const DeepCollectionEquality().hash(geo);

  @JsonKey(ignore: true)
  @override
  $FilialCopyWith<Filial> get copyWith =>
      _$FilialCopyWithImpl<Filial>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilialToJson(this);
  }
}

abstract class Filial implements DictionariesFilialItemResponse {
  const factory Filial(
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "value") String? value,
      @JsonKey(name: "hint") String? hint,
      @JsonKey(name: "geo") DictionariesFilialGeoItemResponse? geo) = _$Filial;

  factory Filial.fromJson(Map<String, dynamic> json) = _$Filial.fromJson;

  @override

  /// Идентификатор филиала
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override

  /// Название филиала
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;
  @override

  /// Адрес филиала
  @JsonKey(name: "hint")
  String? get hint => throw _privateConstructorUsedError;
  @override

  /// Гео филиала
  @JsonKey(name: "geo")
  DictionariesFilialGeoItemResponse? get geo =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FilialCopyWith<Filial> get copyWith => throw _privateConstructorUsedError;
}
