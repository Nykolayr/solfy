// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_worktime_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopWorktimeItemResponse _$ShopWorktimeItemResponseFromJson(
    Map<String, dynamic> json) {
  return WorktimeItem.fromJson(json);
}

/// @nodoc
class _$ShopWorktimeItemResponseTearOff {
  const _$ShopWorktimeItemResponseTearOff();

  WorktimeItem call(
      @JsonKey(name: "time") String? time,
      @JsonKey(name: "day") String? day,
      @JsonKey(name: "status") String? status) {
    return WorktimeItem(
      time,
      day,
      status,
    );
  }

  ShopWorktimeItemResponse fromJson(Map<String, Object> json) {
    return ShopWorktimeItemResponse.fromJson(json);
  }
}

/// @nodoc
const $ShopWorktimeItemResponse = _$ShopWorktimeItemResponseTearOff();

/// @nodoc
mixin _$ShopWorktimeItemResponse {
  /// Время работы
  @JsonKey(name: "time")
  String? get time => throw _privateConstructorUsedError;

  /// День
  @JsonKey(name: "day")
  String? get day => throw _privateConstructorUsedError;

  /// Статус
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopWorktimeItemResponseCopyWith<ShopWorktimeItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopWorktimeItemResponseCopyWith<$Res> {
  factory $ShopWorktimeItemResponseCopyWith(ShopWorktimeItemResponse value,
          $Res Function(ShopWorktimeItemResponse) then) =
      _$ShopWorktimeItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "time") String? time,
      @JsonKey(name: "day") String? day,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class _$ShopWorktimeItemResponseCopyWithImpl<$Res>
    implements $ShopWorktimeItemResponseCopyWith<$Res> {
  _$ShopWorktimeItemResponseCopyWithImpl(this._value, this._then);

  final ShopWorktimeItemResponse _value;
  // ignore: unused_field
  final $Res Function(ShopWorktimeItemResponse) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? day = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $WorktimeItemCopyWith<$Res>
    implements $ShopWorktimeItemResponseCopyWith<$Res> {
  factory $WorktimeItemCopyWith(
          WorktimeItem value, $Res Function(WorktimeItem) then) =
      _$WorktimeItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "time") String? time,
      @JsonKey(name: "day") String? day,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class _$WorktimeItemCopyWithImpl<$Res>
    extends _$ShopWorktimeItemResponseCopyWithImpl<$Res>
    implements $WorktimeItemCopyWith<$Res> {
  _$WorktimeItemCopyWithImpl(
      WorktimeItem _value, $Res Function(WorktimeItem) _then)
      : super(_value, (v) => _then(v as WorktimeItem));

  @override
  WorktimeItem get _value => super._value as WorktimeItem;

  @override
  $Res call({
    Object? time = freezed,
    Object? day = freezed,
    Object? status = freezed,
  }) {
    return _then(WorktimeItem(
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorktimeItem implements WorktimeItem {
  const _$WorktimeItem(@JsonKey(name: "time") this.time,
      @JsonKey(name: "day") this.day, @JsonKey(name: "status") this.status);

  factory _$WorktimeItem.fromJson(Map<String, dynamic> json) =>
      _$$WorktimeItemFromJson(json);

  @override

  /// Время работы
  @JsonKey(name: "time")
  final String? time;
  @override

  /// День
  @JsonKey(name: "day")
  final String? day;
  @override

  /// Статус
  @JsonKey(name: "status")
  final String? status;

  @override
  String toString() {
    return 'ShopWorktimeItemResponse(time: $time, day: $day, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WorktimeItem &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $WorktimeItemCopyWith<WorktimeItem> get copyWith =>
      _$WorktimeItemCopyWithImpl<WorktimeItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorktimeItemToJson(this);
  }
}

abstract class WorktimeItem implements ShopWorktimeItemResponse {
  const factory WorktimeItem(
      @JsonKey(name: "time") String? time,
      @JsonKey(name: "day") String? day,
      @JsonKey(name: "status") String? status) = _$WorktimeItem;

  factory WorktimeItem.fromJson(Map<String, dynamic> json) =
      _$WorktimeItem.fromJson;

  @override

  /// Время работы
  @JsonKey(name: "time")
  String? get time => throw _privateConstructorUsedError;
  @override

  /// День
  @JsonKey(name: "day")
  String? get day => throw _privateConstructorUsedError;
  @override

  /// Статус
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $WorktimeItemCopyWith<WorktimeItem> get copyWith =>
      throw _privateConstructorUsedError;
}
