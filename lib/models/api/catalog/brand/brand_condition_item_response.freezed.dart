// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brand_condition_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandConditionItemResponse _$BrandConditionItemResponseFromJson(
    Map<String, dynamic> json) {
  return BrandConditionItem.fromJson(json);
}

/// @nodoc
class _$BrandConditionItemResponseTearOff {
  const _$BrandConditionItemResponseTearOff();

  BrandConditionItem call(@JsonKey(name: "title") String? title,
      @JsonKey(name: "term") String? term) {
    return BrandConditionItem(
      title,
      term,
    );
  }

  BrandConditionItemResponse fromJson(Map<String, Object> json) {
    return BrandConditionItemResponse.fromJson(json);
  }
}

/// @nodoc
const $BrandConditionItemResponse = _$BrandConditionItemResponseTearOff();

/// @nodoc
mixin _$BrandConditionItemResponse {
  /// Заголовок срока рассрочки
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  /// Срок рассрочки
  @JsonKey(name: "term")
  String? get term => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandConditionItemResponseCopyWith<BrandConditionItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandConditionItemResponseCopyWith<$Res> {
  factory $BrandConditionItemResponseCopyWith(BrandConditionItemResponse value,
          $Res Function(BrandConditionItemResponse) then) =
      _$BrandConditionItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "term") String? term});
}

/// @nodoc
class _$BrandConditionItemResponseCopyWithImpl<$Res>
    implements $BrandConditionItemResponseCopyWith<$Res> {
  _$BrandConditionItemResponseCopyWithImpl(this._value, this._then);

  final BrandConditionItemResponse _value;
  // ignore: unused_field
  final $Res Function(BrandConditionItemResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? term = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      term: term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $BrandConditionItemCopyWith<$Res>
    implements $BrandConditionItemResponseCopyWith<$Res> {
  factory $BrandConditionItemCopyWith(
          BrandConditionItem value, $Res Function(BrandConditionItem) then) =
      _$BrandConditionItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "term") String? term});
}

/// @nodoc
class _$BrandConditionItemCopyWithImpl<$Res>
    extends _$BrandConditionItemResponseCopyWithImpl<$Res>
    implements $BrandConditionItemCopyWith<$Res> {
  _$BrandConditionItemCopyWithImpl(
      BrandConditionItem _value, $Res Function(BrandConditionItem) _then)
      : super(_value, (v) => _then(v as BrandConditionItem));

  @override
  BrandConditionItem get _value => super._value as BrandConditionItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? term = freezed,
  }) {
    return _then(BrandConditionItem(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandConditionItem implements BrandConditionItem {
  const _$BrandConditionItem(
      @JsonKey(name: "title") this.title, @JsonKey(name: "term") this.term);

  factory _$BrandConditionItem.fromJson(Map<String, dynamic> json) =>
      _$$BrandConditionItemFromJson(json);

  @override

  /// Заголовок срока рассрочки
  @JsonKey(name: "title")
  final String? title;
  @override

  /// Срок рассрочки
  @JsonKey(name: "term")
  final String? term;

  @override
  String toString() {
    return 'BrandConditionItemResponse(title: $title, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BrandConditionItem &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(term);

  @JsonKey(ignore: true)
  @override
  $BrandConditionItemCopyWith<BrandConditionItem> get copyWith =>
      _$BrandConditionItemCopyWithImpl<BrandConditionItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandConditionItemToJson(this);
  }
}

abstract class BrandConditionItem implements BrandConditionItemResponse {
  const factory BrandConditionItem(@JsonKey(name: "title") String? title,
      @JsonKey(name: "term") String? term) = _$BrandConditionItem;

  factory BrandConditionItem.fromJson(Map<String, dynamic> json) =
      _$BrandConditionItem.fromJson;

  @override

  /// Заголовок срока рассрочки
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @override

  /// Срок рассрочки
  @JsonKey(name: "term")
  String? get term => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BrandConditionItemCopyWith<BrandConditionItem> get copyWith =>
      throw _privateConstructorUsedError;
}
