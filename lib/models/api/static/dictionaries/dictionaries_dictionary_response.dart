import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfy_flutter/models/api/static/dictionaries/dictionaries_dictionary_item_response.dart';

part 'dictionaries_dictionary_response.freezed.dart';
part 'dictionaries_dictionary_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class DictionariesDictionaryResponse with _$DictionariesDictionaryResponse {
  const factory DictionariesDictionaryResponse(
    /// Поиск
    @JsonKey(name: "search") bool? search,

    /// Записи словаря
    @JsonKey(name: "items") List<DictionariesDictionaryItemResponse>? dictionaryItems,
  ) = DictionaryResponse;

  factory DictionariesDictionaryResponse.fromJson(Map<String, dynamic> json) =>
      _$DictionariesDictionaryResponseFromJson(json);
}
