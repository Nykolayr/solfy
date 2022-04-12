// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dictionaries_dictionary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DictionariesDictionaryResponse _$DictionariesDictionaryResponseFromJson(
    Map<String, dynamic> json) {
  return DictionaryResponse.fromJson(json);
}

/// @nodoc
class _$DictionariesDictionaryResponseTearOff {
  const _$DictionariesDictionaryResponseTearOff();

  DictionaryResponse call(
      @JsonKey(name: "search")
          bool? search,
      @JsonKey(name: "items")
          List<DictionariesDictionaryItemResponse>? dictionaryItems) {
    return DictionaryResponse(
      search,
      dictionaryItems,
    );
  }

  DictionariesDictionaryResponse fromJson(Map<String, Object> json) {
    return DictionariesDictionaryResponse.fromJson(json);
  }
}

/// @nodoc
const $DictionariesDictionaryResponse =
    _$DictionariesDictionaryResponseTearOff();

/// @nodoc
mixin _$DictionariesDictionaryResponse {
  /// Поиск
  @JsonKey(name: "search")
  bool? get search => throw _privateConstructorUsedError;

  /// Записи словаря
  @JsonKey(name: "items")
  List<DictionariesDictionaryItemResponse>? get dictionaryItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionariesDictionaryResponseCopyWith<DictionariesDictionaryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionariesDictionaryResponseCopyWith<$Res> {
  factory $DictionariesDictionaryResponseCopyWith(
          DictionariesDictionaryResponse value,
          $Res Function(DictionariesDictionaryResponse) then) =
      _$DictionariesDictionaryResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "search")
          bool? search,
      @JsonKey(name: "items")
          List<DictionariesDictionaryItemResponse>? dictionaryItems});
}

/// @nodoc
class _$DictionariesDictionaryResponseCopyWithImpl<$Res>
    implements $DictionariesDictionaryResponseCopyWith<$Res> {
  _$DictionariesDictionaryResponseCopyWithImpl(this._value, this._then);

  final DictionariesDictionaryResponse _value;
  // ignore: unused_field
  final $Res Function(DictionariesDictionaryResponse) _then;

  @override
  $Res call({
    Object? search = freezed,
    Object? dictionaryItems = freezed,
  }) {
    return _then(_value.copyWith(
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as bool?,
      dictionaryItems: dictionaryItems == freezed
          ? _value.dictionaryItems
          : dictionaryItems // ignore: cast_nullable_to_non_nullable
              as List<DictionariesDictionaryItemResponse>?,
    ));
  }
}

/// @nodoc
abstract class $DictionaryResponseCopyWith<$Res>
    implements $DictionariesDictionaryResponseCopyWith<$Res> {
  factory $DictionaryResponseCopyWith(
          DictionaryResponse value, $Res Function(DictionaryResponse) then) =
      _$DictionaryResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "search")
          bool? search,
      @JsonKey(name: "items")
          List<DictionariesDictionaryItemResponse>? dictionaryItems});
}

/// @nodoc
class _$DictionaryResponseCopyWithImpl<$Res>
    extends _$DictionariesDictionaryResponseCopyWithImpl<$Res>
    implements $DictionaryResponseCopyWith<$Res> {
  _$DictionaryResponseCopyWithImpl(
      DictionaryResponse _value, $Res Function(DictionaryResponse) _then)
      : super(_value, (v) => _then(v as DictionaryResponse));

  @override
  DictionaryResponse get _value => super._value as DictionaryResponse;

  @override
  $Res call({
    Object? search = freezed,
    Object? dictionaryItems = freezed,
  }) {
    return _then(DictionaryResponse(
      search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as bool?,
      dictionaryItems == freezed
          ? _value.dictionaryItems
          : dictionaryItems // ignore: cast_nullable_to_non_nullable
              as List<DictionariesDictionaryItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DictionaryResponse implements DictionaryResponse {
  const _$DictionaryResponse(@JsonKey(name: "search") this.search,
      @JsonKey(name: "items") this.dictionaryItems);

  factory _$DictionaryResponse.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryResponseFromJson(json);

  @override

  /// Поиск
  @JsonKey(name: "search")
  final bool? search;
  @override

  /// Записи словаря
  @JsonKey(name: "items")
  final List<DictionariesDictionaryItemResponse>? dictionaryItems;

  @override
  String toString() {
    return 'DictionariesDictionaryResponse(search: $search, dictionaryItems: $dictionaryItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DictionaryResponse &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.dictionaryItems, dictionaryItems) ||
                const DeepCollectionEquality()
                    .equals(other.dictionaryItems, dictionaryItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(dictionaryItems);

  @JsonKey(ignore: true)
  @override
  $DictionaryResponseCopyWith<DictionaryResponse> get copyWith =>
      _$DictionaryResponseCopyWithImpl<DictionaryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryResponseToJson(this);
  }
}

abstract class DictionaryResponse implements DictionariesDictionaryResponse {
  const factory DictionaryResponse(
          @JsonKey(name: "search")
              bool? search,
          @JsonKey(name: "items")
              List<DictionariesDictionaryItemResponse>? dictionaryItems) =
      _$DictionaryResponse;

  factory DictionaryResponse.fromJson(Map<String, dynamic> json) =
      _$DictionaryResponse.fromJson;

  @override

  /// Поиск
  @JsonKey(name: "search")
  bool? get search => throw _privateConstructorUsedError;
  @override

  /// Записи словаря
  @JsonKey(name: "items")
  List<DictionariesDictionaryItemResponse>? get dictionaryItems =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DictionaryResponseCopyWith<DictionaryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
