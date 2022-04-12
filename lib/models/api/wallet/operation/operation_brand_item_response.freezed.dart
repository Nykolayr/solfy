// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'operation_brand_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OperationBrandItemResponse _$OperationBrandItemResponseFromJson(
    Map<String, dynamic> json) {
  return BrandItem.fromJson(json);
}

/// @nodoc
class _$OperationBrandItemResponseTearOff {
  const _$OperationBrandItemResponseTearOff();

  BrandItem call(
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "color") String? color) {
    return BrandItem(
      id,
      name,
      color,
    );
  }

  OperationBrandItemResponse fromJson(Map<String, Object> json) {
    return OperationBrandItemResponse.fromJson(json);
  }
}

/// @nodoc
const $OperationBrandItemResponse = _$OperationBrandItemResponseTearOff();

/// @nodoc
mixin _$OperationBrandItemResponse {
  /// Идентификатор бренда
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Название бренда
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  /// Цвет бренда
  @JsonKey(name: "color")
  String? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationBrandItemResponseCopyWith<OperationBrandItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationBrandItemResponseCopyWith<$Res> {
  factory $OperationBrandItemResponseCopyWith(OperationBrandItemResponse value,
          $Res Function(OperationBrandItemResponse) then) =
      _$OperationBrandItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "color") String? color});
}

/// @nodoc
class _$OperationBrandItemResponseCopyWithImpl<$Res>
    implements $OperationBrandItemResponseCopyWith<$Res> {
  _$OperationBrandItemResponseCopyWithImpl(this._value, this._then);

  final OperationBrandItemResponse _value;
  // ignore: unused_field
  final $Res Function(OperationBrandItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $BrandItemCopyWith<$Res>
    implements $OperationBrandItemResponseCopyWith<$Res> {
  factory $BrandItemCopyWith(BrandItem value, $Res Function(BrandItem) then) =
      _$BrandItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "color") String? color});
}

/// @nodoc
class _$BrandItemCopyWithImpl<$Res>
    extends _$OperationBrandItemResponseCopyWithImpl<$Res>
    implements $BrandItemCopyWith<$Res> {
  _$BrandItemCopyWithImpl(BrandItem _value, $Res Function(BrandItem) _then)
      : super(_value, (v) => _then(v as BrandItem));

  @override
  BrandItem get _value => super._value as BrandItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
  }) {
    return _then(BrandItem(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandItem implements BrandItem {
  const _$BrandItem(@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name, @JsonKey(name: "color") this.color);

  factory _$BrandItem.fromJson(Map<String, dynamic> json) =>
      _$$BrandItemFromJson(json);

  @override

  /// Идентификатор бренда
  @JsonKey(name: "id")
  final int? id;
  @override

  /// Название бренда
  @JsonKey(name: "name")
  final String? name;
  @override

  /// Цвет бренда
  @JsonKey(name: "color")
  final String? color;

  @override
  String toString() {
    return 'OperationBrandItemResponse(id: $id, name: $name, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BrandItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  $BrandItemCopyWith<BrandItem> get copyWith =>
      _$BrandItemCopyWithImpl<BrandItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandItemToJson(this);
  }
}

abstract class BrandItem implements OperationBrandItemResponse {
  const factory BrandItem(
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "color") String? color) = _$BrandItem;

  factory BrandItem.fromJson(Map<String, dynamic> json) = _$BrandItem.fromJson;

  @override

  /// Идентификатор бренда
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override

  /// Название бренда
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @override

  /// Цвет бренда
  @JsonKey(name: "color")
  String? get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BrandItemCopyWith<BrandItem> get copyWith =>
      throw _privateConstructorUsedError;
}
