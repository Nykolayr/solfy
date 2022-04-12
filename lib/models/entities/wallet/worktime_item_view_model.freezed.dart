// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'worktime_item_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorktimeItemViewModelTearOff {
  const _$WorktimeItemViewModelTearOff();

  WorktimeItem call(String? time, String? day, String? status) {
    return WorktimeItem(
      time,
      day,
      status,
    );
  }
}

/// @nodoc
const $WorktimeItemViewModel = _$WorktimeItemViewModelTearOff();

/// @nodoc
mixin _$WorktimeItemViewModel {
  String? get time => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorktimeItemViewModelCopyWith<WorktimeItemViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorktimeItemViewModelCopyWith<$Res> {
  factory $WorktimeItemViewModelCopyWith(WorktimeItemViewModel value,
          $Res Function(WorktimeItemViewModel) then) =
      _$WorktimeItemViewModelCopyWithImpl<$Res>;
  $Res call({String? time, String? day, String? status});
}

/// @nodoc
class _$WorktimeItemViewModelCopyWithImpl<$Res>
    implements $WorktimeItemViewModelCopyWith<$Res> {
  _$WorktimeItemViewModelCopyWithImpl(this._value, this._then);

  final WorktimeItemViewModel _value;
  // ignore: unused_field
  final $Res Function(WorktimeItemViewModel) _then;

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
    implements $WorktimeItemViewModelCopyWith<$Res> {
  factory $WorktimeItemCopyWith(
          WorktimeItem value, $Res Function(WorktimeItem) then) =
      _$WorktimeItemCopyWithImpl<$Res>;
  @override
  $Res call({String? time, String? day, String? status});
}

/// @nodoc
class _$WorktimeItemCopyWithImpl<$Res>
    extends _$WorktimeItemViewModelCopyWithImpl<$Res>
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

class _$WorktimeItem implements WorktimeItem {
  const _$WorktimeItem(this.time, this.day, this.status);

  @override
  final String? time;
  @override
  final String? day;
  @override
  final String? status;

  @override
  String toString() {
    return 'WorktimeItemViewModel(time: $time, day: $day, status: $status)';
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
}

abstract class WorktimeItem implements WorktimeItemViewModel {
  const factory WorktimeItem(String? time, String? day, String? status) =
      _$WorktimeItem;

  @override
  String? get time => throw _privateConstructorUsedError;
  @override
  String? get day => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $WorktimeItemCopyWith<WorktimeItem> get copyWith =>
      throw _privateConstructorUsedError;
}
