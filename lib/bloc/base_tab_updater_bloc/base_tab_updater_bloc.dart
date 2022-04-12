import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_tab_updater_state.dart';
part 'base_tab_updater_event.dart';
part 'base_tab_updater_bloc.freezed.dart';

/// Блок с логикой уведомления об обновлении блока каждой табы
class BaseTabUpdaterBloc extends Bloc<BaseTabUpdaterEvent, BaseTabUpdaterState> {
  BaseTabUpdaterBloc() : super(const Initial()) {
    on<UpdateCatalog>((event, emit) {
      emit(const CatalogUpdate());
    });

    on<UpdateFeed>((event, emit) {
      emit(const FeedUpdate());
    });

    on<UpdateWallet>((event, emit) {
      emit(const WalletUpdate());
    });

    on<UpdateProfile>((event, emit) {
      emit(const ProfileUpdate());
    });
  }
}
