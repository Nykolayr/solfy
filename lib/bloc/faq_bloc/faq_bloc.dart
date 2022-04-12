import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/profile/faq/faq_response.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';

part 'faq_state.dart';
part 'faq_event.dart';
part 'faq_bloc.freezed.dart';

/// Блок с логикой получения вопросов и ответов со страницы "Помощь"
class FaqBloc extends Bloc<FaqEvent, FaqState> {
  final ProfileRepository _profileRepository;
  FaqBloc(this._profileRepository) : super(Initial()) {
    on<GetFaq>((event, emit) async {
      await getFaq(emit);
    });
  }

  /// Получение Faq
  Future<void> getFaq(Emitter<FaqState> emit) async {
    emit(const FaqLoading());
    final response = await _profileRepository.getFaq();
    if (response.isLeft) {
      emit(FaqError(response.left));
    } else {
      emit(FaqSuccess(response.right));
    }
  }
}
