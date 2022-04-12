import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/entities/wallet/condition_item_view_model.dart';
import 'package:solfy_flutter/models/entities/wallet/geo_view_model.dart';
import 'package:solfy_flutter/models/entities/wallet/shop_brand_view_model.dart';
import 'package:solfy_flutter/models/entities/wallet/worktime_item_view_model.dart';

part 'shop_view_model.freezed.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ShopViewModel with _$ShopViewModel {
  const factory ShopViewModel({
    int? id,
    GeoViewModel? geo,
    ShopBrandViewModel? brand,
    String? shortDescription,
    String? logo,
    String? address,
    List<WorktimeItemViewModel>? workTime,
    String? currentWorkTime,
    String? site,
    String? type,
    List<String>? phones,
    String? phone,
    String? ranges,
    int? rangesMinimal,
    int? rangesMaximal,
    bool? isPromotional,
    int? conditionsCount,
    List<ConditionItemViewModel>? conditions,
    String? distance,
  }) = Shop;
}
