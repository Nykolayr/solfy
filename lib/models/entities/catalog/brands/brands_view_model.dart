import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/entities/catalog/brands/brand_item_view_model.dart';
import 'package:solfy_flutter/models/entities/catalog/catalog_info_view_model.dart';
import 'package:solfy_flutter/models/entities/feeds/feed_item_view_model.dart';

part 'brands_view_model.freezed.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class BrandsViewModel with _$BrandsViewModel {
  const factory BrandsViewModel(
    /// Бренды
    @JsonKey(name: "brands") List<BrandItemViewModel> brands,

    /// Новости
    @JsonKey(name: "feeds") List<FeedItemViewModel> feeds,

    /// Информация о количестве магазинов и гео
    @JsonKey(name: "info") CatalogInfoViewModel info,
  ) = Brands;
}
