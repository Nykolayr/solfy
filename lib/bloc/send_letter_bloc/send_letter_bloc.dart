import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/profile/report/report_request.dart';
import 'package:solfy_flutter/models/image_file_model.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';

part 'send_letter_state.dart';
part 'send_letter_event.dart';
part 'send_letter_bloc.freezed.dart';

/// Блок с логикой отправки письма (экран "Обратная связь")
class SendLetterBloc extends Bloc<SendLetterEvent, SendLetterState> {
  final ProfileRepository _profileRepository;
  SendLetterBloc(this._profileRepository) : super(const Initial()) {
    on<SendLetter>((event, emit) async {
      await sendLetter(emit, event);
    });
  }

  /// Получение профиля
  Future<void> sendLetter(Emitter<SendLetterState> emit, SendLetter event) async {
    emit(const Loading());
    final List<File> images = [];
    for (var i = 0; i < event.images.length; i++) {
      final bytes = await event.images[i].image.readAsBytes();
      final path = await getApplicationDocumentsDirectory();
      images.add(await File(path.path + "/${event.images[i].image.name}").writeAsBytes(bytes));
    }
    final response =
        await _profileRepository.sendLetter(ReportRequest(event.email, event.message), images);
    if (response.isRight) {
      if (response.right.valid!) {
        emit(const SentSuccess());
      } else {
        emit(SentError());
      }
    } else {
      emit(SentError(errors: response.left));
    }
  }
}
