import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/static/dictionaries/dictionaries_filial_item_response.dart';

part 'dictionaries_filial_response.freezed.dart';
part 'dictionaries_filial_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class DictionariesFilialResponse with _$DictionariesFilialResponse {
  const factory DictionariesFilialResponse(
    /// Поиск
    @JsonKey(name: "search") bool? search,

    /// Филиалы
    @JsonKey(name: "items") List<DictionariesFilialItemResponse>? filials,
  ) = FilialResponse;

  factory DictionariesFilialResponse.fromJson(Map<String, dynamic> json) =>
      _$DictionariesFilialResponseFromJson(json);
}
