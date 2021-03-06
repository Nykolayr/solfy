// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedules_operation_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SchedulesOperationItemResponse _$SchedulesOperationItemResponseFromJson(
    Map<String, dynamic> json) {
  return OperationItem.fromJson(json);
}

/// @nodoc
class _$SchedulesOperationItemResponseTearOff {
  const _$SchedulesOperationItemResponseTearOff();

  OperationItem call(
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "caption") String? caption,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "date_timestamp") int? dateTimestamp,
      @JsonKey(name: "group_id") String? groupId,
      @JsonKey(name: "picture") String? picture,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "is_declined") bool? isDeclined) {
    return OperationItem(
      id,
      title,
      type,
      caption,
      date,
      dateTimestamp,
      groupId,
      picture,
      amount,
      isDeclined,
    );
  }

  SchedulesOperationItemResponse fromJson(Map<String, Object> json) {
    return SchedulesOperationItemResponse.fromJson(json);
  }
}

/// @nodoc
const $SchedulesOperationItemResponse =
    _$SchedulesOperationItemResponseTearOff();

/// @nodoc
mixin _$SchedulesOperationItemResponse {
  /// ??????????????????????????
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;

  /// ??????????????????
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  /// ??????
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  /// ??????????????
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;

  /// ????????
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;

  /// Timestamp ????????
  @JsonKey(name: "date_timestamp")
  int? get dateTimestamp => throw _privateConstructorUsedError;

  /// ?????????????????????????? ????????????
  @JsonKey(name: "group_id")
  String? get groupId => throw _privateConstructorUsedError;

  /// ??????????????????????
  @JsonKey(name: "picture")
  String? get picture => throw _privateConstructorUsedError;

  /// ??????????????????
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;

  /// ???????????????? ???? ????????????
  @JsonKey(name: "is_declined")
  bool? get isDeclined => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchedulesOperationItemResponseCopyWith<SchedulesOperationItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulesOperationItemResponseCopyWith<$Res> {
  factory $SchedulesOperationItemResponseCopyWith(
          SchedulesOperationItemResponse value,
          $Res Function(SchedulesOperationItemResponse) then) =
      _$SchedulesOperationItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "caption") String? caption,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "date_timestamp") int? dateTimestamp,
      @JsonKey(name: "group_id") String? groupId,
      @JsonKey(name: "picture") String? picture,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "is_declined") bool? isDeclined});
}

/// @nodoc
class _$SchedulesOperationItemResponseCopyWithImpl<$Res>
    implements $SchedulesOperationItemResponseCopyWith<$Res> {
  _$SchedulesOperationItemResponseCopyWithImpl(this._value, this._then);

  final SchedulesOperationItemResponse _value;
  // ignore: unused_field
  final $Res Function(SchedulesOperationItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? caption = freezed,
    Object? date = freezed,
    Object? dateTimestamp = freezed,
    Object? groupId = freezed,
    Object? picture = freezed,
    Object? amount = freezed,
    Object? isDeclined = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTimestamp: dateTimestamp == freezed
          ? _value.dateTimestamp
          : dateTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeclined: isDeclined == freezed
          ? _value.isDeclined
          : isDeclined // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class $OperationItemCopyWith<$Res>
    implements $SchedulesOperationItemResponseCopyWith<$Res> {
  factory $OperationItemCopyWith(
          OperationItem value, $Res Function(OperationItem) then) =
      _$OperationItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "caption") String? caption,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "date_timestamp") int? dateTimestamp,
      @JsonKey(name: "group_id") String? groupId,
      @JsonKey(name: "picture") String? picture,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "is_declined") bool? isDeclined});
}

