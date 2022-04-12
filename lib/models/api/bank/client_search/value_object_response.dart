import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'value_object_response.freezed.dart';
part 'value_object_response.g.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class ValueObjectResponse with _$ValueObjectResponse {
  const factory ValueObjectResponse(
    /// Идентификатор объекта
    @JsonKey(name: "id") int? id,

    /// Значение объекта
    @JsonKey(name: "value") String? value,
  ) = ValueObject;

  factory ValueObjectResponse.fromJson(Map<String, dynamic> json) =>
      _$ValueObjectResponseFromJson(json);
}
