part of 'questionnaire_bloc.dart';

/// Стейты блока с логикой анкеты
@freezed
class QuestionnaireState with _$QuestionnaireState {
  /// Начальный стейт
  const factory QuestionnaireState.initial() = Initial;

  /// Стейт при успешном получении анкеты
  const factory QuestionnaireState.questionnaireFoundSuccess(
      ClientSearchResponse staticQuestionnaire,
      ClientSearchResponse questionnaire,
      int currentStage) = QuestionnaireFoundSuccess;

  /// Стейт при неуспешном получении анкеты
  const factory QuestionnaireState.questionnaireFoundError(ErrorsResponse errors) =
      QuestionnaireFoundError;

  /// Стейт при успешной отправке анкеты
  const factory QuestionnaireState.questionnaireSentSuccess() = QuestionnaireSentSuccess;

  /// Стейт при неуспешной отправке анкеты
  const factory QuestionnaireState.questionnaireSentError(ErrorsResponse errors) =
      QuestionnaireSentError;
}
