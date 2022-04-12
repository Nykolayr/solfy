import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/profile/email_update/email_update_request.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';

part 'personal_information_state.dart';
part 'personal_information_event.dart';
part 'personal_information_bloc.freezed.dart';

/// Блок с логикой на экране "Персональная информация"
class PersonalInformationBloc extends Bloc<PersonalInformationEvent, PersonalInformationState> {
  final ProfileRepository _profileRepository;

  PersonalInformationBloc(this._profileRepository) : super(const Initial()) {
    on<ChangeEmail>((event, emit) async {
      await changeEmail(emit, event.email);
    });
  }

  /// Смена Email'а
  Future<void> changeEmail(Emitter<PersonalInformationState> emit, String email) async {
    emit(const Loading());
    final response = await _profileRepository.updateEmail(EmailUpdateRequest(email));
    if (response.isRight) {
      if (response.right.valid ?? false) {
        _profileRepository.profile = _profileRepository.profile?.copyWith(email: email);
        emit(const EmailChangedSuccess());
      } else {
        emit(const EmailChangedError());
      }
    } else {
      emit(EmailChangedError(errors: response.left));
    }
  }
}