/// @nodoc
class _$OperationItemCopyWithImpl<$Res>
    extends _$SchedulesOperationItemResponseCopyWithImpl<$Res>
    implements $OperationItemCopyWith<$Res> {
  _$OperationItemCopyWithImpl(
      OperationItem _value, $Res Function(OperationItem) _then)
      : super(_value, (v) => _then(v as OperationItem));

  @override
  OperationItem get _value => super._value as OperationItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? caption = freezed,
    Object? date = freezed,
    Object? dateTimestamp = freezed,
    Object? groupId = freezed,
    Object? picture = freezed,
    Object? amount = freezed,
    Object? isDeclined = freezed,
  }) {
    return _then(OperationItem(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTimestamp == freezed
          ? _value.dateTimestamp
          : dateTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeclined == freezed
          ? _value.isDeclined
          : isDeclined // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperationItem implements OperationItem {
  const _$OperationItem(
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "caption") this.caption,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "date_timestamp") this.dateTimestamp,
      @JsonKey(name: "group_id") this.groupId,
      @JsonKey(name: "picture") this.picture,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "is_declined") this.isDeclined);

  factory _$OperationItem.fromJson(Map<String, dynamic> json) =>
      _$$OperationItemFromJson(json);

  @override

  /// ??????????????????????????
  @JsonKey(name: "id")
  final String? id;
  @override

  /// ??????????????????
  @JsonKey(name: "title")
  final String? title;
  @override

  /// ??????
  @JsonKey(name: "type")
  final String? type;
  @override

  /// ??????????????
  @JsonKey(name: "caption")
  final String? caption;
  @override

  /// ????????
  @JsonKey(name: "date")
  final String? date;
  @override

  /// Timestamp ????????
  @JsonKey(name: "date_timestamp")
  final int? dateTimestamp;
  @override

  /// ?????????????????????????? ????????????
  @JsonKey(name: "group_id")
  final String? groupId;
  @override

  /// ??????????????????????
  @JsonKey(name: "picture")
  final String? picture;
  @override

  /// ??????????????????
  @JsonKey(name: "amount")
  final String? amount;
  @override

  /// ???????????????? ???? ????????????
  @JsonKey(name: "is_declined")
  final bool? isDeclined;

  @override
  String toString() {
    return 'SchedulesOperationItemResponse(id: $id, title: $title, type: $type, caption: $caption, date: $date, dateTimestamp: $dateTimestamp, groupId: $groupId, picture: $picture, amount: $amount, isDeclined: $isDeclined)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OperationItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.dateTimestamp, dateTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.dateTimestamp, dateTimestamp)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.isDeclined, isDeclined) ||
                const DeepCollectionEquality()
                    .equals(other.isDeclined, isDeclined)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(dateTimestamp) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(isDeclined);

  @JsonKey(ignore: true)
  @override
  $OperationItemCopyWith<OperationItem> get copyWith =>
      _$OperationItemCopyWithImpl<OperationItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperationItemToJson(this);
  }
}

abstract class OperationItem implements SchedulesOperationItemResponse {
  const factory OperationItem(
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "caption") String? caption,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "date_timestamp") int? dateTimestamp,
      @JsonKey(name: "group_id") String? groupId,
      @JsonKey(name: "picture") String? picture,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "is_declined") bool? isDeclined) = _$OperationItem;

  factory OperationItem.fromJson(Map<String, dynamic> json) =
      _$OperationItem.fromJson;

  @override

  /// ??????????????????????????
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @override

  /// ??????????????????
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @override

  /// ??????
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @override

  /// ??????????????
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;
  @override

  /// ????????
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @override

  /// Timestamp ????????
  @JsonKey(name: "date_timestamp")
  int? get dateTimestamp => throw _privateConstructorUsedError;
  @override

  /// ?????????????????????????? ????????????
  @JsonKey(name: "group_id")
  String? get groupId => throw _privateConstructorUsedError;
  @override

  /// ??????????????????????
  @JsonKey(name: "picture")
  String? get picture => throw _privateConstructorUsedError;
  @override

  /// ??????????????????
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @override

  /// ???????????????? ???? ????????????
  @JsonKey(name: "is_declined")
  bool? get isDeclined => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $OperationItemCopyWith<OperationItem> get copyWith =>
      throw _privateConstructorUsedError;
}
