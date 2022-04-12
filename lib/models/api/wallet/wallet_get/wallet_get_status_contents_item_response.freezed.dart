// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_get_status_contents_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletGetStatusContentsItemResponse
    _$WalletGetStatusContentsItemResponseFromJson(Map<String, dynamic> json) {
  return StatusContentsItem.fromJson(json);
}

/// @nodoc
class _$WalletGetStatusContentsItemResponseTearOff {
  const _$WalletGetStatusContentsItemResponseTearOff();

  StatusContentsItem call(@JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description) {
    return StatusContentsItem(
      title,
      description,
    );
  }

  WalletGetStatusContentsItemResponse fromJson(Map<String, Object> json) {
    return WalletGetStatusContentsItemResponse.fromJson(json);
  }
}

/// @nodoc
const $WalletGetStatusContentsItemResponse =
    _$WalletGetStatusContentsItemResponseTearOff();

/// @nodoc
mixin _$WalletGetStatusContentsItemResponse {
  /// Заголовок
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  /// Описание
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletGetStatusContentsItemResponseCopyWith<
          WalletGetStatusContentsItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletGetStatusContentsItemResponseCopyWith<$Res> {
  factory $WalletGetStatusContentsItemResponseCopyWith(
          WalletGetStatusContentsItemResponse value,
          $Res Function(WalletGetStatusContentsItemResponse) then) =
      _$WalletGetStatusContentsItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class _$WalletGetStatusContentsItemResponseCopyWithImpl<$Res>
    implements $WalletGetStatusContentsItemResponseCopyWith<$Res> {
  _$WalletGetStatusContentsItemResponseCopyWithImpl(this._value, this._then);

  final WalletGetStatusContentsItemResponse _value;
  // ignore: unused_field
  final $Res Function(WalletGetStatusContentsItemResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $StatusContentsItemCopyWith<$Res>
    implements $WalletGetStatusContentsItemResponseCopyWith<$Res> {
  factory $StatusContentsItemCopyWith(
          StatusContentsItem value, $Res Function(StatusContentsItem) then) =
      _$StatusContentsItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class _$StatusContentsItemCopyWithImpl<$Res>
    extends _$WalletGetStatusContentsItemResponseCopyWithImpl<$Res>
    implements $StatusContentsItemCopyWith<$Res> {
  _$StatusContentsItemCopyWithImpl(
      StatusContentsItem _value, $Res Function(StatusContentsItem) _then)
      : super(_value, (v) => _then(v as StatusContentsItem));

  @override
  StatusContentsItem get _value => super._value as StatusContentsItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(StatusContentsItem(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusContentsItem implements StatusContentsItem {
  const _$StatusContentsItem(@JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description);

  factory _$StatusContentsItem.fromJson(Map<String, dynamic> json) =>
      _$$StatusContentsItemFromJson(json);

  @override

  /// Заголовок
  @JsonKey(name: "title")
  final String? title;
  @override

  /// Описание
  @JsonKey(name: "description")
  final String? description;

  @override
  String toString() {
    return 'WalletGetStatusContentsItemResponse(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusContentsItem &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $StatusContentsItemCopyWith<StatusContentsItem> get copyWith =>
      _$StatusContentsItemCopyWithImpl<StatusContentsItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusContentsItemToJson(this);
  }
}

abstract class StatusContentsItem
    implements WalletGetStatusContentsItemResponse {
  const factory StatusContentsItem(@JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description) = _$StatusContentsItem;

  factory StatusContentsItem.fromJson(Map<String, dynamic> json) =
      _$StatusContentsItem.fromJson;

  @override

  /// Заголовок
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @override

  /// Описание
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $StatusContentsItemCopyWith<StatusContentsItem> get copyWith =>
      throw _privateConstructorUsedError;
}
