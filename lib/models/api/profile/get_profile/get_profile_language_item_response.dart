import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_profile_language_item_response.freezed.dart';
part 'get_profile_language_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GetProfileLanguageItemResponse with _$GetProfileLanguageItemResponse {
  const factory GetProfileLanguageItemResponse(
    /// Идентификатор
    @JsonKey(name: "id") String? id,

    /// Значение
    @JsonKey(name: "name") String? value,
  ) = LanguageItem;

  factory GetProfileLanguageItemResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProfileLanguageItemResponseFromJson(json);
}
