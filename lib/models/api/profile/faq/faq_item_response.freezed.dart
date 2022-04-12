// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'faq_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FaqItemResponse _$FaqItemResponseFromJson(Map<String, dynamic> json) {
  return FaqItem.fromJson(json);
}

/// @nodoc
class _$FaqItemResponseTearOff {
  const _$FaqItemResponseTearOff();

  FaqItem call(@JsonKey(name: "groups") List<FaqGroupItemResponse>? groups,
      @JsonKey(name: "entities") List<FaqQuestionItemResponse>? questions) {
    return FaqItem(
      groups,
      questions,
    );
  }

  FaqItemResponse fromJson(Map<String, Object> json) {
    return FaqItemResponse.fromJson(json);
  }
}

/// @nodoc
const $FaqItemResponse = _$FaqItemResponseTearOff();

/// @nodoc
mixin _$FaqItemResponse {
  /// Группы
  @JsonKey(name: "groups")
  List<FaqGroupItemResponse>? get groups => throw _privateConstructorUsedError;

  /// Вопросы
  @JsonKey(name: "entities")
  List<FaqQuestionItemResponse>? get questions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqItemResponseCopyWith<FaqItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqItemResponseCopyWith<$Res> {
  factory $FaqItemResponseCopyWith(
          FaqItemResponse value, $Res Function(FaqItemResponse) then) =
      _$FaqItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "groups") List<FaqGroupItemResponse>? groups,
      @JsonKey(name: "entities") List<FaqQuestionItemResponse>? questions});
}

/// @nodoc
class _$FaqItemResponseCopyWithImpl<$Res>
    implements $FaqItemResponseCopyWith<$Res> {
  _$FaqItemResponseCopyWithImpl(this._value, this._then);

  final FaqItemResponse _value;
  // ignore: unused_field
  final $Res Function(FaqItemResponse) _then;

  @override
  $Res call({
    Object? groups = freezed,
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<FaqGroupItemResponse>?,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<FaqQuestionItemResponse>?,
    ));
  }
}

/// @nodoc
abstract class $FaqItemCopyWith<$Res>
    implements $FaqItemResponseCopyWith<$Res> {
  factory $FaqItemCopyWith(FaqItem value, $Res Function(FaqItem) then) =
      _$FaqItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "groups") List<FaqGroupItemResponse>? groups,
      @JsonKey(name: "entities") List<FaqQuestionItemResponse>? questions});
}

/// @nodoc
class _$FaqItemCopyWithImpl<$Res> extends _$FaqItemResponseCopyWithImpl<$Res>
    implements $FaqItemCopyWith<$Res> {
  _$FaqItemCopyWithImpl(FaqItem _value, $Res Function(FaqItem) _then)
      : super(_value, (v) => _then(v as FaqItem));

  @override
  FaqItem get _value => super._value as FaqItem;

  @override
  $Res call({
    Object? groups = freezed,
    Object? questions = freezed,
  }) {
    return _then(FaqItem(
      groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<FaqGroupItemResponse>?,
      questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<FaqQuestionItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqItem implements FaqItem {
  const _$FaqItem(@JsonKey(name: "groups") this.groups,
      @JsonKey(name: "entities") this.questions);

  factory _$FaqItem.fromJson(Map<String, dynamic> json) =>
      _$$FaqItemFromJson(json);

  @override

  /// Группы
  @JsonKey(name: "groups")
  final List<FaqGroupItemResponse>? groups;
  @override

  /// Вопросы
  @JsonKey(name: "entities")
  final List<FaqQuestionItemResponse>? questions;

  @override
  String toString() {
    return 'FaqItemResponse(groups: $groups, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FaqItem &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.questions, questions) ||
                const DeepCollectionEquality()
                    .equals(other.questions, questions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(questions);

  @JsonKey(ignore: true)
  @override
  $FaqItemCopyWith<FaqItem> get copyWith =>
      _$FaqItemCopyWithImpl<FaqItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqItemToJson(this);
  }
}

abstract class FaqItem implements FaqItemResponse {
  const factory FaqItem(
          @JsonKey(name: "groups") List<FaqGroupItemResponse>? groups,
          @JsonKey(name: "entities") List<FaqQuestionItemResponse>? questions) =
      _$FaqItem;

  factory FaqItem.fromJson(Map<String, dynamic> json) = _$FaqItem.fromJson;

  @override

  /// Группы
  @JsonKey(name: "groups")
  List<FaqGroupItemResponse>? get groups => throw _privateConstructorUsedError;
  @override

  /// Вопросы
  @JsonKey(name: "entities")
  List<FaqQuestionItemResponse>? get questions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FaqItemCopyWith<FaqItem> get copyWith => throw _privateConstructorUsedError;
}
