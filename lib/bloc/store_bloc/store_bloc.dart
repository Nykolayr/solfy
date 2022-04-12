import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/brand/brand_response.dart';
import 'package:solfy_flutter/models/api/errors/errors_response.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';

part 'store_state.dart';
part 'store_event.dart';
part 'store_bloc.freezed.dart';

/// Блок с логикой получения бренда
class StoreBloc extends Bloc<StoreEvent, StoreState> {
  final CatalogRepository _catalogRepository;
  bool isCatalogBloc;

  StoreBloc(this._catalogRepository, {this.isCatalogBloc = true}) : super(const Initial()) {
    on<GetBrand>((event, emit) async {
      await getBrand(emit, event.id);
    });
  }

  /// Получаем бренд
  Future<void> getBrand(Emitter<StoreState> emit, int id) async {
    emit(const BrandLoading());
    if (!isCatalogBloc) {
      _catalogRepository.shopsFilter.categoryId = null;
    }
    _catalogRepository.shopsFilter.brandId = id;
    final response = await _catalogRepository.getBrand(id.toString());
    emit(const BrandEndLoading());
    if (response.isRight) {
      emit(GetBrandSuccess(response.right));
    } else {
      if (response.isLeft) {
        emit(GetBrandError(response.left));
      }
    }
  }
}
