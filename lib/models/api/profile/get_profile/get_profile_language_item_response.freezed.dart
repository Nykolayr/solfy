// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_profile_language_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetProfileLanguageItemResponse _$GetProfileLanguageItemResponseFromJson(
    Map<String, dynamic> json) {
  return LanguageItem.fromJson(json);
}

/// @nodoc
class _$GetProfileLanguageItemResponseTearOff {
  const _$GetProfileLanguageItemResponseTearOff();

  LanguageItem call(
      @JsonKey(name: "id") String? id, @JsonKey(name: "name") String? value) {
    return LanguageItem(
      id,
      value,
    );
  }

  GetProfileLanguageItemResponse fromJson(Map<String, Object> json) {
    return GetProfileLanguageItemResponse.fromJson(json);
  }
}

/// @nodoc
const $GetProfileLanguageItemResponse =
    _$GetProfileLanguageItemResponseTearOff();

/// @nodoc
mixin _$GetProfileLanguageItemResponse {
  /// Идентификатор
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;

  /// Значение
  @JsonKey(name: "name")
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProfileLanguageItemResponseCopyWith<GetProfileLanguageItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileLanguageItemResponseCopyWith<$Res> {
  factory $GetProfileLanguageItemResponseCopyWith(
          GetProfileLanguageItemResponse value,
          $Res Function(GetProfileLanguageItemResponse) then) =
      _$GetProfileLanguageItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String? id, @JsonKey(name: "name") String? value});
}

/// @nodoc
class _$GetProfileLanguageItemResponseCopyWithImpl<$Res>
    implements $GetProfileLanguageItemResponseCopyWith<$Res> {
  _$GetProfileLanguageItemResponseCopyWithImpl(this._value, this._then);

  final GetProfileLanguageItemResponse _value;
  // ignore: unused_field
  final $Res Function(GetProfileLanguageItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $LanguageItemCopyWith<$Res>
    implements $GetProfileLanguageItemResponseCopyWith<$Res> {
  factory $LanguageItemCopyWith(
          LanguageItem value, $Res Function(LanguageItem) then) =
      _$LanguageItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String? id, @JsonKey(name: "name") String? value});
}

/// @nodoc
class _$LanguageItemCopyWithImpl<$Res>
    extends _$GetProfileLanguageItemResponseCopyWithImpl<$Res>
    implements $LanguageItemCopyWith<$Res> {
  _$LanguageItemCopyWithImpl(
      LanguageItem _value, $Res Function(LanguageItem) _then)
      : super(_value, (v) => _then(v as LanguageItem));

  @override
  LanguageItem get _value => super._value as LanguageItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(LanguageItem(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageItem implements LanguageItem {
  const _$LanguageItem(
      @JsonKey(name: "id") this.id, @JsonKey(name: "name") this.value);

  factory _$LanguageItem.fromJson(Map<String, dynamic> json) =>
      _$$LanguageItemFromJson(json);

  @override

  /// Идентификатор
  @JsonKey(name: "id")
  final String? id;
  @override

  /// Значение
  @JsonKey(name: "name")
  final String? value;

  @override
  String toString() {
    return 'GetProfileLanguageItemResponse(id: $id, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LanguageItem &&
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
  $LanguageItemCopyWith<LanguageItem> get copyWith =>
      _$LanguageItemCopyWithImpl<LanguageItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageItemToJson(this);
  }
}

abstract class LanguageItem implements GetProfileLanguageItemResponse {
  const factory LanguageItem(@JsonKey(name: "id") String? id,
      @JsonKey(name: "name") String? value) = _$LanguageItem;

  factory LanguageItem.fromJson(Map<String, dynamic> json) =
      _$LanguageItem.fromJson;

  @override

  /// Идентификатор
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @override

  /// Значение
  @JsonKey(name: "name")
  String? get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LanguageItemCopyWith<LanguageItem> get copyWith =>
      throw _privateConstructorUsedError;
}
