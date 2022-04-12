// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'questionnaire_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuestionnaireStateTearOff {
  const _$QuestionnaireStateTearOff();

  Initial initial() {
    return const Initial();
  }

  QuestionnaireFoundSuccess questionnaireFoundSuccess(
      ClientSearchResponse staticQuestionnaire,
      ClientSearchResponse questionnaire,
      int currentStage) {
    return QuestionnaireFoundSuccess(
      staticQuestionnaire,
      questionnaire,
      currentStage,
    );
  }

  QuestionnaireFoundError questionnaireFoundError(ErrorsResponse errors) {
    return QuestionnaireFoundError(
      errors,
    );
  }

  QuestionnaireSentSuccess questionnaireSentSuccess() {
    return const QuestionnaireSentSuccess();
  }

  QuestionnaireSentError questionnaireSentError(ErrorsResponse errors) {
    return QuestionnaireSentError(
      errors,
    );
  }
}

/// @nodoc
const $QuestionnaireState = _$QuestionnaireStateTearOff();

/// @nodoc
mixin _$QuestionnaireState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)
        questionnaireFoundSuccess,
    required TResult Function(ErrorsResponse errors) questionnaireFoundError,
    required TResult Function() questionnaireSentSuccess,
    required TResult Function(ErrorsResponse errors) questionnaireSentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)?
        questionnaireFoundSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireFoundError,
    TResult Function()? questionnaireSentSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireSentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)?
        questionnaireFoundSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireFoundError,
    TResult Function()? questionnaireSentSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireSentError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(QuestionnaireFoundSuccess value)
        questionnaireFoundSuccess,
    required TResult Function(QuestionnaireFoundError value)
        questionnaireFoundError,
    required TResult Function(QuestionnaireSentSuccess value)
        questionnaireSentSuccess,
    required TResult Function(QuestionnaireSentError value)
        questionnaireSentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(QuestionnaireFoundSuccess value)?
        questionnaireFoundSuccess,
    TResult Function(QuestionnaireFoundError value)? questionnaireFoundError,
    TResult Function(QuestionnaireSentSuccess value)? questionnaireSentSuccess,
    TResult Function(QuestionnaireSentError value)? questionnaireSentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(QuestionnaireFoundSuccess value)?
        questionnaireFoundSuccess,
    TResult Function(QuestionnaireFoundError value)? questionnaireFoundError,
    TResult Function(QuestionnaireSentSuccess value)? questionnaireSentSuccess,
    TResult Function(QuestionnaireSentError value)? questionnaireSentError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireStateCopyWith<$Res> {
  factory $QuestionnaireStateCopyWith(
          QuestionnaireState value, $Res Function(QuestionnaireState) then) =
      _$QuestionnaireStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionnaireStateCopyWithImpl<$Res>
    implements $QuestionnaireStateCopyWith<$Res> {
  _$QuestionnaireStateCopyWithImpl(this._value, this._then);

  final QuestionnaireState _value;
  // ignore: unused_field
  final $Res Function(QuestionnaireState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$QuestionnaireStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'QuestionnaireState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)
        questionnaireFoundSuccess,
    required TResult Function(ErrorsResponse errors) questionnaireFoundError,
    required TResult Function() questionnaireSentSuccess,
    required TResult Function(ErrorsResponse errors) questionnaireSentError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)?
        questionnaireFoundSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireFoundError,
    TResult Function()? questionnaireSentSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireSentError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)?
        questionnaireFoundSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireFoundError,
    TResult Function()? questionnaireSentSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireSentError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(QuestionnaireFoundSuccess value)
        questionnaireFoundSuccess,
    required TResult Function(QuestionnaireFoundError value)
        questionnaireFoundError,
    required TResult Function(QuestionnaireSentSuccess value)
        questionnaireSentSuccess,
    required TResult Function(QuestionnaireSentError value)
        questionnaireSentError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(QuestionnaireFoundSuccess value)?
        questionnaireFoundSuccess,
    TResult Function(QuestionnaireFoundError value)? questionnaireFoundError,
    TResult Function(QuestionnaireSentSuccess value)? questionnaireSentSuccess,
    TResult Function(QuestionnaireSentError value)? questionnaireSentError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(QuestionnaireFoundSuccess value)?
        questionnaireFoundSuccess,
    TResult Function(QuestionnaireFoundError value)? questionnaireFoundError,
    TResult Function(QuestionnaireSentSuccess value)? questionnaireSentSuccess,
    TResult Function(QuestionnaireSentError value)? questionnaireSentError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements QuestionnaireState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $QuestionnaireFoundSuccessCopyWith<$Res> {
  factory $QuestionnaireFoundSuccessCopyWith(QuestionnaireFoundSuccess value,
          $Res Function(QuestionnaireFoundSuccess) then) =
      _$QuestionnaireFoundSuccessCopyWithImpl<$Res>;
  $Res call(
      {ClientSearchResponse staticQuestionnaire,
      ClientSearchResponse questionnaire,
      int currentStage});

  $ClientSearchResponseCopyWith<$Res> get staticQuestionnaire;
  $ClientSearchResponseCopyWith<$Res> get questionnaire;
}

/// @nodoc
class _$QuestionnaireFoundSuccessCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res>
    implements $QuestionnaireFoundSuccessCopyWith<$Res> {
  _$QuestionnaireFoundSuccessCopyWithImpl(QuestionnaireFoundSuccess _value,
      $Res Function(QuestionnaireFoundSuccess) _then)
      : super(_value, (v) => _then(v as QuestionnaireFoundSuccess));

  @override
  QuestionnaireFoundSuccess get _value =>
      super._value as QuestionnaireFoundSuccess;

  @override
  $Res call({
    Object? staticQuestionnaire = freezed,
    Object? questionnaire = freezed,
    Object? currentStage = freezed,
  }) {
    return _then(QuestionnaireFoundSuccess(
      staticQuestionnaire == freezed
          ? _value.staticQuestionnaire
          : staticQuestionnaire // ignore: cast_nullable_to_non_nullable
              as ClientSearchResponse,
      questionnaire == freezed
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as ClientSearchResponse,
      currentStage == freezed
          ? _value.currentStage
          : currentStage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ClientSearchResponseCopyWith<$Res> get staticQuestionnaire {
    return $ClientSearchResponseCopyWith<$Res>(_value.staticQuestionnaire,
        (value) {
      return _then(_value.copyWith(staticQuestionnaire: value));
    });
  }

  @override
  $ClientSearchResponseCopyWith<$Res> get questionnaire {
    return $ClientSearchResponseCopyWith<$Res>(_value.questionnaire, (value) {
      return _then(_value.copyWith(questionnaire: value));
    });
  }
}

/// @nodoc

class _$QuestionnaireFoundSuccess implements QuestionnaireFoundSuccess {
  const _$QuestionnaireFoundSuccess(
      this.staticQuestionnaire, this.questionnaire, this.currentStage);

  @override
  final ClientSearchResponse staticQuestionnaire;
  @override
  final ClientSearchResponse questionnaire;
  @override
  final int currentStage;

  @override
  String toString() {
    return 'QuestionnaireState.questionnaireFoundSuccess(staticQuestionnaire: $staticQuestionnaire, questionnaire: $questionnaire, currentStage: $currentStage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuestionnaireFoundSuccess &&
            (identical(other.staticQuestionnaire, staticQuestionnaire) ||
                const DeepCollectionEquality()
                    .equals(other.staticQuestionnaire, staticQuestionnaire)) &&
            (identical(other.questionnaire, questionnaire) ||
                const DeepCollectionEquality()
                    .equals(other.questionnaire, questionnaire)) &&
            (identical(other.currentStage, currentStage) ||
                const DeepCollectionEquality()
                    .equals(other.currentStage, currentStage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(staticQuestionnaire) ^
      const DeepCollectionEquality().hash(questionnaire) ^
      const DeepCollectionEquality().hash(currentStage);

  @JsonKey(ignore: true)
  @override
  $QuestionnaireFoundSuccessCopyWith<QuestionnaireFoundSuccess> get copyWith =>
      _$QuestionnaireFoundSuccessCopyWithImpl<QuestionnaireFoundSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)
        questionnaireFoundSuccess,
    required TResult Function(ErrorsResponse errors) questionnaireFoundError,
    required TResult Function() questionnaireSentSuccess,
    required TResult Function(ErrorsResponse errors) questionnaireSentError,
  }) {
    return questionnaireFoundSuccess(
        staticQuestionnaire, questionnaire, currentStage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)?
        questionnaireFoundSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireFoundError,
    TResult Function()? questionnaireSentSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireSentError,
  }) {
    return questionnaireFoundSuccess?.call(
        staticQuestionnaire, questionnaire, currentStage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)?
        questionnaireFoundSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireFoundError,
    TResult Function()? questionnaireSentSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireSentError,
    required TResult orElse(),
  }) {
    if (questionnaireFoundSuccess != null) {
      return questionnaireFoundSuccess(
          staticQuestionnaire, questionnaire, currentStage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(QuestionnaireFoundSuccess value)
        questionnaireFoundSuccess,
    required TResult Function(QuestionnaireFoundError value)
        questionnaireFoundError,
    required TResult Function(QuestionnaireSentSuccess value)
        questionnaireSentSuccess,
    required TResult Function(QuestionnaireSentError value)
        questionnaireSentError,
  }) {
    return questionnaireFoundSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(QuestionnaireFoundSuccess value)?
        questionnaireFoundSuccess,
    TResult Function(QuestionnaireFoundError value)? questionnaireFoundError,
    TResult Function(QuestionnaireSentSuccess value)? questionnaireSentSuccess,
    TResult Function(QuestionnaireSentError value)? questionnaireSentError,
  }) {
    return questionnaireFoundSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(QuestionnaireFoundSuccess value)?
        questionnaireFoundSuccess,
    TResult Function(QuestionnaireFoundError value)? questionnaireFoundError,
    TResult Function(QuestionnaireSentSuccess value)? questionnaireSentSuccess,
    TResult Function(QuestionnaireSentError value)? questionnaireSentError,
    required TResult orElse(),
  }) {
    if (questionnaireFoundSuccess != null) {
      return questionnaireFoundSuccess(this);
    }
    return orElse();
  }
}

abstract class QuestionnaireFoundSuccess implements QuestionnaireState {
  const factory QuestionnaireFoundSuccess(
      ClientSearchResponse staticQuestionnaire,
      ClientSearchResponse questionnaire,
      int currentStage) = _$QuestionnaireFoundSuccess;

  ClientSearchResponse get staticQuestionnaire =>
      throw _privateConstructorUsedError;
  ClientSearchResponse get questionnaire => throw _privateConstructorUsedError;
  int get currentStage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireFoundSuccessCopyWith<QuestionnaireFoundSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireFoundErrorCopyWith<$Res> {
  factory $QuestionnaireFoundErrorCopyWith(QuestionnaireFoundError value,
          $Res Function(QuestionnaireFoundError) then) =
      _$QuestionnaireFoundErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$QuestionnaireFoundErrorCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res>
    implements $QuestionnaireFoundErrorCopyWith<$Res> {
  _$QuestionnaireFoundErrorCopyWithImpl(QuestionnaireFoundError _value,
      $Res Function(QuestionnaireFoundError) _then)
      : super(_value, (v) => _then(v as QuestionnaireFoundError));

  @override
  QuestionnaireFoundError get _value => super._value as QuestionnaireFoundError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(QuestionnaireFoundError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$QuestionnaireFoundError implements QuestionnaireFoundError {
  const _$QuestionnaireFoundError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'QuestionnaireState.questionnaireFoundError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuestionnaireFoundError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $QuestionnaireFoundErrorCopyWith<QuestionnaireFoundError> get copyWith =>
      _$QuestionnaireFoundErrorCopyWithImpl<QuestionnaireFoundError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)
        questionnaireFoundSuccess,
    required TResult Function(ErrorsResponse errors) questionnaireFoundError,
    required TResult Function() questionnaireSentSuccess,
    required TResult Function(ErrorsResponse errors) questionnaireSentError,
  }) {
    return questionnaireFoundError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)?
        questionnaireFoundSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireFoundError,
    TResult Function()? questionnaireSentSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireSentError,
  }) {
    return questionnaireFoundError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)?
        questionnaireFoundSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireFoundError,
    TResult Function()? questionnaireSentSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireSentError,
    required TResult orElse(),
  }) {
    if (questionnaireFoundError != null) {
      return questionnaireFoundError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(QuestionnaireFoundSuccess value)
        questionnaireFoundSuccess,
    required TResult Function(QuestionnaireFoundError value)
        questionnaireFoundError,
    required TResult Function(QuestionnaireSentSuccess value)
        questionnaireSentSuccess,
    required TResult Function(QuestionnaireSentError value)
        questionnaireSentError,
  }) {
    return questionnaireFoundError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(QuestionnaireFoundSuccess value)?
        questionnaireFoundSuccess,
    TResult Function(QuestionnaireFoundError value)? questionnaireFoundError,
    TResult Function(QuestionnaireSentSuccess value)? questionnaireSentSuccess,
    TResult Function(QuestionnaireSentError value)? questionnaireSentError,
  }) {
    return questionnaireFoundError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(QuestionnaireFoundSuccess value)?
        questionnaireFoundSuccess,
    TResult Function(QuestionnaireFoundError value)? questionnaireFoundError,
    TResult Function(QuestionnaireSentSuccess value)? questionnaireSentSuccess,
    TResult Function(QuestionnaireSentError value)? questionnaireSentError,
    required TResult orElse(),
  }) {
    if (questionnaireFoundError != null) {
      return questionnaireFoundError(this);
    }
    return orElse();
  }
}

