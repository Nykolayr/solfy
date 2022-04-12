import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:solfy_flutter/models/api/static/dictionaries/dictionaries_filial_geo_item_response.dart';

part 'dictionaries_filial_item_response.freezed.dart';
part 'dictionaries_filial_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class DictionariesFilialItemResponse with _$DictionariesFilialItemResponse {
  const factory DictionariesFilialItemResponse(
    /// Идентификатор филиала
    @JsonKey(name: "id") int? id,

    /// Название филиала
    @JsonKey(name: "value") String? value,

    /// Адрес филиала
    @JsonKey(name: "hint") String? hint,

    /// Гео филиала
    @JsonKey(name: "geo") DictionariesFilialGeoItemResponse? geo,
  ) = Filial;

  factory DictionariesFilialItemResponse.fromJson(Map<String, dynamic> json) =>
      _$DictionariesFilialItemResponseFromJson(json);
}
