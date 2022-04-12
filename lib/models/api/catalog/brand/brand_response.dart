import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/catalog/brand/brand_brand_item_response.dart';
import 'package:solfy_flutter/models/entities/wallet/condition_item_view_model.dart';

part 'brand_response.freezed.dart';
part 'brand_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class BrandResponse with _$BrandResponse {
  const factory BrandResponse(
    /// Бренд
    @JsonKey(name: "brand") BrandBrandItemResponse? brand,
  ) = BrandResp;

  factory BrandResponse.fromJson(Map<String, dynamic> json) => _$BrandResponseFromJson(json);
}

extension BrandMapper on BrandResponse {
  List<ConditionItemViewModel> getConditions() {
    final conditions =
        this.brand?.conditions?.map((e) => ConditionItemViewModel(e.title, e.term)).toList();
    return conditions ?? [];
  }
}