abstract class QuestionnaireFoundError implements QuestionnaireState {
  const factory QuestionnaireFoundError(ErrorsResponse errors) =
      _$QuestionnaireFoundError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireFoundErrorCopyWith<QuestionnaireFoundError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireSentSuccessCopyWith<$Res> {
  factory $QuestionnaireSentSuccessCopyWith(QuestionnaireSentSuccess value,
          $Res Function(QuestionnaireSentSuccess) then) =
      _$QuestionnaireSentSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionnaireSentSuccessCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res>
    implements $QuestionnaireSentSuccessCopyWith<$Res> {
  _$QuestionnaireSentSuccessCopyWithImpl(QuestionnaireSentSuccess _value,
      $Res Function(QuestionnaireSentSuccess) _then)
      : super(_value, (v) => _then(v as QuestionnaireSentSuccess));

  @override
  QuestionnaireSentSuccess get _value =>
      super._value as QuestionnaireSentSuccess;
}

/// @nodoc

class _$QuestionnaireSentSuccess implements QuestionnaireSentSuccess {
  const _$QuestionnaireSentSuccess();

  @override
  String toString() {
    return 'QuestionnaireState.questionnaireSentSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is QuestionnaireSentSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)
        questionnaireFoundSuccess,
    required TResult Function(ErrorsResponse errors) questionnaireFoundError,
    required TResult Function() questionnaireSentSuccess,
    required TResult Function(ErrorsResponse errors) questionnaireSentError,
  }) {
    return questionnaireSentSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)?
        questionnaireFoundSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireFoundError,
    TResult Function()? questionnaireSentSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireSentError,
  }) {
    return questionnaireSentSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)?
        questionnaireFoundSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireFoundError,
    TResult Function()? questionnaireSentSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireSentError,
    required TResult orElse(),
  }) {
    if (questionnaireSentSuccess != null) {
      return questionnaireSentSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(QuestionnaireFoundSuccess value)
        questionnaireFoundSuccess,
    required TResult Function(QuestionnaireFoundError value)
        questionnaireFoundError,
    required TResult Function(QuestionnaireSentSuccess value)
        questionnaireSentSuccess,
    required TResult Function(QuestionnaireSentError value)
        questionnaireSentError,
  }) {
    return questionnaireSentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(QuestionnaireFoundSuccess value)?
        questionnaireFoundSuccess,
    TResult Function(QuestionnaireFoundError value)? questionnaireFoundError,
    TResult Function(QuestionnaireSentSuccess value)? questionnaireSentSuccess,
    TResult Function(QuestionnaireSentError value)? questionnaireSentError,
  }) {
    return questionnaireSentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(QuestionnaireFoundSuccess value)?
        questionnaireFoundSuccess,
    TResult Function(QuestionnaireFoundError value)? questionnaireFoundError,
    TResult Function(QuestionnaireSentSuccess value)? questionnaireSentSuccess,
    TResult Function(QuestionnaireSentError value)? questionnaireSentError,
    required TResult orElse(),
  }) {
    if (questionnaireSentSuccess != null) {
      return questionnaireSentSuccess(this);
    }
    return orElse();
  }
}

