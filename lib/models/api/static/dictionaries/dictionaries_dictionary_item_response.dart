import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dictionaries_dictionary_item_response.freezed.dart';
part 'dictionaries_dictionary_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class DictionariesDictionaryItemResponse with _$DictionariesDictionaryItemResponse {
  const factory DictionariesDictionaryItemResponse({
    /// Идентификатор записи
    @JsonKey(name: "id") int? id,

    /// Значение записи
    @JsonKey(name: "value") String? value,
  }) = DictionaryItem;

  factory DictionariesDictionaryItemResponse.fromJson(Map<String, dynamic> json) =>
      _$DictionariesDictionaryItemResponseFromJson(json);
}
