import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_brand_view_model.freezed.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ShopBrandViewModel with _$ShopBrandViewModel {
  const factory ShopBrandViewModel(
    int? id,
    String? name,
  ) = ShopBrand;
}
