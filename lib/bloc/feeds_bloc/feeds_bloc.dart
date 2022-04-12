import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/bloc/base_tab_updater_bloc/base_tab_updater_bloc.dart';
import 'package:solfy_flutter/bloc/language_changer_bloc/language_changer_bloc.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/api/profile/feeds/feeds_feed_item_response.dart';
import 'package:solfy_flutter/models/api/wallet/wallet_get/wallet_get_response.dart';
import 'package:solfy_flutter/models/entities/wallet/wallet_view_model.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';
import 'package:solfy_flutter/repository/wallet_repository.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';

part 'feeds_state.dart';
part 'feeds_event.dart';
part 'feeds_bloc.freezed.dart';

/// Блок с логикой получения данных для страницы с лентой (новости + кошелек)
class FeedsBloc extends Bloc<FeedsEvent, FeedsState> {
  final ProfileRepository _profileRepository;
  final WalletRepository _walletRepository;

  // Блок с отправкой анкеты
  final QuestionnaireBloc _questionnaireBloc;
  late final StreamSubscription _questionnaireBlocSubscription;

  // Блок со сменой языка
  final LanguageChangerBloc _languageBloc;
  late final StreamSubscription _languageBlocSubscription;

  // Блок с обновлением при переключении вкладки
  final BaseTabUpdaterBloc _tabUpdaterBloc;
  late final StreamSubscription _tabUpdaterBlocSubscription;

  FeedsBloc(
    this._profileRepository,
    this._walletRepository,
    this._questionnaireBloc,
    this._languageBloc,
    this._tabUpdaterBloc,
  ) : super(const Initial()) {
    // Слушаем успешную отправку анкеты и обновляем страницу
    _questionnaireBlocSubscription = _questionnaireBloc.stream.listen((state) {
      if (state is QuestionnaireSentSuccess) {
        this.add(const GetFeeds());
      }
    });

    // Слушаем успешную смену языка и обновляем страницу
    _languageBlocSubscription = _languageBloc.stream.listen((state) {
      if (state is LanguageChanged) {
        this.add(const GetFeeds());
      }
    });

    // Слушаем переключение вкладки и обновляем страницу
    _tabUpdaterBlocSubscription = _tabUpdaterBloc.stream.listen((state) {
      if (state is FeedUpdate) {
        this.add(const GetFeeds());
      }
    });

    on<GetFeeds>((event, emit) async {
      await getFeeds(emit);
    });
  }

  @override
  Future<void> close() {
    _questionnaireBlocSubscription.cancel();
    _languageBlocSubscription.cancel();
    _tabUpdaterBlocSubscription.cancel();
    return super.close();
  }

  /// Получение новостей и кошелька
  Future<void> getFeeds(Emitter<FeedsState> emit) async {
    emit(const Loading());
    await updateUserSettings();
    final response = await _profileRepository.getFeeds();
    final wallet = await _walletRepository.getWallet();
    if (response.isRight && wallet.isRight) {
      emit(GetFeedsSuccess(
        feeds: response.right.feeds ?? [],
        wallet: wallet.right.getModel(),
      ));
    } else {
      if (response.isLeft) {
        emit(GetFeedsError(response.left));
        return;
      }
      if (wallet.isLeft) {
        emit(GetFeedsError(wallet.left));
        return;
      }
    }
  }

  /// Обновление пользовательских настроек
  Future<void> updateUserSettings() async {
    final settings = await UserSettingsDbService.getUserSettings();
    _profileRepository.isMyLocationEnabled = settings?.isMyLocation ?? false;
    _profileRepository.cityId = settings?.geoCityId;
  }
}
