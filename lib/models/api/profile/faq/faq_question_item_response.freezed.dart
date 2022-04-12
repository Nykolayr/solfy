// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'faq_question_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FaqQuestionItemResponse _$FaqQuestionItemResponseFromJson(
    Map<String, dynamic> json) {
  return QuestionItem.fromJson(json);
}

/// @nodoc
class _$FaqQuestionItemResponseTearOff {
  const _$FaqQuestionItemResponseTearOff();

  QuestionItem call(
      @JsonKey(name: "group_id") int? groupId,
      @JsonKey(name: "question") String? question,
      @JsonKey(name: "answer") String? answer) {
    return QuestionItem(
      groupId,
      question,
      answer,
    );
  }

  FaqQuestionItemResponse fromJson(Map<String, Object> json) {
    return FaqQuestionItemResponse.fromJson(json);
  }
}

/// @nodoc
const $FaqQuestionItemResponse = _$FaqQuestionItemResponseTearOff();

/// @nodoc
mixin _$FaqQuestionItemResponse {
  /// Идентификатор группы
  @JsonKey(name: "group_id")
  int? get groupId => throw _privateConstructorUsedError;

  /// Вопрос
  @JsonKey(name: "question")
  String? get question => throw _privateConstructorUsedError;

  /// Ответ
  @JsonKey(name: "answer")
  String? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqQuestionItemResponseCopyWith<FaqQuestionItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqQuestionItemResponseCopyWith<$Res> {
  factory $FaqQuestionItemResponseCopyWith(FaqQuestionItemResponse value,
          $Res Function(FaqQuestionItemResponse) then) =
      _$FaqQuestionItemResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "group_id") int? groupId,
      @JsonKey(name: "question") String? question,
      @JsonKey(name: "answer") String? answer});
}

/// @nodoc
class _$FaqQuestionItemResponseCopyWithImpl<$Res>
    implements $FaqQuestionItemResponseCopyWith<$Res> {
  _$FaqQuestionItemResponseCopyWithImpl(this._value, this._then);

  final FaqQuestionItemResponse _value;
  // ignore: unused_field
  final $Res Function(FaqQuestionItemResponse) _then;

  @override
  $Res call({
    Object? groupId = freezed,
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $QuestionItemCopyWith<$Res>
    implements $FaqQuestionItemResponseCopyWith<$Res> {
  factory $QuestionItemCopyWith(
          QuestionItem value, $Res Function(QuestionItem) then) =
      _$QuestionItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "group_id") int? groupId,
      @JsonKey(name: "question") String? question,
      @JsonKey(name: "answer") String? answer});
}

/// @nodoc
class _$QuestionItemCopyWithImpl<$Res>
    extends _$FaqQuestionItemResponseCopyWithImpl<$Res>
    implements $QuestionItemCopyWith<$Res> {
  _$QuestionItemCopyWithImpl(
      QuestionItem _value, $Res Function(QuestionItem) _then)
      : super(_value, (v) => _then(v as QuestionItem));

  @override
  QuestionItem get _value => super._value as QuestionItem;

  @override
  $Res call({
    Object? groupId = freezed,
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(QuestionItem(
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionItem implements QuestionItem {
  const _$QuestionItem(
      @JsonKey(name: "group_id") this.groupId,
      @JsonKey(name: "question") this.question,
      @JsonKey(name: "answer") this.answer);

  factory _$QuestionItem.fromJson(Map<String, dynamic> json) =>
      _$$QuestionItemFromJson(json);

  @override

  /// Идентификатор группы
  @JsonKey(name: "group_id")
  final int? groupId;
  @override

  /// Вопрос
  @JsonKey(name: "question")
  final String? question;
  @override

  /// Ответ
  @JsonKey(name: "answer")
  final String? answer;

  @override
  String toString() {
    return 'FaqQuestionItemResponse(groupId: $groupId, question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuestionItem &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(answer);

  @JsonKey(ignore: true)
  @override
  $QuestionItemCopyWith<QuestionItem> get copyWith =>
      _$QuestionItemCopyWithImpl<QuestionItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionItemToJson(this);
  }
}

abstract class QuestionItem implements FaqQuestionItemResponse {
  const factory QuestionItem(
      @JsonKey(name: "group_id") int? groupId,
      @JsonKey(name: "question") String? question,
      @JsonKey(name: "answer") String? answer) = _$QuestionItem;

  factory QuestionItem.fromJson(Map<String, dynamic> json) =
      _$QuestionItem.fromJson;

  @override

  /// Идентификатор группы
  @JsonKey(name: "group_id")
  int? get groupId => throw _privateConstructorUsedError;
  @override

  /// Вопрос
  @JsonKey(name: "question")
  String? get question => throw _privateConstructorUsedError;
  @override

  /// Ответ
  @JsonKey(name: "answer")
  String? get answer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $QuestionItemCopyWith<QuestionItem> get copyWith =>
      throw _privateConstructorUsedError;
}
