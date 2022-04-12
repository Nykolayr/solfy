// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dictionaries_filial_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DictionariesFilialResponse _$DictionariesFilialResponseFromJson(
    Map<String, dynamic> json) {
  return FilialResponse.fromJson(json);
}

/// @nodoc
class _$DictionariesFilialResponseTearOff {
  const _$DictionariesFilialResponseTearOff();

  FilialResponse call(@JsonKey(name: "search") bool? search,
      @JsonKey(name: "items") List<DictionariesFilialItemResponse>? filials) {
    return FilialResponse(
      search,
      filials,
    );
  }

  DictionariesFilialResponse fromJson(Map<String, Object> json) {
    return DictionariesFilialResponse.fromJson(json);
  }
}

/// @nodoc
const $DictionariesFilialResponse = _$DictionariesFilialResponseTearOff();

/// @nodoc
mixin _$DictionariesFilialResponse {
  /// Поиск
  @JsonKey(name: "search")
  bool? get search => throw _privateConstructorUsedError;

  /// Филиалы
  @JsonKey(name: "items")
  List<DictionariesFilialItemResponse>? get filials =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionariesFilialResponseCopyWith<DictionariesFilialResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionariesFilialResponseCopyWith<$Res> {
  factory $DictionariesFilialResponseCopyWith(DictionariesFilialResponse value,
          $Res Function(DictionariesFilialResponse) then) =
      _$DictionariesFilialResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "search") bool? search,
      @JsonKey(name: "items") List<DictionariesFilialItemResponse>? filials});
}

/// @nodoc
class _$DictionariesFilialResponseCopyWithImpl<$Res>
    implements $DictionariesFilialResponseCopyWith<$Res> {
  _$DictionariesFilialResponseCopyWithImpl(this._value, this._then);

  final DictionariesFilialResponse _value;
  // ignore: unused_field
  final $Res Function(DictionariesFilialResponse) _then;

  @override
  $Res call({
    Object? search = freezed,
    Object? filials = freezed,
  }) {
    return _then(_value.copyWith(
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as bool?,
      filials: filials == freezed
          ? _value.filials
          : filials // ignore: cast_nullable_to_non_nullable
              as List<DictionariesFilialItemResponse>?,
    ));
  }
}

/// @nodoc
abstract class $FilialResponseCopyWith<$Res>
    implements $DictionariesFilialResponseCopyWith<$Res> {
  factory $FilialResponseCopyWith(
          FilialResponse value, $Res Function(FilialResponse) then) =
      _$FilialResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "search") bool? search,
      @JsonKey(name: "items") List<DictionariesFilialItemResponse>? filials});
}

/// @nodoc
class _$FilialResponseCopyWithImpl<$Res>
    extends _$DictionariesFilialResponseCopyWithImpl<$Res>
    implements $FilialResponseCopyWith<$Res> {
  _$FilialResponseCopyWithImpl(
      FilialResponse _value, $Res Function(FilialResponse) _then)
      : super(_value, (v) => _then(v as FilialResponse));

  @override
  FilialResponse get _value => super._value as FilialResponse;

  @override
  $Res call({
    Object? search = freezed,
    Object? filials = freezed,
  }) {
    return _then(FilialResponse(
      search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as bool?,
      filials == freezed
          ? _value.filials
          : filials // ignore: cast_nullable_to_non_nullable
              as List<DictionariesFilialItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilialResponse implements FilialResponse {
  const _$FilialResponse(@JsonKey(name: "search") this.search,
      @JsonKey(name: "items") this.filials);

  factory _$FilialResponse.fromJson(Map<String, dynamic> json) =>
      _$$FilialResponseFromJson(json);

  @override

  /// Поиск
  @JsonKey(name: "search")
  final bool? search;
  @override

  /// Филиалы
  @JsonKey(name: "items")
  final List<DictionariesFilialItemResponse>? filials;

  @override
  String toString() {
    return 'DictionariesFilialResponse(search: $search, filials: $filials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FilialResponse &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.filials, filials) ||
                const DeepCollectionEquality().equals(other.filials, filials)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(filials);

  @JsonKey(ignore: true)
  @override
  $FilialResponseCopyWith<FilialResponse> get copyWith =>
      _$FilialResponseCopyWithImpl<FilialResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilialResponseToJson(this);
  }
}

abstract class FilialResponse implements DictionariesFilialResponse {
  const factory FilialResponse(
      @JsonKey(name: "search")
          bool? search,
      @JsonKey(name: "items")
          List<DictionariesFilialItemResponse>? filials) = _$FilialResponse;

  factory FilialResponse.fromJson(Map<String, dynamic> json) =
      _$FilialResponse.fromJson;

  @override

  /// Поиск
  @JsonKey(name: "search")
  bool? get search => throw _privateConstructorUsedError;
  @override

  /// Филиалы
  @JsonKey(name: "items")
  List<DictionariesFilialItemResponse>? get filials =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FilialResponseCopyWith<FilialResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
