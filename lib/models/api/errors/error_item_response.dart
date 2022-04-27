import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_item_response.freezed.dart';
part 'error_item_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ErrorItemResponse with _$ErrorItemResponse {
  const factory ErrorItemResponse(
    /// Код
    @JsonKey(name: "code") String? code,

    /// Тайтл
    @JsonKey(name: "title") String? title,

    /// Сообщение
    @JsonKey(name: "message") String? message,

    /// Куда перейти
    @JsonKey(name: "target") String? target,

    /// Статус ошибки
    @JsonKey(name: "status") int? status,

    /// Тип ошибки
    @JsonKey(name: "type") String? type,
  ) = Error;

  factory ErrorItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorItemResponseFromJson(json);
}
