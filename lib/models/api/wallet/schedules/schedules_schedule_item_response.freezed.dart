// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedules_schedule_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SchedulesScheduleItemResponse _$SchedulesScheduleItemResponseFromJson(
    Map<String, dynamic> json) {
  return ScheduleItem.fromJson(json);
}

/// @nodoc
class _$SchedulesScheduleItemResponseTearOff {
  const _$SchedulesScheduleItemResponseTearOff();

  ScheduleItem call(
      @JsonKey(name: "title")
          String? title,
      @JsonKey(name: "caption")
          String? caption,
      @JsonKey(name: "amount")
          String? amount,
      @JsonKey(name: "amount_caption")
          String? amountCaption,
      @JsonKey(name: "is_expired")
          bool? isExpired,
      @JsonKey(name: "operations")
          List<SchedulesOperationItemResponse>? operations) {
    return ScheduleItem(
      title,
      caption,
      amount,
      amountCaption,
      isExpired,
      operations,
    );
  }

  SchedulesScheduleItemResponse fromJson(Map<String, Object> json) {
    return SchedulesScheduleItemResponse.fromJson(json);
  }
}

/// @nodoc
const $SchedulesScheduleItemResponse = _$SchedulesScheduleItemResponseTearOff();

/// @nodoc
mixin _$SchedulesScheduleItemResponse {
  /// Заголовок
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  /// Подпись
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;

  /// Стоимость
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;

  /// Подпись к стоимости
  @JsonKey(name: "amount_caption")
  String? get amountCaption => throw _privateConstructorUsedError;

  /// Истек ли платеж
  @JsonKey(name: "is_expired")
  bool? get isExpired => throw _privateConstructorUsedError;

  /// Операции
  @JsonKey(name: "operations")
  List<SchedulesOperationItemResponse>? get operations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchedulesScheduleItemResponseCopyWith<SchedulesScheduleItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulesScheduleItemResponseCopyWith<$Res> {
  factory $SchedulesScheduleItemResponseCopyWith(
          SchedulesScheduleItemResponse value,
          $Res Function(SchedulesScheduleItemResponse) then) =
      _$SchedulesScheduleItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "title")
          String? title,
      @JsonKey(name: "caption")
          String? caption,
      @JsonKey(name: "amount")
          String? amount,
      @JsonKey(name: "amount_caption")
          String? amountCaption,
      @JsonKey(name: "is_expired")
          bool? isExpired,
      @JsonKey(name: "operations")
          List<SchedulesOperationItemResponse>? operations});
}

/// @nodoc
class _$SchedulesScheduleItemResponseCopyWithImpl<$Res>
    implements $SchedulesScheduleItemResponseCopyWith<$Res> {
  _$SchedulesScheduleItemResponseCopyWithImpl(this._value, this._then);

  final SchedulesScheduleItemResponse _value;
  // ignore: unused_field
  final $Res Function(SchedulesScheduleItemResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? caption = freezed,
    Object? amount = freezed,
    Object? amountCaption = freezed,
    Object? isExpired = freezed,
    Object? operations = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      amountCaption: amountCaption == freezed
          ? _value.amountCaption
          : amountCaption // ignore: cast_nullable_to_non_nullable
              as String?,
      isExpired: isExpired == freezed
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      operations: operations == freezed
          ? _value.operations
          : operations // ignore: cast_nullable_to_non_nullable
              as List<SchedulesOperationItemResponse>?,
    ));
  }
}

/// @nodoc
abstract class $ScheduleItemCopyWith<$Res>
    implements $SchedulesScheduleItemResponseCopyWith<$Res> {
  factory $ScheduleItemCopyWith(
          ScheduleItem value, $Res Function(ScheduleItem) then) =
      _$ScheduleItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "title")
          String? title,
      @JsonKey(name: "caption")
          String? caption,
      @JsonKey(name: "amount")
          String? amount,
      @JsonKey(name: "amount_caption")
          String? amountCaption,
      @JsonKey(name: "is_expired")
          bool? isExpired,
      @JsonKey(name: "operations")
          List<SchedulesOperationItemResponse>? operations});
}