abstract class QuestionnaireSentSuccess implements QuestionnaireState {
  const factory QuestionnaireSentSuccess() = _$QuestionnaireSentSuccess;
}

/// @nodoc
abstract class $QuestionnaireSentErrorCopyWith<$Res> {
  factory $QuestionnaireSentErrorCopyWith(QuestionnaireSentError value,
          $Res Function(QuestionnaireSentError) then) =
      _$QuestionnaireSentErrorCopyWithImpl<$Res>;
  $Res call({ErrorsResponse errors});
}

/// @nodoc
class _$QuestionnaireSentErrorCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res>
    implements $QuestionnaireSentErrorCopyWith<$Res> {
  _$QuestionnaireSentErrorCopyWithImpl(QuestionnaireSentError _value,
      $Res Function(QuestionnaireSentError) _then)
      : super(_value, (v) => _then(v as QuestionnaireSentError));

  @override
  QuestionnaireSentError get _value => super._value as QuestionnaireSentError;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(QuestionnaireSentError(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsResponse,
    ));
  }
}

/// @nodoc

class _$QuestionnaireSentError implements QuestionnaireSentError {
  const _$QuestionnaireSentError(this.errors);

  @override
  final ErrorsResponse errors;

  @override
  String toString() {
    return 'QuestionnaireState.questionnaireSentError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuestionnaireSentError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $QuestionnaireSentErrorCopyWith<QuestionnaireSentError> get copyWith =>
      _$QuestionnaireSentErrorCopyWithImpl<QuestionnaireSentError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)
        questionnaireFoundSuccess,
    required TResult Function(ErrorsResponse errors) questionnaireFoundError,
    required TResult Function() questionnaireSentSuccess,
    required TResult Function(ErrorsResponse errors) questionnaireSentError,
  }) {
    return questionnaireSentError(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)?
        questionnaireFoundSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireFoundError,
    TResult Function()? questionnaireSentSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireSentError,
  }) {
    return questionnaireSentError?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClientSearchResponse staticQuestionnaire,
            ClientSearchResponse questionnaire, int currentStage)?
        questionnaireFoundSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireFoundError,
    TResult Function()? questionnaireSentSuccess,
    TResult Function(ErrorsResponse errors)? questionnaireSentError,
    required TResult orElse(),
  }) {
    if (questionnaireSentError != null) {
      return questionnaireSentError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(QuestionnaireFoundSuccess value)
        questionnaireFoundSuccess,
    required TResult Function(QuestionnaireFoundError value)
        questionnaireFoundError,
    required TResult Function(QuestionnaireSentSuccess value)
        questionnaireSentSuccess,
    required TResult Function(QuestionnaireSentError value)
        questionnaireSentError,
  }) {
    return questionnaireSentError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(QuestionnaireFoundSuccess value)?
        questionnaireFoundSuccess,
    TResult Function(QuestionnaireFoundError value)? questionnaireFoundError,
    TResult Function(QuestionnaireSentSuccess value)? questionnaireSentSuccess,
    TResult Function(QuestionnaireSentError value)? questionnaireSentError,
  }) {
    return questionnaireSentError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(QuestionnaireFoundSuccess value)?
        questionnaireFoundSuccess,
    TResult Function(QuestionnaireFoundError value)? questionnaireFoundError,
    TResult Function(QuestionnaireSentSuccess value)? questionnaireSentSuccess,
    TResult Function(QuestionnaireSentError value)? questionnaireSentError,
    required TResult orElse(),
  }) {
    if (questionnaireSentError != null) {
      return questionnaireSentError(this);
    }
    return orElse();
  }
}

