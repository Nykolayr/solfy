import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wallet_get_status_contents_item_response.freezed.dart';
part 'wallet_get_status_contents_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class WalletGetStatusContentsItemResponse with _$WalletGetStatusContentsItemResponse {
  const factory WalletGetStatusContentsItemResponse(
    /// Заголовок
    @JsonKey(name: "title") String? title,

    /// Описание
    @JsonKey(name: "description") String? description,
  ) = StatusContentsItem;

  factory WalletGetStatusContentsItemResponse.fromJson(Map<String, dynamic> json) =>
      _$WalletGetStatusContentsItemResponseFromJson(json);
}
