import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/shop/shop_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/models/entities/wallet/shop_view_model.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';

part 'shop_state.dart';
part 'shop_event.dart';
part 'shop_bloc.freezed.dart';

/// Блок с логикой получения магазина
class ShopBloc extends Bloc<ShopEvent, ShopState> {
  final CatalogRepository _catalogRepository;

  ShopBloc(this._catalogRepository) : super(const Initial()) {
    on<GetShop>((event, emit) async {
      await getShop(emit, event.id, event.openModalWithMap);
    });
  }

  /// Получение магазина по [id]
  Future<void> getShop(Emitter<ShopState> emit, String id, bool openModalWithMap) async {
    emit(const ShopLoading());
    final response = await _catalogRepository.getShop(id);
    emit(const ShopEndLoading());
    if (response.isRight) {
      emit(GetShopSuccess(await response.right.getModel(), openModalWithMap));
    } else {
      emit(GetShopError(response.left));
    }
  }
}
