// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'faq_group_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FaqGroupItemResponse _$FaqGroupItemResponseFromJson(Map<String, dynamic> json) {
  return GroupItem.fromJson(json);
}

/// @nodoc
class _$FaqGroupItemResponseTearOff {
  const _$FaqGroupItemResponseTearOff();

  GroupItem call(
      @JsonKey(name: "id") int? id, @JsonKey(name: "title") String? title) {
    return GroupItem(
      id,
      title,
    );
  }

  FaqGroupItemResponse fromJson(Map<String, Object> json) {
    return FaqGroupItemResponse.fromJson(json);
  }
}

/// @nodoc
const $FaqGroupItemResponse = _$FaqGroupItemResponseTearOff();

/// @nodoc
mixin _$FaqGroupItemResponse {
  /// Идентификатор группы
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  /// Заголовок группы
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqGroupItemResponseCopyWith<FaqGroupItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqGroupItemResponseCopyWith<$Res> {
  factory $FaqGroupItemResponseCopyWith(FaqGroupItemResponse value,
          $Res Function(FaqGroupItemResponse) then) =
      _$FaqGroupItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "title") String? title});
}

/// @nodoc
class _$FaqGroupItemResponseCopyWithImpl<$Res>
    implements $FaqGroupItemResponseCopyWith<$Res> {
  _$FaqGroupItemResponseCopyWithImpl(this._value, this._then);

  final FaqGroupItemResponse _value;
  // ignore: unused_field
  final $Res Function(FaqGroupItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $GroupItemCopyWith<$Res>
    implements $FaqGroupItemResponseCopyWith<$Res> {
  factory $GroupItemCopyWith(GroupItem value, $Res Function(GroupItem) then) =
      _$GroupItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "title") String? title});
}

/// @nodoc
class _$GroupItemCopyWithImpl<$Res>
    extends _$FaqGroupItemResponseCopyWithImpl<$Res>
    implements $GroupItemCopyWith<$Res> {
  _$GroupItemCopyWithImpl(GroupItem _value, $Res Function(GroupItem) _then)
      : super(_value, (v) => _then(v as GroupItem));

  @override
  GroupItem get _value => super._value as GroupItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(GroupItem(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupItem implements GroupItem {
  const _$GroupItem(
      @JsonKey(name: "id") this.id, @JsonKey(name: "title") this.title);

  factory _$GroupItem.fromJson(Map<String, dynamic> json) =>
      _$$GroupItemFromJson(json);

  @override

  /// Идентификатор группы
  @JsonKey(name: "id")
  final int? id;
  @override

  /// Заголовок группы
  @JsonKey(name: "title")
  final String? title;

  @override
  String toString() {
    return 'FaqGroupItemResponse(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GroupItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  $GroupItemCopyWith<GroupItem> get copyWith =>
      _$GroupItemCopyWithImpl<GroupItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupItemToJson(this);
  }
}

abstract class GroupItem implements FaqGroupItemResponse {
  const factory GroupItem(
          @JsonKey(name: "id") int? id, @JsonKey(name: "title") String? title) =
      _$GroupItem;

  factory GroupItem.fromJson(Map<String, dynamic> json) = _$GroupItem.fromJson;

  @override

  /// Идентификатор группы
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override

  /// Заголовок группы
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GroupItemCopyWith<GroupItem> get copyWith =>
      throw _privateConstructorUsedError;
}
