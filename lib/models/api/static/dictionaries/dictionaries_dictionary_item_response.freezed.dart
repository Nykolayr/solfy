// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dictionaries_dictionary_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DictionariesDictionaryItemResponse _$DictionariesDictionaryItemResponseFromJson(
    Map<String, dynamic> json) {
  return DictionaryItem.fromJson(json);
}

/// @nodoc
class _$DictionariesDictionaryItemResponseTearOff {
  const _$DictionariesDictionaryItemResponseTearOff();

  DictionaryItem call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "value") String? value}) {
    return DictionaryItem(
      id: id,
      value: value,
    );
  }

  DictionariesDictionaryItemResponse fromJson(Map<String, Object> json) {
    return DictionariesDictionaryItemResponse.fromJson(json);
  }
}

/// @nodoc
const $DictionariesDictionaryItemResponse =
    _$DictionariesDictionaryItemResponseTearOff();

/// @nodoc
mixin _$DictionariesDictionaryItemResponse {
  /// Идентификатор записи
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Значение записи
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionariesDictionaryItemResponseCopyWith<
          DictionariesDictionaryItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionariesDictionaryItemResponseCopyWith<$Res> {
  factory $DictionariesDictionaryItemResponseCopyWith(
          DictionariesDictionaryItemResponse value,
          $Res Function(DictionariesDictionaryItemResponse) then) =
      _$DictionariesDictionaryItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "value") String? value});
}

/// @nodoc
class _$DictionariesDictionaryItemResponseCopyWithImpl<$Res>
    implements $DictionariesDictionaryItemResponseCopyWith<$Res> {
  _$DictionariesDictionaryItemResponseCopyWithImpl(this._value, this._then);

  final DictionariesDictionaryItemResponse _value;
  // ignore: unused_field
  final $Res Function(DictionariesDictionaryItemResponse) _then;

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
abstract class $DictionaryItemCopyWith<$Res>
    implements $DictionariesDictionaryItemResponseCopyWith<$Res> {
  factory $DictionaryItemCopyWith(
          DictionaryItem value, $Res Function(DictionaryItem) then) =
      _$DictionaryItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "value") String? value});
}

/// @nodoc
class _$DictionaryItemCopyWithImpl<$Res>
    extends _$DictionariesDictionaryItemResponseCopyWithImpl<$Res>
    implements $DictionaryItemCopyWith<$Res> {
  _$DictionaryItemCopyWithImpl(
      DictionaryItem _value, $Res Function(DictionaryItem) _then)
      : super(_value, (v) => _then(v as DictionaryItem));

  @override
  DictionaryItem get _value => super._value as DictionaryItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(DictionaryItem(
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
@JsonSerializable()
class _$DictionaryItem implements DictionaryItem {
  const _$DictionaryItem(
      {@JsonKey(name: "id") this.id, @JsonKey(name: "value") this.value});

  factory _$DictionaryItem.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryItemFromJson(json);

  @override

  /// Идентификатор записи
  @JsonKey(name: "id")
  final int? id;
  @override

  /// Значение записи
  @JsonKey(name: "value")
  final String? value;

  @override
  String toString() {
    return 'DictionariesDictionaryItemResponse(id: $id, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DictionaryItem &&
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
  $DictionaryItemCopyWith<DictionaryItem> get copyWith =>
      _$DictionaryItemCopyWithImpl<DictionaryItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryItemToJson(this);
  }
}

abstract class DictionaryItem implements DictionariesDictionaryItemResponse {
  const factory DictionaryItem(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "value") String? value}) = _$DictionaryItem;

  factory DictionaryItem.fromJson(Map<String, dynamic> json) =
      _$DictionaryItem.fromJson;

  @override

  /// Идентификатор записи
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override

  /// Значение записи
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DictionaryItemCopyWith<DictionaryItem> get copyWith =>
      throw _privateConstructorUsedError;
}