abstract class QuestionnaireSentError implements QuestionnaireState {
  const factory QuestionnaireSentError(ErrorsResponse errors) =
      _$QuestionnaireSentError;

  ErrorsResponse get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireSentErrorCopyWith<QuestionnaireSentError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QuestionnaireEventTearOff {
  const _$QuestionnaireEventTearOff();

  ClientSearch clientSearch({String? series, String? number, String? pinFl}) {
    return ClientSearch(
      series: series,
      number: number,
      pinFl: pinFl,
    );
  }

  ClientScore clientScore(String id) {
    return ClientScore(
      id,
    );
  }

  SavePersonalData savePersonalData(
      Map<String, dynamic> data, ClientSearchResponse questionnaire) {
    return SavePersonalData(
      data,
      questionnaire,
    );
  }

  SaveAddressData saveAddressData(Map<String, dynamic> data,
      ClientSearchResponse questionnaire, FactAddressSelector factSelector) {
    return SaveAddressData(
      data,
      questionnaire,
      factSelector,
    );
  }

  SaveJobData saveJobData(
      Map<String, dynamic> data, ClientSearchResponse questionnaire) {
    return SaveJobData(
      data,
      questionnaire,
    );
  }

  SavePropertiesData savePropertiesData(List<FormPropertyModel> properties,
      List<FormVehicleModel> vehicles, ClientSearchResponse questionnaire) {
    return SavePropertiesData(
      properties,
      vehicles,
      questionnaire,
    );
  }

  Reset reset() {
    return const Reset();
  }
}

/// @nodoc
const $QuestionnaireEvent = _$QuestionnaireEventTearOff();

/// @nodoc
mixin _$QuestionnaireEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? series, String? number, String? pinFl)
        clientSearch,
    required TResult Function(String id) clientScore,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        savePersonalData,
    required TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)
        saveAddressData,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        saveJobData,
    required TResult Function(List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles, ClientSearchResponse questionnaire)
        savePropertiesData,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientSearch value) clientSearch,
    required TResult Function(ClientScore value) clientScore,
    required TResult Function(SavePersonalData value) savePersonalData,
    required TResult Function(SaveAddressData value) saveAddressData,
    required TResult Function(SaveJobData value) saveJobData,
    required TResult Function(SavePropertiesData value) savePropertiesData,
    required TResult Function(Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireEventCopyWith<$Res> {
  factory $QuestionnaireEventCopyWith(
          QuestionnaireEvent value, $Res Function(QuestionnaireEvent) then) =
      _$QuestionnaireEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionnaireEventCopyWithImpl<$Res>
    implements $QuestionnaireEventCopyWith<$Res> {
  _$QuestionnaireEventCopyWithImpl(this._value, this._then);

  final QuestionnaireEvent _value;
  // ignore: unused_field
  final $Res Function(QuestionnaireEvent) _then;
}

/// @nodoc
abstract class $ClientSearchCopyWith<$Res> {
  factory $ClientSearchCopyWith(
          ClientSearch value, $Res Function(ClientSearch) then) =
      _$ClientSearchCopyWithImpl<$Res>;
  $Res call({String? series, String? number, String? pinFl});
}

/// @nodoc
class _$ClientSearchCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res>
    implements $ClientSearchCopyWith<$Res> {
  _$ClientSearchCopyWithImpl(
      ClientSearch _value, $Res Function(ClientSearch) _then)
      : super(_value, (v) => _then(v as ClientSearch));

  @override
  ClientSearch get _value => super._value as ClientSearch;

  @override
  $Res call({
    Object? series = freezed,
    Object? number = freezed,
    Object? pinFl = freezed,
  }) {
    return _then(ClientSearch(
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      pinFl: pinFl == freezed
          ? _value.pinFl
          : pinFl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ClientSearch implements ClientSearch {
  const _$ClientSearch({this.series, this.number, this.pinFl});

  @override
  final String? series;
  @override
  final String? number;
  @override
  final String? pinFl;

  @override
  String toString() {
    return 'QuestionnaireEvent.clientSearch(series: $series, number: $number, pinFl: $pinFl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClientSearch &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.pinFl, pinFl) ||
                const DeepCollectionEquality().equals(other.pinFl, pinFl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(series) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(pinFl);

  @JsonKey(ignore: true)
  @override
  $ClientSearchCopyWith<ClientSearch> get copyWith =>
      _$ClientSearchCopyWithImpl<ClientSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? series, String? number, String? pinFl)
        clientSearch,
    required TResult Function(String id) clientScore,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        savePersonalData,
    required TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)
        saveAddressData,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        saveJobData,
    required TResult Function(List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles, ClientSearchResponse questionnaire)
        savePropertiesData,
    required TResult Function() reset,
  }) {
    return clientSearch(series, number, pinFl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
  }) {
    return clientSearch?.call(series, number, pinFl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (clientSearch != null) {
      return clientSearch(series, number, pinFl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientSearch value) clientSearch,
    required TResult Function(ClientScore value) clientScore,
    required TResult Function(SavePersonalData value) savePersonalData,
    required TResult Function(SaveAddressData value) saveAddressData,
    required TResult Function(SaveJobData value) saveJobData,
    required TResult Function(SavePropertiesData value) savePropertiesData,
    required TResult Function(Reset value) reset,
  }) {
    return clientSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
  }) {
    return clientSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (clientSearch != null) {
      return clientSearch(this);
    }
    return orElse();
  }
}

abstract class ClientSearch implements QuestionnaireEvent {
  const factory ClientSearch({String? series, String? number, String? pinFl}) =
      _$ClientSearch;

  String? get series => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  String? get pinFl => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientSearchCopyWith<ClientSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientScoreCopyWith<$Res> {
  factory $ClientScoreCopyWith(
          ClientScore value, $Res Function(ClientScore) then) =
      _$ClientScoreCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$ClientScoreCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res>
    implements $ClientScoreCopyWith<$Res> {
  _$ClientScoreCopyWithImpl(
      ClientScore _value, $Res Function(ClientScore) _then)
      : super(_value, (v) => _then(v as ClientScore));

  @override
  ClientScore get _value => super._value as ClientScore;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(ClientScore(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientScore implements ClientScore {
  const _$ClientScore(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'QuestionnaireEvent.clientScore(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClientScore &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $ClientScoreCopyWith<ClientScore> get copyWith =>
      _$ClientScoreCopyWithImpl<ClientScore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? series, String? number, String? pinFl)
        clientSearch,
    required TResult Function(String id) clientScore,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        savePersonalData,
    required TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)
        saveAddressData,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        saveJobData,
    required TResult Function(List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles, ClientSearchResponse questionnaire)
        savePropertiesData,
    required TResult Function() reset,
  }) {
    return clientScore(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
  }) {
    return clientScore?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (clientScore != null) {
      return clientScore(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientSearch value) clientSearch,
    required TResult Function(ClientScore value) clientScore,
    required TResult Function(SavePersonalData value) savePersonalData,
    required TResult Function(SaveAddressData value) saveAddressData,
    required TResult Function(SaveJobData value) saveJobData,
    required TResult Function(SavePropertiesData value) savePropertiesData,
    required TResult Function(Reset value) reset,
  }) {
    return clientScore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
  }) {
    return clientScore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (clientScore != null) {
      return clientScore(this);
    }
    return orElse();
  }
}

abstract class ClientScore implements QuestionnaireEvent {
  const factory ClientScore(String id) = _$ClientScore;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientScoreCopyWith<ClientScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePersonalDataCopyWith<$Res> {
  factory $SavePersonalDataCopyWith(
          SavePersonalData value, $Res Function(SavePersonalData) then) =
      _$SavePersonalDataCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> data, ClientSearchResponse questionnaire});

  $ClientSearchResponseCopyWith<$Res> get questionnaire;
}

/// @nodoc
class _$SavePersonalDataCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res>
    implements $SavePersonalDataCopyWith<$Res> {
  _$SavePersonalDataCopyWithImpl(
      SavePersonalData _value, $Res Function(SavePersonalData) _then)
      : super(_value, (v) => _then(v as SavePersonalData));

  @override
  SavePersonalData get _value => super._value as SavePersonalData;

  @override
  $Res call({
    Object? data = freezed,
    Object? questionnaire = freezed,
  }) {
    return _then(SavePersonalData(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      questionnaire == freezed
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as ClientSearchResponse,
    ));
  }

  @override
  $ClientSearchResponseCopyWith<$Res> get questionnaire {
    return $ClientSearchResponseCopyWith<$Res>(_value.questionnaire, (value) {
      return _then(_value.copyWith(questionnaire: value));
    });
  }
}

/// @nodoc

class _$SavePersonalData implements SavePersonalData {
  const _$SavePersonalData(this.data, this.questionnaire);

  @override
  final Map<String, dynamic> data;
  @override
  final ClientSearchResponse questionnaire;

  @override
  String toString() {
    return 'QuestionnaireEvent.savePersonalData(data: $data, questionnaire: $questionnaire)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SavePersonalData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.questionnaire, questionnaire) ||
                const DeepCollectionEquality()
                    .equals(other.questionnaire, questionnaire)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(questionnaire);

  @JsonKey(ignore: true)
  @override
  $SavePersonalDataCopyWith<SavePersonalData> get copyWith =>
      _$SavePersonalDataCopyWithImpl<SavePersonalData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? series, String? number, String? pinFl)
        clientSearch,
    required TResult Function(String id) clientScore,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        savePersonalData,
    required TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)
        saveAddressData,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        saveJobData,
    required TResult Function(List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles, ClientSearchResponse questionnaire)
        savePropertiesData,
    required TResult Function() reset,
  }) {
    return savePersonalData(data, questionnaire);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
  }) {
    return savePersonalData?.call(data, questionnaire);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (savePersonalData != null) {
      return savePersonalData(data, questionnaire);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientSearch value) clientSearch,
    required TResult Function(ClientScore value) clientScore,
    required TResult Function(SavePersonalData value) savePersonalData,
    required TResult Function(SaveAddressData value) saveAddressData,
    required TResult Function(SaveJobData value) saveJobData,
    required TResult Function(SavePropertiesData value) savePropertiesData,
    required TResult Function(Reset value) reset,
  }) {
    return savePersonalData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
  }) {
    return savePersonalData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (savePersonalData != null) {
      return savePersonalData(this);
    }
    return orElse();
  }
}

