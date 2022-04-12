// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_condition_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopConditionItemResponse _$ShopConditionItemResponseFromJson(
    Map<String, dynamic> json) {
  return ShopConditionItem.fromJson(json);
}

/// @nodoc
class _$ShopConditionItemResponseTearOff {
  const _$ShopConditionItemResponseTearOff();

  ShopConditionItem call(@JsonKey(name: "title") String? title,
      @JsonKey(name: "term") String? term) {
    return ShopConditionItem(
      title,
      term,
    );
  }

  ShopConditionItemResponse fromJson(Map<String, Object> json) {
    return ShopConditionItemResponse.fromJson(json);
  }
}

/// @nodoc
const $ShopConditionItemResponse = _$ShopConditionItemResponseTearOff();

/// @nodoc
mixin _$ShopConditionItemResponse {
  /// Заголовок срока рассрочки
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  /// Срок рассрочки
  @JsonKey(name: "term")
  String? get term => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopConditionItemResponseCopyWith<ShopConditionItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopConditionItemResponseCopyWith<$Res> {
  factory $ShopConditionItemResponseCopyWith(ShopConditionItemResponse value,
          $Res Function(ShopConditionItemResponse) then) =
      _$ShopConditionItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "term") String? term});
}

/// @nodoc
class _$ShopConditionItemResponseCopyWithImpl<$Res>
    implements $ShopConditionItemResponseCopyWith<$Res> {
  _$ShopConditionItemResponseCopyWithImpl(this._value, this._then);

  final ShopConditionItemResponse _value;
  // ignore: unused_field
  final $Res Function(ShopConditionItemResponse) _then;

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
abstract class $ShopConditionItemCopyWith<$Res>
    implements $ShopConditionItemResponseCopyWith<$Res> {
  factory $ShopConditionItemCopyWith(
          ShopConditionItem value, $Res Function(ShopConditionItem) then) =
      _$ShopConditionItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "term") String? term});
}

/// @nodoc
class _$ShopConditionItemCopyWithImpl<$Res>
    extends _$ShopConditionItemResponseCopyWithImpl<$Res>
    implements $ShopConditionItemCopyWith<$Res> {
  _$ShopConditionItemCopyWithImpl(
      ShopConditionItem _value, $Res Function(ShopConditionItem) _then)
      : super(_value, (v) => _then(v as ShopConditionItem));

  @override
  ShopConditionItem get _value => super._value as ShopConditionItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? term = freezed,
  }) {
    return _then(ShopConditionItem(
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
class _$ShopConditionItem implements ShopConditionItem {
  const _$ShopConditionItem(
      @JsonKey(name: "title") this.title, @JsonKey(name: "term") this.term);

  factory _$ShopConditionItem.fromJson(Map<String, dynamic> json) =>
      _$$ShopConditionItemFromJson(json);

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
    return 'ShopConditionItemResponse(title: $title, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShopConditionItem &&
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
  $ShopConditionItemCopyWith<ShopConditionItem> get copyWith =>
      _$ShopConditionItemCopyWithImpl<ShopConditionItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopConditionItemToJson(this);
  }
}

abstract class ShopConditionItem implements ShopConditionItemResponse {
  const factory ShopConditionItem(@JsonKey(name: "title") String? title,
      @JsonKey(name: "term") String? term) = _$ShopConditionItem;

  factory ShopConditionItem.fromJson(Map<String, dynamic> json) =
      _$ShopConditionItem.fromJson;

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
  $ShopConditionItemCopyWith<ShopConditionItem> get copyWith =>
      throw _privateConstructorUsedError;
}
