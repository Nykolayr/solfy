import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/profile/feed/feed_response.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';

part 'feed_state.dart';
part 'feed_event.dart';
part 'feed_bloc.freezed.dart';

/// Блок с логикой получения новости
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final ProfileRepository _profileRepository;

  FeedBloc(this._profileRepository) : super(const Initial()) {
    on<GetFeed>((event, emit) async {
      await getFeed(emit, event.id);
    });
  }

  /// Получение новости по [id]
  Future<void> getFeed(Emitter<FeedState> emit, String id) async {
    emit(const FeedLoading());
    final response = await _profileRepository.getFeed(id);
    emit(const FeedEndLoading());
    if (response.isRight) {
      emit(GetFeedSuccess(response.right));
    } else {
      emit(GetFeedError(response.left));
    }
  }
}