abstract class SavePersonalData implements QuestionnaireEvent {
  const factory SavePersonalData(
          Map<String, dynamic> data, ClientSearchResponse questionnaire) =
      _$SavePersonalData;

  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  ClientSearchResponse get questionnaire => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavePersonalDataCopyWith<SavePersonalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveAddressDataCopyWith<$Res> {
  factory $SaveAddressDataCopyWith(
          SaveAddressData value, $Res Function(SaveAddressData) then) =
      _$SaveAddressDataCopyWithImpl<$Res>;
  $Res call(
      {Map<String, dynamic> data,
      ClientSearchResponse questionnaire,
      FactAddressSelector factSelector});

  $ClientSearchResponseCopyWith<$Res> get questionnaire;
}

/// @nodoc
class _$SaveAddressDataCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res>
    implements $SaveAddressDataCopyWith<$Res> {
  _$SaveAddressDataCopyWithImpl(
      SaveAddressData _value, $Res Function(SaveAddressData) _then)
      : super(_value, (v) => _then(v as SaveAddressData));

  @override
  SaveAddressData get _value => super._value as SaveAddressData;

  @override
  $Res call({
    Object? data = freezed,
    Object? questionnaire = freezed,
    Object? factSelector = freezed,
  }) {
    return _then(SaveAddressData(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      questionnaire == freezed
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as ClientSearchResponse,
      factSelector == freezed
          ? _value.factSelector
          : factSelector // ignore: cast_nullable_to_non_nullable
              as FactAddressSelector,
    ));
  }

  @override
  $ClientSearchResponseCopyWith<$Res> get questionnaire {
    return $ClientSearchResponseCopyWith<$Res>(_value.questionnaire, (value) {
      return _then(_value.copyWith(questionnaire: value));
    });
  }
}

/// @nodoc

class _$SaveAddressData implements SaveAddressData {
  const _$SaveAddressData(this.data, this.questionnaire, this.factSelector);

