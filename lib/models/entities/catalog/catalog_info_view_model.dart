import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_info_view_model.freezed.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class CatalogInfoViewModel with _$CatalogInfoViewModel {
  const factory CatalogInfoViewModel(
    /// Общее количество магазинов
    @JsonKey(name: "total") String? total,

    /// Название региона
    @JsonKey(name: "title") String? title,

    /// Название города (подрегиона)
    @JsonKey(name: "subtitle") String? subtitle,
  ) = Info;
}
