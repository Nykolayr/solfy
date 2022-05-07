import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_profile_status_contents_item_response.freezed.dart';
part 'get_profile_status_contents_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class GetProfileStatusContentsItemResponse
    with _$GetProfileStatusContentsItemResponse {
  const factory GetProfileStatusContentsItemResponse(
    /// Заголовок
    @JsonKey(name: "title") String? title,

    /// Описание
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "addition") String? addition,
    @JsonKey(name: "insurance_premium") String? insurance_premium,
  ) = StatusContentsItem;

  factory GetProfileStatusContentsItemResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetProfileStatusContentsItemResponseFromJson(json);
}