  @override
  final Map<String, dynamic> data;
  @override
  final ClientSearchResponse questionnaire;
  @override
  final FactAddressSelector factSelector;

  @override
  String toString() {
    return 'QuestionnaireEvent.saveAddressData(data: $data, questionnaire: $questionnaire, factSelector: $factSelector)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveAddressData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.questionnaire, questionnaire) ||
                const DeepCollectionEquality()
                    .equals(other.questionnaire, questionnaire)) &&
            (identical(other.factSelector, factSelector) ||
                const DeepCollectionEquality()
                    .equals(other.factSelector, factSelector)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(questionnaire) ^
      const DeepCollectionEquality().hash(factSelector);

  @JsonKey(ignore: true)
  @override
  $SaveAddressDataCopyWith<SaveAddressData> get copyWith =>
      _$SaveAddressDataCopyWithImpl<SaveAddressData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? series, String? number, String? pinFl)
        clientSearch,
    required TResult Function(String id) clientScore,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        savePersonalData,
    required TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)
        saveAddressData,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        saveJobData,
    required TResult Function(List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles, ClientSearchResponse questionnaire)
        savePropertiesData,
    required TResult Function() reset,
  }) {
    return saveAddressData(data, questionnaire, factSelector);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
  }) {
    return saveAddressData?.call(data, questionnaire, factSelector);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (saveAddressData != null) {
      return saveAddressData(data, questionnaire, factSelector);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientSearch value) clientSearch,
    required TResult Function(ClientScore value) clientScore,
    required TResult Function(SavePersonalData value) savePersonalData,
    required TResult Function(SaveAddressData value) saveAddressData,
    required TResult Function(SaveJobData value) saveJobData,
    required TResult Function(SavePropertiesData value) savePropertiesData,
    required TResult Function(Reset value) reset,
  }) {
    return saveAddressData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
  }) {
    return saveAddressData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (saveAddressData != null) {
      return saveAddressData(this);
    }
    return orElse();
  }
}

