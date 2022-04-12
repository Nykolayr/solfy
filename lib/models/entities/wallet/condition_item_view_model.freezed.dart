// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'condition_item_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConditionItemViewModelTearOff {
  const _$ConditionItemViewModelTearOff();

  ConditionItem call(String? title, String? term) {
    return ConditionItem(
      title,
      term,
    );
  }
}

/// @nodoc
const $ConditionItemViewModel = _$ConditionItemViewModelTearOff();

/// @nodoc
mixin _$ConditionItemViewModel {
  String? get title => throw _privateConstructorUsedError;
  String? get term => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConditionItemViewModelCopyWith<ConditionItemViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionItemViewModelCopyWith<$Res> {
  factory $ConditionItemViewModelCopyWith(ConditionItemViewModel value,
          $Res Function(ConditionItemViewModel) then) =
      _$ConditionItemViewModelCopyWithImpl<$Res>;
  $Res call({String? title, String? term});
}

/// @nodoc
class _$ConditionItemViewModelCopyWithImpl<$Res>
    implements $ConditionItemViewModelCopyWith<$Res> {
  _$ConditionItemViewModelCopyWithImpl(this._value, this._then);

  final ConditionItemViewModel _value;
  // ignore: unused_field
  final $Res Function(ConditionItemViewModel) _then;

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
abstract class $ConditionItemCopyWith<$Res>
    implements $ConditionItemViewModelCopyWith<$Res> {
  factory $ConditionItemCopyWith(
          ConditionItem value, $Res Function(ConditionItem) then) =
      _$ConditionItemCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? term});
}

/// @nodoc
class _$ConditionItemCopyWithImpl<$Res>
    extends _$ConditionItemViewModelCopyWithImpl<$Res>
    implements $ConditionItemCopyWith<$Res> {
  _$ConditionItemCopyWithImpl(
      ConditionItem _value, $Res Function(ConditionItem) _then)
      : super(_value, (v) => _then(v as ConditionItem));

  @override
  ConditionItem get _value => super._value as ConditionItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? term = freezed,
  }) {
    return _then(ConditionItem(
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

class _$ConditionItem implements ConditionItem {
  const _$ConditionItem(this.title, this.term);

  @override
  final String? title;
  @override
  final String? term;

  @override
  String toString() {
    return 'ConditionItemViewModel(title: $title, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConditionItem &&
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
  $ConditionItemCopyWith<ConditionItem> get copyWith =>
      _$ConditionItemCopyWithImpl<ConditionItem>(this, _$identity);
}

abstract class ConditionItem implements ConditionItemViewModel {
  const factory ConditionItem(String? title, String? term) = _$ConditionItem;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get term => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ConditionItemCopyWith<ConditionItem> get copyWith =>
      throw _privateConstructorUsedError;
}
