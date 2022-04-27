import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation_brand_item_response.freezed.dart';
part 'operation_brand_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class OperationBrandItemResponse with _$OperationBrandItemResponse {
  const factory OperationBrandItemResponse(
    /// Идентификатор бренда
    @JsonKey(name: "id") int? id,

    /// Название бренда
    @JsonKey(name: "name") String? name,

    /// Цвет бренда
    @JsonKey(name: "color") String? color,
  ) = BrandItem;

  factory OperationBrandItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OperationBrandItemResponseFromJson(json);
}