abstract class SaveAddressData implements QuestionnaireEvent {
  const factory SaveAddressData(
      Map<String, dynamic> data,
      ClientSearchResponse questionnaire,
      FactAddressSelector factSelector) = _$SaveAddressData;

  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  ClientSearchResponse get questionnaire => throw _privateConstructorUsedError;
  FactAddressSelector get factSelector => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveAddressDataCopyWith<SaveAddressData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveJobDataCopyWith<$Res> {
  factory $SaveJobDataCopyWith(
          SaveJobData value, $Res Function(SaveJobData) then) =
      _$SaveJobDataCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> data, ClientSearchResponse questionnaire});

  $ClientSearchResponseCopyWith<$Res> get questionnaire;
}

/// @nodoc
class _$SaveJobDataCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res>
    implements $SaveJobDataCopyWith<$Res> {
  _$SaveJobDataCopyWithImpl(
      SaveJobData _value, $Res Function(SaveJobData) _then)
      : super(_value, (v) => _then(v as SaveJobData));

  @override
  SaveJobData get _value => super._value as SaveJobData;

  @override
  $Res call({
    Object? data = freezed,
    Object? questionnaire = freezed,
  }) {
    return _then(SaveJobData(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      questionnaire == freezed
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as ClientSearchResponse,
    ));
  }

  @override
  $ClientSearchResponseCopyWith<$Res> get questionnaire {
    return $ClientSearchResponseCopyWith<$Res>(_value.questionnaire, (value) {
      return _then(_value.copyWith(questionnaire: value));
    });
  }
}

/// @nodoc

class _$SaveJobData implements SaveJobData {
  const _$SaveJobData(this.data, this.questionnaire);

  @override
  final Map<String, dynamic> data;
  @override
  final ClientSearchResponse questionnaire;

  @override
  String toString() {
    return 'QuestionnaireEvent.saveJobData(data: $data, questionnaire: $questionnaire)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveJobData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.questionnaire, questionnaire) ||
                const DeepCollectionEquality()
                    .equals(other.questionnaire, questionnaire)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(questionnaire);

  @JsonKey(ignore: true)
  @override
  $SaveJobDataCopyWith<SaveJobData> get copyWith =>
      _$SaveJobDataCopyWithImpl<SaveJobData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? series, String? number, String? pinFl)
        clientSearch,
    required TResult Function(String id) clientScore,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        savePersonalData,
    required TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)
        saveAddressData,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        saveJobData,
    required TResult Function(List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles, ClientSearchResponse questionnaire)
        savePropertiesData,
    required TResult Function() reset,
  }) {
    return saveJobData(data, questionnaire);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
  }) {
    return saveJobData?.call(data, questionnaire);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (saveJobData != null) {
      return saveJobData(data, questionnaire);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientSearch value) clientSearch,
    required TResult Function(ClientScore value) clientScore,
    required TResult Function(SavePersonalData value) savePersonalData,
    required TResult Function(SaveAddressData value) saveAddressData,
    required TResult Function(SaveJobData value) saveJobData,
    required TResult Function(SavePropertiesData value) savePropertiesData,
    required TResult Function(Reset value) reset,
  }) {
    return saveJobData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
  }) {
    return saveJobData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (saveJobData != null) {
      return saveJobData(this);
    }
    return orElse();
  }
}

abstract class SaveJobData implements QuestionnaireEvent {
  const factory SaveJobData(
          Map<String, dynamic> data, ClientSearchResponse questionnaire) =
      _$SaveJobData;

  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  ClientSearchResponse get questionnaire => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveJobDataCopyWith<SaveJobData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePropertiesDataCopyWith<$Res> {
  factory $SavePropertiesDataCopyWith(
          SavePropertiesData value, $Res Function(SavePropertiesData) then) =
      _$SavePropertiesDataCopyWithImpl<$Res>;
  $Res call(
      {List<FormPropertyModel> properties,
      List<FormVehicleModel> vehicles,
      ClientSearchResponse questionnaire});

  $ClientSearchResponseCopyWith<$Res> get questionnaire;
}

/// @nodoc
class _$SavePropertiesDataCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res>
    implements $SavePropertiesDataCopyWith<$Res> {
  _$SavePropertiesDataCopyWithImpl(
      SavePropertiesData _value, $Res Function(SavePropertiesData) _then)
      : super(_value, (v) => _then(v as SavePropertiesData));

  @override
  SavePropertiesData get _value => super._value as SavePropertiesData;

  @override
  $Res call({
    Object? properties = freezed,
    Object? vehicles = freezed,
    Object? questionnaire = freezed,
  }) {
    return _then(SavePropertiesData(
      properties == freezed
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<FormPropertyModel>,
      vehicles == freezed
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<FormVehicleModel>,
      questionnaire == freezed
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as ClientSearchResponse,
    ));
  }

  @override
  $ClientSearchResponseCopyWith<$Res> get questionnaire {
    return $ClientSearchResponseCopyWith<$Res>(_value.questionnaire, (value) {
      return _then(_value.copyWith(questionnaire: value));
    });
  }
}

/// @nodoc

class _$SavePropertiesData implements SavePropertiesData {
  const _$SavePropertiesData(
      this.properties, this.vehicles, this.questionnaire);

