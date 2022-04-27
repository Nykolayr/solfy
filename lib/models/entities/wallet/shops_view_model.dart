import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/entities/catalog/catalog_info_view_model.dart';
import 'package:solfy_flutter/models/entities/wallet/shop_view_model.dart';

part 'shops_view_model.freezed.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ShopsViewModel with _$ShopsViewModel {
  const factory ShopsViewModel(
    /// Магазины
    @JsonKey(name: "shops") List<ShopViewModel> shops,

    /// Информация о количестве магазинов и гео
    @JsonKey(name: "info") CatalogInfoViewModel info,
  ) = Shops;
}