/// @nodoc
class _$ScheduleItemCopyWithImpl<$Res>
    extends _$SchedulesScheduleItemResponseCopyWithImpl<$Res>
    implements $ScheduleItemCopyWith<$Res> {
  _$ScheduleItemCopyWithImpl(
      ScheduleItem _value, $Res Function(ScheduleItem) _then)
      : super(_value, (v) => _then(v as ScheduleItem));

  @override
  ScheduleItem get _value => super._value as ScheduleItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? caption = freezed,
    Object? amount = freezed,
    Object? amountCaption = freezed,
    Object? isExpired = freezed,
    Object? operations = freezed,
  }) {
    return _then(ScheduleItem(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      amountCaption == freezed
          ? _value.amountCaption
          : amountCaption // ignore: cast_nullable_to_non_nullable
              as String?,
      isExpired == freezed
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      operations == freezed
          ? _value.operations
          : operations // ignore: cast_nullable_to_non_nullable
              as List<SchedulesOperationItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleItem implements ScheduleItem {
  const _$ScheduleItem(
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "caption") this.caption,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "amount_caption") this.amountCaption,
      @JsonKey(name: "is_expired") this.isExpired,
      @JsonKey(name: "operations") this.operations);

  factory _$ScheduleItem.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleItemFromJson(json);

  @override

  /// Заголовок
  @JsonKey(name: "title")
  final String? title;
  @override

  /// Подпись
  @JsonKey(name: "caption")
  final String? caption;
  @override

  /// Стоимость
  @JsonKey(name: "amount")
  final String? amount;
  @override

  /// Подпись к стоимости
  @JsonKey(name: "amount_caption")
  final String? amountCaption;
  @override

  /// Истек ли платеж
  @JsonKey(name: "is_expired")
  final bool? isExpired;
  @override

  /// Операции
  @JsonKey(name: "operations")
  final List<SchedulesOperationItemResponse>? operations;

  @override
  String toString() {
    return 'SchedulesScheduleItemResponse(title: $title, caption: $caption, amount: $amount, amountCaption: $amountCaption, isExpired: $isExpired, operations: $operations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduleItem &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.amountCaption, amountCaption) ||
                const DeepCollectionEquality()
                    .equals(other.amountCaption, amountCaption)) &&
            (identical(other.isExpired, isExpired) ||
                const DeepCollectionEquality()
                    .equals(other.isExpired, isExpired)) &&
            (identical(other.operations, operations) ||
                const DeepCollectionEquality()
                    .equals(other.operations, operations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(amountCaption) ^
      const DeepCollectionEquality().hash(isExpired) ^
      const DeepCollectionEquality().hash(operations);

  @JsonKey(ignore: true)
  @override
  $ScheduleItemCopyWith<ScheduleItem> get copyWith =>
      _$ScheduleItemCopyWithImpl<ScheduleItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleItemToJson(this);
  }
}

abstract class ScheduleItem implements SchedulesScheduleItemResponse {
  const factory ScheduleItem(
      @JsonKey(name: "title")
          String? title,
      @JsonKey(name: "caption")
          String? caption,
      @JsonKey(name: "amount")
          String? amount,
      @JsonKey(name: "amount_caption")
          String? amountCaption,
      @JsonKey(name: "is_expired")
          bool? isExpired,
      @JsonKey(name: "operations")
          List<SchedulesOperationItemResponse>? operations) = _$ScheduleItem;

  factory ScheduleItem.fromJson(Map<String, dynamic> json) =
      _$ScheduleItem.fromJson;

  @override

  /// Заголовок
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @override

  /// Подпись
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;
  @override

  /// Стоимость
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @override

  /// Подпись к стоимости
  @JsonKey(name: "amount_caption")
  String? get amountCaption => throw _privateConstructorUsedError;
  @override

  /// Истек ли платеж
  @JsonKey(name: "is_expired")
  bool? get isExpired => throw _privateConstructorUsedError;
  @override

  /// Операции
  @JsonKey(name: "operations")
  List<SchedulesOperationItemResponse>? get operations =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ScheduleItemCopyWith<ScheduleItem> get copyWith =>
      throw _privateConstructorUsedError;
}