  @override
  final List<FormPropertyModel> properties;
  @override
  final List<FormVehicleModel> vehicles;
  @override
  final ClientSearchResponse questionnaire;

  @override
  String toString() {
    return 'QuestionnaireEvent.savePropertiesData(properties: $properties, vehicles: $vehicles, questionnaire: $questionnaire)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SavePropertiesData &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)) &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)) &&
            (identical(other.questionnaire, questionnaire) ||
                const DeepCollectionEquality()
                    .equals(other.questionnaire, questionnaire)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(vehicles) ^
      const DeepCollectionEquality().hash(questionnaire);

  @JsonKey(ignore: true)
  @override
  $SavePropertiesDataCopyWith<SavePropertiesData> get copyWith =>
      _$SavePropertiesDataCopyWithImpl<SavePropertiesData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? series, String? number, String? pinFl)
        clientSearch,
    required TResult Function(String id) clientScore,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        savePersonalData,
    required TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)
        saveAddressData,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        saveJobData,
    required TResult Function(List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles, ClientSearchResponse questionnaire)
        savePropertiesData,
    required TResult Function() reset,
  }) {
    return savePropertiesData(properties, vehicles, questionnaire);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
  }) {
    return savePropertiesData?.call(properties, vehicles, questionnaire);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (savePropertiesData != null) {
      return savePropertiesData(properties, vehicles, questionnaire);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientSearch value) clientSearch,
    required TResult Function(ClientScore value) clientScore,
    required TResult Function(SavePersonalData value) savePersonalData,
    required TResult Function(SaveAddressData value) saveAddressData,
    required TResult Function(SaveJobData value) saveJobData,
    required TResult Function(SavePropertiesData value) savePropertiesData,
    required TResult Function(Reset value) reset,
  }) {
    return savePropertiesData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
  }) {
    return savePropertiesData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (savePropertiesData != null) {
      return savePropertiesData(this);
    }
    return orElse();
  }
}

abstract class SavePropertiesData implements QuestionnaireEvent {
  const factory SavePropertiesData(
      List<FormPropertyModel> properties,
      List<FormVehicleModel> vehicles,
      ClientSearchResponse questionnaire) = _$SavePropertiesData;

  List<FormPropertyModel> get properties => throw _privateConstructorUsedError;
  List<FormVehicleModel> get vehicles => throw _privateConstructorUsedError;
  ClientSearchResponse get questionnaire => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavePropertiesDataCopyWith<SavePropertiesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetCopyWith<$Res> {
  factory $ResetCopyWith(Reset value, $Res Function(Reset) then) =
      _$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetCopyWithImpl<$Res> extends _$QuestionnaireEventCopyWithImpl<$Res>
    implements $ResetCopyWith<$Res> {
  _$ResetCopyWithImpl(Reset _value, $Res Function(Reset) _then)
      : super(_value, (v) => _then(v as Reset));

  @override
  Reset get _value => super._value as Reset;
}

/// @nodoc

class _$Reset implements Reset {
  const _$Reset();

  @override
  String toString() {
    return 'QuestionnaireEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? series, String? number, String? pinFl)
        clientSearch,
    required TResult Function(String id) clientScore,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        savePersonalData,
    required TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)
        saveAddressData,
    required TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)
        saveJobData,
    required TResult Function(List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles, ClientSearchResponse questionnaire)
        savePropertiesData,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? series, String? number, String? pinFl)?
        clientSearch,
    TResult Function(String id)? clientScore,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        savePersonalData,
    TResult Function(
            Map<String, dynamic> data,
            ClientSearchResponse questionnaire,
            FactAddressSelector factSelector)?
        saveAddressData,
    TResult Function(
            Map<String, dynamic> data, ClientSearchResponse questionnaire)?
        saveJobData,
    TResult Function(
            List<FormPropertyModel> properties,
            List<FormVehicleModel> vehicles,
            ClientSearchResponse questionnaire)?
        savePropertiesData,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientSearch value) clientSearch,
    required TResult Function(ClientScore value) clientScore,
    required TResult Function(SavePersonalData value) savePersonalData,
    required TResult Function(SaveAddressData value) saveAddressData,
    required TResult Function(SaveJobData value) saveJobData,
    required TResult Function(SavePropertiesData value) savePropertiesData,
    required TResult Function(Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientSearch value)? clientSearch,
    TResult Function(ClientScore value)? clientScore,
    TResult Function(SavePersonalData value)? savePersonalData,
    TResult Function(SaveAddressData value)? saveAddressData,
    TResult Function(SaveJobData value)? saveJobData,
    TResult Function(SavePropertiesData value)? savePropertiesData,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class Reset implements QuestionnaireEvent {
  const factory Reset() = _$Reset;
}
